#ifndef dspPipeline_hpp
#define dspPipeline_hpp

class dspPipeline
{
public:
    dspPipeline(void);
    ~dspPipeline(void);

    void dspPipelineStop();
    void dspPipelineStart();
    void dspPipelinePause();
    void dspPipelineUnPause();

private:
};


#endif
