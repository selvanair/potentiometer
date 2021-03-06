#include "ps_squarewave_test.h"
#include "ps_time_utils.h"
#include "ps_constants.h"
#include <math.h>

namespace ps 
{
    // Public methods
    // --------------------------------------------------------------------------------------------
    SquareWaveTest::SquareWaveTest()
    { 
        setName("squareWave");
        setMuxCompatible(false);
        setSampleMethod(SampleCustom);  // use window < 0 to force generic sampling
        updateDoneTime();
        updateMaxMinValues();
        updateStepSign();
    };

    void SquareWaveTest::setStartValue(float value)
    {
        startValue_ = value;
        updateDoneTime();
        updateMaxMinValues();
        updateStepSign();
    }


    float SquareWaveTest::getStartValue()
    {
        return startValue_;
    }


    void SquareWaveTest::setFinalValue(float value)
    {
        finalValue_ = value;
        updateDoneTime();
        updateMaxMinValues();
        updateStepSign();
    }


    float SquareWaveTest::getFinalValue()
    {
        return finalValue_;
    }


    void SquareWaveTest::setStepValue(float value)
    {
        stepValue_ = fabs(value);
        updateDoneTime();
    }


    float SquareWaveTest::getStepValue()
    {
        return stepValue_;
    }


    void SquareWaveTest::setAmplitude(float value)
    {
        amplitude_ = fabs(value);
    }


    float SquareWaveTest::getAmplitude()
    {
        return amplitude_;
    }


    void SquareWaveTest::setWindow(float value)
    {
        window_ = value;

        if (value < 0.0)
        {
           setSampleMethod(SampleGeneric);
           return;
        }
        else
        {
           setSampleMethod(SampleCustom);
        }
        window_ = max(0.0, window_);
        window_ = min(1.0, window_);
        updateWindowLenUs();
    }


    float SquareWaveTest::getWindow()
    {
        return window_;
    }


    float SquareWaveTest::getMaxValue() const 
    {
        float maxValue = max(startValue_, finalValue_) + amplitude_;
        return max(maxValue, quietValue_);
    }


    float SquareWaveTest::getMinValue() const 
    {
        float minValue = min(startValue_, finalValue_) - amplitude_;
        return min(minValue, quietValue_);
    }

    // Modulation period (inverse frequency) in usec
    uint64_t SquareWaveTest::getModPeriod() const
    {
        return modPeriod_;
    }

    // Modulation period (inverse frequency) in usec
    // Set using json key modfreq with freqency in Hz
    void SquareWaveTest::setModPeriod(uint64_t modPeriod)
    {
        if (modPeriod < 0) modPeriod = 1;
        modPeriod_ = modPeriod;
        halfModPeriod_ = modPeriod >> 1;
        updateDoneTime();
        updateWindowLenUs();
    }

    void SquareWaveTest::setSamplePeriod(uint64_t samplePeriod)
    {
        BaseTest::setSamplePeriod(samplePeriod);
    }

    bool SquareWaveTest::isDone(uint64_t t) const 
    {
        if (t >= doneTime_)
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    uint64_t SquareWaveTest::getDoneTime() const
    {
        return doneTime_;

    }

    void SquareWaveTest::reset()
    {
        numForward_ = 0;
        numReverse_ = 0;
        currForward_ = 0.0;
        currReverse_ = 0.0;
        testCnt_ = 0;
        isFirst_ = true;
    }


    float SquareWaveTest::getValue(uint64_t t) const 
    {
        float value = 0.0;
        if ( t < quietTime_)
        {
            value = quietValue_;
        }
        else
        {
            uint64_t stepModPos = (t - quietTime_)%modPeriod_;
            float stairValue = getStairValue(t);
            if (stepModPos < halfModPeriod_)
            {
                value = stairValue + amplitude_;
            }
            else
            {
                value = stairValue - amplitude_;
            }
        }
        return value;
    }


    float SquareWaveTest::getStairValue(uint64_t t) const
    {
        float stairValue = 0.0;
        if (t < quietTime_)
        {
            stairValue = quietValue_;
        }
        else
        {
            uint64_t tTest = t - quietTime_;
            uint64_t stepCount = tTest/modPeriod_;
            stairValue = startValue_ + stepCount*stepSign_*stepValue_;
            stairValue = max(stairValue, minValue_);
            stairValue = min(stairValue, maxValue_);
        }
        return stairValue;
    }


    bool SquareWaveTest::updateSample(Sample sampleRaw, Sample &sampleTest) 
    {
        bool newSample = false;

        uint64_t t = sampleRaw.t;
        if (sampleRaw.t < quietTime_)
        {
            if ((testCnt_ > 0) && (t%modPeriod_==0))
            {
                sampleTest.t = sampleRaw.t;
                sampleTest.volt = 0.0;
                sampleTest.curr =  0.0;
                newSample = true;
            }
            testCnt_++;
        }
        else 
        {
            if (isFirst_)
            {
                isFirst_ = false;
                testCnt_ = 0;
            }

            uint64_t tTest = (sampleRaw.t - quietTime_);
            uint64_t stepModPos = tTest%modPeriod_;

            if (stepModPos < halfModPeriod_)
            {
                // forward step
                if ((halfModPeriod_ - stepModPos - 1) < windowLenUs_)
                {
                    numForward_++;
                    currForward_ += sampleRaw.curr;
                }
            }
            else
            {
                // reverse step
                if ((modPeriod_ - stepModPos - 1) < windowLenUs_)
                {
                    numReverse_++;
                    currReverse_ += sampleRaw.curr;
                }
            }

            if ((testCnt_ > 0) && (t%modPeriod_==0))
            {
                sampleTest.t = sampleRaw.t;
                sampleTest.volt = getStairValue(sampleRaw.t);
                sampleTest.curr = currForward_/numForward_ - currReverse_/numReverse_;
                numForward_ = 0;
                numReverse_ = 0;
                currForward_ = 0.0;
                currReverse_ = 0.0;
                newSample = true;
            }
            testCnt_++;
        }

        return newSample; 
    }


    void SquareWaveTest::getParam(JsonObject &jsonDat)
    {
        BaseTest::getParam(jsonDat);

        ReturnStatus status;
        JsonObject &jsonDatPrm = getParamJsonObject(jsonDat,status);

        if (status.success)
        {
            jsonDatPrm.set(StartValueKey, startValue_);
            jsonDatPrm.set(FinalValueKey, finalValue_);
            jsonDatPrm.set(StepValueKey, stepValue_);
            jsonDatPrm.set(AmplitudeKey, amplitude_);
            jsonDatPrm.set(WindowKey, window_);
            jsonDatPrm.set(ModFreqKey, 1.0e6/modPeriod_);
        }
    }


    ReturnStatus SquareWaveTest::setParam(JsonObject &jsonMsg, JsonObject &jsonDat)
    {
        ReturnStatus status;
        status = BaseTest::setParam(jsonMsg,jsonDat);

        // Extract parameter JsonObjects
        JsonObject &jsonMsgPrm = getParamJsonObject(jsonMsg,status);
        if (!status.success)
        {
            return status;
        }

        JsonObject &jsonDatPrm = getParamJsonObject(jsonDat,status);
        if (!status.success)
        {
            return status;
        }

        // Set parameters
        setStartValueFromJson(jsonMsgPrm,jsonDatPrm,status);
        setFinalValueFromJson(jsonMsgPrm,jsonDatPrm,status);
        setStepValueFromJson(jsonMsgPrm,jsonDatPrm,status);
        setAmplitudeFromJson(jsonMsgPrm,jsonDatPrm,status);
        setWindowFromJson(jsonMsgPrm,jsonDatPrm,status);
        setModPeriodFromJson(jsonMsgPrm,jsonDatPrm,status);
        return status;
    }

    // Protected methods
    // --------------------------------------------------------------------------------------------
   
    void SquareWaveTest::updateDoneTime()
    {
        if (stepValue_ > 0.0) 
        {
            uint64_t numSteps_ = uint64_t(ceil(fabs(finalValue_ - startValue_)/stepValue_))+1;
            uint64_t testDuration = numSteps_*uint64_t(modPeriod_);
            doneTime_ = quietTime_ + testDuration;
        }
        else
        {
            doneTime_ = quietTime_;
        }
    }


    void SquareWaveTest::updateMaxMinValues()
    {
        maxValue_ = max(startValue_,finalValue_);
        minValue_ = min(startValue_,finalValue_);
    }


    void SquareWaveTest::updateWindowLenUs()
    {
        windowLenUs_ = uint64_t((halfModPeriod_- 1)*window_);
        windowLenUs_ = min(halfModPeriod_- 1, windowLenUs_);
        windowLenUs_ = max(uint64_t(1), windowLenUs_);
    }


    void SquareWaveTest::updateStepSign()
    {
        stepSign_ = (startValue_ <= finalValue_) ? 1.0 : -1.0;
    }


    void SquareWaveTest::setStartValueFromJson(JsonObject &jsonMsgPrm, JsonObject &jsonDatPrm, ReturnStatus &status)
    {
        if (jsonMsgPrm.containsKey(StartValueKey))
        {
            if (jsonMsgPrm[StartValueKey].is<float>())
            {
                setStartValue(jsonMsgPrm.get<float>(StartValueKey));
                jsonDatPrm.set(StartValueKey,getStartValue());
            }
            else if (jsonMsgPrm[StartValueKey].is<long>())
            {
                setStartValue(float(jsonMsgPrm.get<long>(StartValueKey)));
                jsonDatPrm.set(StartValueKey,getStartValue());
            }
            else
            {
                status.success = false;
                String errorMsg = StartValueKey + String(" not a float");
                status.appendToMessage(errorMsg);
            }
        }
    }


    void SquareWaveTest::setFinalValueFromJson(JsonObject &jsonMsgPrm, JsonObject &jsonDatPrm, ReturnStatus &status)
    {
        if (jsonMsgPrm.containsKey(FinalValueKey))
        {
            if (jsonMsgPrm[FinalValueKey].is<float>())
            {
                setFinalValue(jsonMsgPrm.get<float>(FinalValueKey));
                jsonDatPrm.set(FinalValueKey,getFinalValue());
            }
            else if (jsonMsgPrm[FinalValueKey].is<long>())
            {
                setFinalValue(float(jsonMsgPrm.get<long>(FinalValueKey)));
                jsonDatPrm.set(FinalValueKey,getFinalValue());
            }
            else
            {
                status.success = false;
                String errorMsg = FinalValueKey + String(" not a float");
                status.appendToMessage(errorMsg);
            }
        }
    }

    void SquareWaveTest::setStepValueFromJson(JsonObject &jsonMsgPrm, JsonObject &jsonDatPrm, ReturnStatus &status)
    {
        if (jsonMsgPrm.containsKey(StepValueKey))
        {
            if (jsonMsgPrm[StepValueKey].is<float>())
            {
                setStepValue(jsonMsgPrm.get<float>(StepValueKey));
                jsonDatPrm.set(StepValueKey,getStepValue());
            }
            else if (jsonMsgPrm[StepValueKey].is<long>())
            {
                setStepValue(float(jsonMsgPrm.get<long>(StepValueKey)));
                jsonDatPrm.set(StepValueKey,getStepValue());
            }
            else
            {
                status.success = false;
                String errorMsg = StepValueKey + String(" not a float");
                status.appendToMessage(errorMsg);
            }
        }
    }


    void SquareWaveTest::setAmplitudeFromJson(JsonObject &jsonMsgPrm, JsonObject &jsonDatPrm, ReturnStatus &status)
    {
        if (jsonMsgPrm.containsKey(AmplitudeKey))
        {
            if (jsonMsgPrm[AmplitudeKey].is<float>())
            {
                setAmplitude(jsonMsgPrm.get<float>(AmplitudeKey));
                jsonDatPrm.set(AmplitudeKey,getAmplitude());
            }
            else if (jsonMsgPrm[AmplitudeKey].is<long>()) 
            {
                setAmplitude(float(jsonMsgPrm.get<long>(AmplitudeKey)));
                jsonDatPrm.set(AmplitudeKey,getAmplitude());
            }
            else
            {
                status.success = false;
                String errorMsg = AmplitudeKey + String(" not a float");
                status.appendToMessage(errorMsg);
            }
        }
    }

    void SquareWaveTest::setWindowFromJson(JsonObject &jsonMsgPrm, JsonObject &jsonDatPrm, ReturnStatus &status)
    {
        if (jsonMsgPrm.containsKey(WindowKey))
        {
            if (jsonMsgPrm[WindowKey].is<float>())
            {
                setWindow(jsonMsgPrm.get<float>(WindowKey));
                jsonDatPrm.set(WindowKey,getWindow());
            }
            else if (jsonMsgPrm[WindowKey].is<long>()) 
            {
                setWindow(float(jsonMsgPrm.get<long>(WindowKey)));
                jsonDatPrm.set(WindowKey,getWindow());
            }
            else
            {
                status.success = false;
                String errorMsg = WindowKey + String(" not a float");
                status.appendToMessage(errorMsg);
            }
        }
    }

    void SquareWaveTest::setModPeriodFromJson(JsonObject &jsonMsgPrm, JsonObject &jsonDatPrm, ReturnStatus &status)
    {
        if (jsonMsgPrm.containsKey(ModFreqKey))
        {
            float f = 1.0;;
            if (jsonMsgPrm[ModFreqKey].is<float>())
            {
                f = jsonMsgPrm.get<float>(ModFreqKey);
            }
            else if (jsonMsgPrm[ModFreqKey].is<float>())
            {
                f = jsonMsgPrm.get<float>(ModFreqKey);
            }
            else
            {
                status.success = false;
                String errorMsg = ModFreqKey + String(" not a long or float");
                status.appendToMessage(errorMsg);
            }
            if (f <= 0.0)
            {
                status.success = false;
                String errorMsg = ModFreqKey + String(" too small: use a value > 1/MinimumSamplingPeriod");
                status.appendToMessage(errorMsg);
            }
            else
            {
               setModPeriod(int(1.0e6/f));
               jsonDatPrm.set(ModFreqKey,1.0e6/getModPeriod());
            }
        }
    }
 
} // namespace ps
