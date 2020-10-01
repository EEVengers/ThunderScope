#include <benchmark/benchmark.h>
#include <random>

static void generate_arg_pairs(benchmark::internal::Benchmark *b) {
    for (int i = 1 << 2; i <= 1 << 19; i <<= 1) {
        for (int j : {128}) {
            b = b->ArgPair(i, j);
        }
    }
}

class FixtureBools : public benchmark::Fixture {
public:
    int level;
    int bufferSize;
    unsigned char* bufferData;
    bool* trigger;
    int triggerCount = 0;

    void SetUp(const ::benchmark::State& state) {
        bufferSize = state.range(0);
        level = state.range(1);

        bufferData = new unsigned char[bufferSize];

        trigger = new bool[bufferSize];

        std::mt19937 rng;
        rng.seed(std::random_device()());
        std::uniform_int_distribution<int> dist(0, 255);
        for (int i = 0; i < bufferSize; ++i) {
            bufferData[i] = dist(rng);
        }
    }
    
    void TearDown(const ::benchmark::State& state) {
        for (int i = 0; i < bufferSize - 1; ++i) {
            benchmark::DoNotOptimize(triggerCount += trigger[i]);
        }

        free(trigger);
        free(bufferData);
    }
};

BENCHMARK_DEFINE_F(FixtureBools, bench_trigger_mult_bools)(benchmark::State &state) {
    //while (state.KeepRunning()){
    for (auto _ : state) {
        for (int i = 0; i < bufferSize - 1; ++i) {
            trigger[i] = (bufferData[i] < level) * (bufferData[i+1] >= level);
        }
    }
}
BENCHMARK_REGISTER_F(FixtureBools, bench_trigger_mult_bools)->Apply(generate_arg_pairs);

BENCHMARK_MAIN();
