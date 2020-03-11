#ifndef PS_SAMPLE_H
#define PS_SAMPLE_H

namespace ps
{

    class Sample
    {
        public:

            uint32_t t;
            float volt;
            float curr;
            uint8_t chan;
    };

    class TinySample
    {
        public:

            uint16_t t;
            uint16_t volt;
            uint16_t curr;
    };

}

#endif
