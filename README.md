# sipSdk_tests-target
problem with config tests target, it fails in runtime during unit test 

i have a project with portSipVoIPSDK.framework in main target. 
it  also requires to add  
libc++  
libresolv, 
coreAudio.framework, 
glKit.framework, 
metallKit.framework, 
videoToolbox.framework

also i added other linker flags -ObjC
and bridging header with importing PortSIPVoIPSDK.h 

i have my own SipService which is added in main and test targets
it contains an instance of PortSIPSDK

in tests target in build settings i added a reference on bridging header
and also added libc++ and libreoolv in build phases - binary libraries 
that's all i've done

i can't figure out how to configure tests target, it fails in runtime with "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_once_t"

i see that the cause in duplicated namespaces and internal error is:
classes KeepAwake, PortSIPSDK, SipEventArgs, PortAudioSession, RTCVideoDelegate, RTCWrappedNativeVideoDecoder, RTCWrappedNativeVideoEncoder 
cause an error: is implemented in both .../sipSetup and .../sipSetupTests. One of the two will be used. Which one is undefined.


