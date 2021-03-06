## Add project specific ProGuard rules here.
## By default, the flags in this file are appended to flags specified
## in D:\DevSofrware\Android\sdk/tools/proguard/proguard-android.txt
## You can edit the include path and order by changing the proguardFiles
## directive in build.gradle.
##
## For more details, see
##   http://developer.android.com/guide/developing/tools/proguard.html
#
## Add any project specific keep options here:
#
## If your project uses WebView with JS, uncomment the following
## and specify the fully qualified class name to the JavaScript interface
## class:
##-keepclassmembers class fqcn.of.javascript.interface.for.webview {
##   public *;
##}
#
##-------------------------------------------定制化区域----------------------------------------------
##---------------------------------1.实体类---------------------------------
#
#-keep class com.example.xie.projecte.model.** { *; }
#-keep class com.example.xie.projecte.bean.** { *; }
#
#-keep class com.example.xie.projecte.model22.** { *; }
#
##-------------------------------------------------------------------------
#
##---------------------------------2.第三方包-------------------------------
#
##---支付宝----
#-libraryjars libs/alipaySDK-20161222.jar
#
#-keep class com.alipay.android.app.IAlixPay{*;}
#-keep class com.alipay.android.app.IAlixPay$Stub{*;}
#-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
#-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
#-keep class com.alipay.sdk.app.PayTask{ public *;}
#-keep class com.alipay.sdk.app.AuthTask{ public *;}
##-------------
##----qq分享---
#-keep class com.tencent.open.TDialog$*
#-keep class com.tencent.open.TDialog$* {*;}
#-keep class com.tencent.open.PKDialog
#-keep class com.tencent.open.PKDialog {*;}
#-keep class com.tencent.open.PKDialog$*
#-keep class com.tencent.open.PKDialog$* {*;}
##-------------
#
#-keep class com.tencent.mm.**{*;}
#-keep class com.tencent.**{*;}
#
#
##-----Retrofit---
#-dontnote retrofit2.Platform
#-dontnote retrofit2.Platform$IOS$MainThreadExecutor
#-dontwarn retrofit2.Platform$Java8
#-keepattributes Signature
#-keepattributes Exceptions
## okhttp
#-dontwarn okio.**
##------------------
#
#
#
##-----retrofit + rxjava -----------
#-dontwarn javax.annotation.**
#-dontwarn javax.inject.**
## OkHttp3
#-dontwarn okhttp3.logging.**
#-keep class okhttp3.internal.**{*;}
#-dontwarn okio.**
## Retrofit
#-dontwarn retrofit2.**
#-keep class retrofit2.** { *; }
#-keepattributes Signature
#-keepattributes Exceptions
## RxJava RxAndroid
#-dontwarn sun.misc.**
#-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
#    long producerIndex;
#    long consumerIndex;
#}
#-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
#    rx.internal.util.atomic.LinkedQueueNode producerNode;
#}
#-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
#    rx.internal.util.atomic.LinkedQueueNode consumerNode;
#}
#
## Gson
#-keep class com.google.gson.stream.** { *; }
#-keepattributes EnclosingMethod
##-keep class com.example.model.** { *; }自己的实体类
#
##------------------
#
#
#
##-------------------------------------------------------------------------
#
##---------------------------------3.与js互相调用的类------------------------
#
#
#
##-------------------------------------------------------------------------
#
##---------------------------------4.反射相关的类和方法-----------------------
#
#
#
##----------------------------------------------------------------------------
##---------------------------------------------------------------------------------------------------
#
#
## 混淆时忽略警告
#-ignorewarnings
#
#
##-------------------------------------------基本不用动区域--------------------------------------------
##---------------------------------基本指令区----------------------------------
#-optimizationpasses 5
#-dontusemixedcaseclassnames
#-dontskipnonpubliclibraryclasses
#-dontskipnonpubliclibraryclassmembers
#-dontpreverify
#-verbose
#-printmapping proguardMapping.txt
#-optimizations !code/simplification/cast,!field/*,!class/merging/*
#-keepattributes *Annotation*,InnerClasses
#-keepattributes Signature
#-keepattributes SourceFile,LineNumberTable
##----------------------------------------------------------------------------
#
##---------------------------------默认保留区---------------------------------
#
#-keep public class * extends android.app.Activity
#-keep public class * extends android.app.Appliction
#-keep public class * extends android.app.Service
#-keep public class * extends android.content.BroadcastReceiver
#-keep public class * extends android.content.ContentProvider
#-keep public class * extends android.app.backup.BackupAgentHelper
#-keep public class * extends android.preference.Preference
#-keep public class * extends android.view.View
#-keep public class com.android.vending.licensing.ILicensingService
#-keep class android.support.** {*;}
#
#-keepclasseswithmembernames class * {
#    native <methods>;
#}
#-keepclassmembers class * extends android.app.Activity{
#    public void *(android.view.View);
#}
#-keepclassmembers enum * {
#    public static **[] values();
#    public static ** valueOf(java.lang.String);
#}
#-keep public class * extends android.view.View{
#    *** get*();
#    void set*(***);
#    public <init>(android.content.Context);
#    public <init>(android.content.Context, android.util.AttributeSet);
#    public <init>(android.content.Context, android.util.AttributeSet, int);
#}
#-keepclasseswithmembers class * {
#    public <init>(android.content.Context, android.util.AttributeSet);
#    public <init>(android.content.Context, android.util.AttributeSet, int);
#}
#-keep class * implements android.os.Parcelable {
#  public static final android.os.Parcelable$Creator *;
#}
#-keepclassmembers class * implements java.io.Serializable {
#    static final long serialVersionUID;
#    private static final java.io.ObjectStreamField[] serialPersistentFields;
#    private void writeObject(java.io.ObjectOutputStream);
#    private void readObject(java.io.ObjectInputStream);
#    java.lang.Object writeReplace();
#    java.lang.Object readResolve();
#}
#-keep class **.R$* {
# *;
#}
#-keepclassmembers class * {
#    void *(**On*Event);
#    public static <fields>;
#}
#
##----------------------------------------------------------------------------
#
##---------------------------------webview------------------------------------
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#-keepclassmembers class * extends android.webkit.webViewClient {
#    public void *(android.webkit.WebView, java.lang.String, android.graphics.Bitmap);
#    public boolean *(android.webkit.WebView, java.lang.String);
#}
#-keepclassmembers class * extends android.webkit.webViewClient {
#    public void *(android.webkit.webView, jav.lang.String);
#}
##----------------------------------------------------------------------------
##---------------------------------------------------------------------------------------------------
