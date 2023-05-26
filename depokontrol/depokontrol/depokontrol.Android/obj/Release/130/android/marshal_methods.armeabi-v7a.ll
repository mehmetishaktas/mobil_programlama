; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [118 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 51
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 47
	i32 166922606, ; 2: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 12
	i32 172012715, ; 3: FastAndroidCamera.dll => 0xa40b4ab => 40
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 32
	i32 219130465, ; 5: Xamarin.Android.Support.v4 => 0xd0faa61 => 17
	i32 318968648, ; 6: Xamarin.AndroidX.Activity.dll => 0x13031348 => 44
	i32 321597661, ; 7: System.Numerics => 0x132b30dd => 8
	i32 334355562, ; 8: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 54
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 27
	i32 389971796, ; 10: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 13
	i32 442521989, ; 11: Xamarin.Essentials => 0x1a605985 => 46
	i32 450948140, ; 12: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 25
	i32 465846621, ; 13: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 14: System.dll => 0x1bff388e => 7
	i32 514659665, ; 15: Xamarin.Android.Support.Compat => 0x1ead1551 => 12
	i32 526420162, ; 16: System.Transactions.dll => 0x1f6088c2 => 36
	i32 627609679, ; 17: Xamarin.AndroidX.CustomView => 0x2568904f => 23
	i32 692692150, ; 18: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 11
	i32 809851609, ; 19: System.Drawing.Common.dll => 0x30455ad9 => 37
	i32 882883187, ; 20: Xamarin.Android.Support.v4.dll => 0x349fba73 => 17
	i32 901134713, ; 21: depokontrol.dll => 0x35b63979 => 58
	i32 928116545, ; 22: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 51
	i32 954320159, ; 23: ZXing.Net.Mobile.Forms => 0x38e1c51f => 54
	i32 958213972, ; 24: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 16
	i32 967690846, ; 25: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 27
	i32 974778368, ; 26: FormsViewGroup.dll => 0x3a19f000 => 41
	i32 1012816738, ; 27: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 45
	i32 1015132624, ; 28: depokontrol.Android => 0x3c81b1d0 => 57
	i32 1035644815, ; 29: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 19
	i32 1042160112, ; 30: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 49
	i32 1052210849, ; 31: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 29
	i32 1098259244, ; 32: System => 0x41761b2c => 7
	i32 1134191450, ; 33: ZXingNetMobile.dll => 0x439a635a => 56
	i32 1149278215, ; 34: depokontrol => 0x44809807 => 58
	i32 1293217323, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 24
	i32 1365406463, ; 36: System.ServiceModel.Internals.dll => 0x516272ff => 38
	i32 1376866003, ; 37: Xamarin.AndroidX.SavedState => 0x52114ed3 => 45
	i32 1406073936, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 21
	i32 1411638395, ; 39: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1445445088, ; 40: Xamarin.Android.Support.Fragment => 0x5627bde0 => 15
	i32 1460219004, ; 41: Xamarin.Forms.Xaml => 0x57092c7c => 50
	i32 1469204771, ; 42: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 18
	i32 1511525525, ; 43: MySqlConnector => 0x5a180c95 => 42
	i32 1571005899, ; 44: zxing.portable => 0x5da3a5cb => 55
	i32 1574652163, ; 45: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 14
	i32 1592978981, ; 46: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1622152042, ; 47: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 30
	i32 1639515021, ; 48: System.Net.Http.dll => 0x61b9038d => 0
	i32 1658251792, ; 49: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 34
	i32 1729485958, ; 50: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 20
	i32 1766324549, ; 51: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 32
	i32 1776026572, ; 52: System.Core.dll => 0x69dc03cc => 6
	i32 1788241197, ; 53: Xamarin.AndroidX.Fragment => 0x6a96652d => 25
	i32 1808609942, ; 54: Xamarin.AndroidX.Loader => 0x6bcd3296 => 30
	i32 1813201214, ; 55: Xamarin.Google.Android.Material => 0x6c13413e => 34
	i32 1867746548, ; 56: Xamarin.Essentials.dll => 0x6f538cf4 => 46
	i32 1878053835, ; 57: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 50
	i32 1904184254, ; 58: FastAndroidCamera => 0x717f8bbe => 40
	i32 2011961780, ; 59: System.Buffers.dll => 0x77ec19b4 => 5
	i32 2019465201, ; 60: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 29
	i32 2055257422, ; 61: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 28
	i32 2097448633, ; 62: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 26
	i32 2126786730, ; 63: Xamarin.Forms.Platform.Android => 0x7ec430aa => 48
	i32 2166116741, ; 64: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 14
	i32 2201231467, ; 65: System.Net.Http => 0x8334206b => 0
	i32 2279755925, ; 66: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 31
	i32 2329204181, ; 67: zxing.portable.dll => 0x8ad4d5d5 => 55
	i32 2330457430, ; 68: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 13
	i32 2341995103, ; 69: ZXingNetMobile => 0x8b98025f => 56
	i32 2373288475, ; 70: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 15
	i32 2431243866, ; 71: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 52
	i32 2475788418, ; 72: Java.Interop.dll => 0x93918882 => 2
	i32 2482213323, ; 73: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 53
	i32 2599739856, ; 74: depokontrol.Android.dll => 0x9af4e1d0 => 57
	i32 2732626843, ; 75: Xamarin.AndroidX.Activity => 0xa2e0939b => 44
	i32 2737747696, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 18
	i32 2766581644, ; 77: Xamarin.Forms.Core => 0xa4e6af8c => 47
	i32 2778768386, ; 78: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 33
	i32 2810250172, ; 79: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 21
	i32 2819470561, ; 80: System.Xml.dll => 0xa80db4e1 => 10
	i32 2853208004, ; 81: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 33
	i32 2905242038, ; 82: mscorlib.dll => 0xad2a79b6 => 4
	i32 2978675010, ; 83: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 24
	i32 3044182254, ; 84: FormsViewGroup => 0xb57288ee => 41
	i32 3092211740, ; 85: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 16
	i32 3111772706, ; 86: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3204380047, ; 87: System.Data.dll => 0xbefef58f => 35
	i32 3247949154, ; 88: Mono.Security => 0xc197c562 => 39
	i32 3258312781, ; 89: Xamarin.AndroidX.CardView => 0xc235e84d => 20
	i32 3317135071, ; 90: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 23
	i32 3317144872, ; 91: System.Data => 0xc5b79d28 => 35
	i32 3353484488, ; 92: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 26
	i32 3362522851, ; 93: Xamarin.AndroidX.Core => 0xc86c06e3 => 22
	i32 3366347497, ; 94: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 95: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 31
	i32 3395150330, ; 96: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 97: System.ServiceModel.Internals => 0xcaf21dfe => 38
	i32 3429136800, ; 98: System.Xml => 0xcc6479a0 => 10
	i32 3439690031, ; 99: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 11
	i32 3476120550, ; 100: Mono.Android => 0xcf3163e6 => 3
	i32 3486566296, ; 101: System.Transactions => 0xcfd0c798 => 36
	i32 3536029504, ; 102: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 48
	i32 3632359727, ; 103: Xamarin.Forms.Platform => 0xd881692f => 49
	i32 3641597786, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 28
	i32 3672681054, ; 105: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3689375977, ; 106: System.Drawing.Common => 0xdbe768e9 => 37
	i32 3748608112, ; 107: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 43
	i32 3829621856, ; 108: System.Numerics.dll => 0xe4436460 => 8
	i32 3847036339, ; 109: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 53
	i32 3896760992, ; 110: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 22
	i32 3955647286, ; 111: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 19
	i32 4079385022, ; 112: MySqlConnector.dll => 0xf32679be => 42
	i32 4105002889, ; 113: Mono.Security.dll => 0xf4ad5f89 => 39
	i32 4151237749, ; 114: System.Core => 0xf76edc75 => 6
	i32 4186595366, ; 115: ZXing.Net.Mobile.Core => 0xf98a6026 => 52
	i32 4213026141, ; 116: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 43
	i32 4260525087 ; 117: System.Buffers => 0xfdf2741f => 5
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [118 x i32] [
	i32 51, i32 47, i32 12, i32 40, i32 32, i32 17, i32 44, i32 8, ; 0..7
	i32 54, i32 27, i32 13, i32 46, i32 25, i32 4, i32 7, i32 12, ; 8..15
	i32 36, i32 23, i32 11, i32 37, i32 17, i32 58, i32 51, i32 54, ; 16..23
	i32 16, i32 27, i32 41, i32 45, i32 57, i32 19, i32 49, i32 29, ; 24..31
	i32 7, i32 56, i32 58, i32 24, i32 38, i32 45, i32 21, i32 9, ; 32..39
	i32 15, i32 50, i32 18, i32 42, i32 55, i32 14, i32 1, i32 30, ; 40..47
	i32 0, i32 34, i32 20, i32 32, i32 6, i32 25, i32 30, i32 34, ; 48..55
	i32 46, i32 50, i32 40, i32 5, i32 29, i32 28, i32 26, i32 48, ; 56..63
	i32 14, i32 0, i32 31, i32 55, i32 13, i32 56, i32 15, i32 52, ; 64..71
	i32 2, i32 53, i32 57, i32 44, i32 18, i32 47, i32 33, i32 21, ; 72..79
	i32 10, i32 33, i32 4, i32 24, i32 41, i32 16, i32 1, i32 35, ; 80..87
	i32 39, i32 20, i32 23, i32 35, i32 26, i32 22, i32 2, i32 31, ; 88..95
	i32 9, i32 38, i32 10, i32 11, i32 3, i32 36, i32 48, i32 49, ; 96..103
	i32 28, i32 3, i32 37, i32 43, i32 8, i32 53, i32 22, i32 19, ; 104..111
	i32 42, i32 39, i32 6, i32 52, i32 43, i32 5 ; 112..117
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
