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
            uint32_t chan; // make it a clean struct of 16 bytes
    };

    class TinySample
    {
        public:

            uint16_t volt;
            uint16_t curr; // struct of 4 bytes -- fits 4 in one struct Sample
    };

}

#endif
