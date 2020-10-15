#ifndef NapiHook
 
#include <napi.h>
#include <iostream>

#include "EVLibrary.hpp"


namespace scope_link
{
    //ACTUAL FUCKING FUNCTION
    int GetData();
    //WRAPER
    Napi::Number GetDataWrapper(const Napi::CallbackInfo& info);

    //Init Code
    int InitScopeLink();
    //WRAPER
    Napi::Number InitScopeLinkWrapper(const Napi::CallbackInfo& info);
    
    //Test Throughput Code
    //void TestThroughPut();
    //WRAPER
    //Napi::Number TestThroughPutWrapper(const Napi::CallbackInfo& info);

    //EXPORT
    Napi::Object NapiExport(Napi::Env env, Napi::Object exports);
    NODE_API_MODULE(addon,NapiExport);
}
  
#endif
