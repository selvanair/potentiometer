#ifndef PS_SAMPLE_H
#define PS_SAMPLE_H

namespace ps
{

    class Sample 
    {
        public:

            uint64_t t;
            float volt;
            float curr;
            float currF;
            float currR;
            uint8_t chan;
    };

}

#endif
