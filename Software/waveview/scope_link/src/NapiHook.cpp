
#ifdef CMAKE
#include "NapiHook.hpp"
#include "EVTester.hpp"


int scope_link::GetData() {
    static int r = 0;

    int* testData = (int*)malloc(sizeof(int)*256);
    for(int i = 0; i < 4; i++) {
        testData[i] = i;
    }

    free(testData);
    
    return ++r;
}

Napi::Number scope_link::GetDataWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();

    return Napi::Number::New(env,scope_link::GetData());
}

//Init Code
int scope_link::InitScopeLink() {
    main(0,0);
    return 100;
}
 
//WRAPER
Napi::Number scope_link::InitScopeLinkWrapper(const Napi::CallbackInfo& info) {
    Napi::Env env = info.Env();

    return Napi::Number::New(env,scope_link::InitScopeLink());
}


Napi::Object scope_link::NapiExport(Napi::Env env, Napi::Object exports) {
    
    exports.Set("GetData",Napi::Function::New(env,scope_link::GetDataWrapper));
    exports.Set("InitScopeLink",Napi::Function::New(env,scope_link::InitScopeLinkWrapper));

    return exports;
}

#endif

