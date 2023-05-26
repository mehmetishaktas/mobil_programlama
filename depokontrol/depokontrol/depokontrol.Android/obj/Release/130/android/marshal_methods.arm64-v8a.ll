; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [118 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 3
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 45
	i64 702024105029695270, ; 2: System.Drawing.Common => 0x9be17343c0e7726 => 37
	i64 720058930071658100, ; 3: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 26
	i64 872800313462103108, ; 4: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 24
	i64 940822596282819491, ; 5: System.Transactions => 0xd0e792aa81923a3 => 36
	i64 996343623809489702, ; 6: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 49
	i64 1000557547492888992, ; 7: Mono.Security.dll => 0xde2b1c9cba651a0 => 39
	i64 1120440138749646132, ; 8: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 34
	i64 1342439039765371018, ; 9: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 15
	i64 1425944114962822056, ; 10: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1624659445732251991, ; 11: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 18
	i64 1795316252682057001, ; 12: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 19
	i64 1836611346387731153, ; 13: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 45
	i64 1938067011858688285, ; 14: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 17
	i64 1981742497975770890, ; 15: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 29
	i64 2262844636196693701, ; 16: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 24
	i64 2329709569556905518, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 28
	i64 2337758774805907496, ; 18: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 9
	i64 2470498323731680442, ; 19: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 21
	i64 2547086958574651984, ; 20: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 44
	i64 2592350477072141967, ; 21: System.Xml.dll => 0x23f9e10627330e8f => 10
	i64 2624866290265602282, ; 22: mscorlib.dll => 0x246d65fbde2db8ea => 4
	i64 2783046991838674048, ; 23: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 9
	i64 2960931600190307745, ; 24: Xamarin.Forms.Core => 0x2917579a49927da1 => 47
	i64 3017704767998173186, ; 25: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 34
	i64 3022227708164871115, ; 26: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 16
	i64 3289520064315143713, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 27
	i64 3522470458906976663, ; 28: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 32
	i64 3531994851595924923, ; 29: System.Numerics => 0x31042a9aade235bb => 8
	i64 3727469159507183293, ; 30: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 31
	i64 4255796613242758200, ; 31: zxing.portable => 0x3b0fa078b8a52438 => 55
	i64 4292233171264798357, ; 32: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 52
	i64 4525561845656915374, ; 33: System.ServiceModel.Internals => 0x3ece06856b710dae => 38
	i64 4777641082734392489, ; 34: depokontrol => 0x424d974070b234a9 => 58
	i64 4794310189461587505, ; 35: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 44
	i64 4795410492532947900, ; 36: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 32
	i64 5142919913060024034, ; 37: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 48
	i64 5203618020066742981, ; 38: Xamarin.Essentials => 0x4836f704f0e652c5 => 46
	i64 5233983725610684227, ; 39: FastAndroidCamera => 0x48a2d877b5334f43 => 40
	i64 5507995362134886206, ; 40: System.Core.dll => 0x4c705499688c873e => 6
	i64 5767696078500135884, ; 41: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 11
	i64 5767749323661124970, ; 42: ZXing.Net.Mobile.Core => 0x500b29737652256a => 52
	i64 6085203216496545422, ; 43: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 49
	i64 6086316965293125504, ; 44: FormsViewGroup.dll => 0x5476f10882baef80 => 41
	i64 6401687960814735282, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 28
	i64 6548213210057960872, ; 46: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 23
	i64 6588599331800941662, ; 47: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 17
	i64 6659513131007730089, ; 48: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 26
	i64 7635363394907363464, ; 49: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 47
	i64 7637365915383206639, ; 50: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 46
	i64 7654504624184590948, ; 51: System.Net.Http => 0x6a3a4366801b8264 => 0
	i64 7702918024138448955, ; 52: MySqlConnector => 0x6ae6432192b9e03b => 42
	i64 7820441508502274321, ; 53: System.Data => 0x6c87ca1e14ff8111 => 35
	i64 7836164640616011524, ; 54: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 18
	i64 8083354569033831015, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 27
	i64 8087206902342787202, ; 56: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 43
	i64 8101777744205214367, ; 57: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 11
	i64 8167236081217502503, ; 58: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 2
	i64 8626175481042262068, ; 59: Java.Interop => 0x77b654e585b55834 => 2
	i64 8725526185868997716, ; 60: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 43
	i64 9324707631942237306, ; 61: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 19
	i64 9662334977499516867, ; 62: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9678050649315576968, ; 63: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 21
	i64 9808709177481450983, ; 64: Mono.Android.dll => 0x881f890734e555e7 => 3
	i64 9834056768316610435, ; 65: System.Transactions.dll => 0x8879968718899783 => 36
	i64 9998632235833408227, ; 66: Mono.Security => 0x8ac2470b209ebae3 => 39
	i64 10038780035334861115, ; 67: System.Net.Http.dll => 0x8b50e941206af13b => 0
	i64 10229024438826829339, ; 68: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 23
	i64 10430153318873392755, ; 69: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 22
	i64 11023048688141570732, ; 70: System.Core => 0x98f9bc61168392ac => 6
	i64 11037814507248023548, ; 71: System.Xml => 0x992e31d0412bf7fc => 10
	i64 11162124722117608902, ; 72: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 33
	i64 11376461258732682436, ; 73: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 12
	i64 11529969570048099689, ; 74: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 33
	i64 11683710219442713716, ; 75: ZXingNetMobile => 0xa224e08aa87bf474 => 56
	i64 12036099219279441448, ; 76: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 54
	i64 12102847907131387746, ; 77: System.Buffers => 0xa7f5f40c43256f62 => 5
	i64 12414299427252656003, ; 78: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 12
	i64 12451044538927396471, ; 79: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 25
	i64 12466513435562512481, ; 80: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 30
	i64 12538491095302438457, ; 81: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 20
	i64 12551451704392164662, ; 82: MySqlConnector.dll => 0xae2fb6d31fc42536 => 42
	i64 12629983860853673214, ; 83: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 53
	i64 12952608645614506925, ; 84: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 14
	i64 12963446364377008305, ; 85: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 37
	i64 13358059602087096138, ; 86: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 15
	i64 13370592475155966277, ; 87: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13454009404024712428, ; 88: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 51
	i64 13572454107664307259, ; 89: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 31
	i64 13647894001087880694, ; 90: System.Data.dll => 0xbd670f48cb071df6 => 35
	i64 13959074834287824816, ; 91: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 25
	i64 13967638549803255703, ; 92: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 48
	i64 14124974489674258913, ; 93: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 20
	i64 14400856865250966808, ; 94: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 13
	i64 14792063746108907174, ; 95: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 51
	i64 14954388675289411854, ; 96: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 54
	i64 15370334346939861994, ; 97: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 22
	i64 15447310896218025948, ; 98: depokontrol.dll => 0xd65fdf6ab018afdc => 58
	i64 15457813392950723921, ; 99: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 16
	i64 15609085926864131306, ; 100: System.dll => 0xd89e9cf3334914ea => 7
	i64 15810740023422282496, ; 101: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 50
	i64 15851975962649584118, ; 102: zxing.portable.dll => 0xdbfd882691c261f6 => 55
	i64 16107354805249926211, ; 103: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 56
	i64 16119456071779071829, ; 104: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 40
	i64 16154507427712707110, ; 105: System => 0xe03056ea4e39aa26 => 7
	i64 16526376532108668976, ; 106: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 53
	i64 16649171765659258479, ; 107: depokontrol.Android.dll => 0xe70dbd8280954e6f => 57
	i64 16833383113903931215, ; 108: mscorlib => 0xe99c30c1484d7f4f => 4
	i64 16932527889823454152, ; 109: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 14
	i64 17163292838423176443, ; 110: depokontrol.Android => 0xee3043e6ca3824fb => 57
	i64 17428701562824544279, ; 111: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 13
	i64 17704177640604968747, ; 112: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 30
	i64 17710060891934109755, ; 113: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 29
	i64 17838668724098252521, ; 114: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 5
	i64 17882897186074144999, ; 115: FormsViewGroup => 0xf82cd03e3ac830e7 => 41
	i64 17892495832318972303, ; 116: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 50
	i64 18129453464017766560 ; 117: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 38
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [118 x i32] [
	i32 3, i32 45, i32 37, i32 26, i32 24, i32 36, i32 49, i32 39, ; 0..7
	i32 34, i32 15, i32 1, i32 18, i32 19, i32 45, i32 17, i32 29, ; 8..15
	i32 24, i32 28, i32 9, i32 21, i32 44, i32 10, i32 4, i32 9, ; 16..23
	i32 47, i32 34, i32 16, i32 27, i32 32, i32 8, i32 31, i32 55, ; 24..31
	i32 52, i32 38, i32 58, i32 44, i32 32, i32 48, i32 46, i32 40, ; 32..39
	i32 6, i32 11, i32 52, i32 49, i32 41, i32 28, i32 23, i32 17, ; 40..47
	i32 26, i32 47, i32 46, i32 0, i32 42, i32 35, i32 18, i32 27, ; 48..55
	i32 43, i32 11, i32 2, i32 2, i32 43, i32 19, i32 8, i32 21, ; 56..63
	i32 3, i32 36, i32 39, i32 0, i32 23, i32 22, i32 6, i32 10, ; 64..71
	i32 33, i32 12, i32 33, i32 56, i32 54, i32 5, i32 12, i32 25, ; 72..79
	i32 30, i32 20, i32 42, i32 53, i32 14, i32 37, i32 15, i32 1, ; 80..87
	i32 51, i32 31, i32 35, i32 25, i32 48, i32 20, i32 13, i32 51, ; 88..95
	i32 54, i32 22, i32 58, i32 16, i32 7, i32 50, i32 55, i32 56, ; 96..103
	i32 40, i32 7, i32 53, i32 57, i32 4, i32 14, i32 57, i32 13, ; 104..111
	i32 30, i32 29, i32 5, i32 41, i32 50, i32 38 ; 112..117
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
