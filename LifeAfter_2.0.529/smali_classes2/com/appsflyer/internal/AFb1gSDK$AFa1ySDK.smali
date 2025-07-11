.class final enum Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1gSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1ySDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum AFLogger:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static final synthetic afDebugLog:[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum afInfoLog:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum d:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum e:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum force:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum registerClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum unregisterClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum v:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum values:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

.field private static enum w:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;


# instance fields
.field private final afWarnLog:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 63
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v1, 0x0

    const-string v2, "ADOBE_AIR"

    const-string v3, "android_adobe_air"

    const-string v4, "com.appsflyer.adobeair.AppsFlyerExtension"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 64
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v2, 0x1

    const-string v3, "ADOBE_MOBILE_SDK"

    const-string v4, "android_adobe_mobile"

    const-string v5, "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 65
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v3, 0x2

    const-string v4, "COCOS2DX"

    const-string v5, "android_cocos2dx"

    const-string v6, "org.cocos2dx.lib.Cocos2dxActivity"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 66
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v4, 0x3

    const-string v5, "CORDOVA"

    const-string v6, "android_cordova"

    const-string v7, "com.appsflyer.cordova.plugin.AppsFlyerPlugin"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 67
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const-string v5, "android_native"

    const/4 v6, 0x4

    const-string v7, "DEFAULT"

    invoke-direct {v0, v7, v6, v5, v5}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 68
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v5, 0x5

    const-string v7, "FLUTTER"

    const-string v8, "android_flutter"

    const-string v9, "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"

    invoke-direct {v0, v7, v5, v8, v9}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 69
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v7, 0x6

    const-string v8, "M_PARTICLE"

    const-string v9, "android_mparticle"

    const-string v10, "com.mparticle.kits.AppsFlyerKit"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->d:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 70
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/4 v8, 0x7

    const-string v9, "NATIVE_SCRIPT"

    const-string v10, "android_native_script"

    const-string v11, "com.tns.NativeScriptActivity"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->e:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 71
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v9, 0x8

    const-string v10, "EXPO"

    const-string v11, "android_expo"

    const-string v12, "expo.modules.devmenu.react.DevMenuAwareReactActivity"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->registerClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 72
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v10, 0x9

    const-string v11, "REACT_NATIVE"

    const-string v12, "android_reactNative"

    const-string v13, "com.appsflyer.reactnative.RNAppsFlyerModule"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFLogger:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 73
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v11, 0xa

    const-string v12, "UNITY"

    const-string v13, "android_unity"

    const-string v14, "com.appsflyer.unity.AppsFlyerAndroidWrapper"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->force:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 74
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v12, 0xb

    const-string v13, "UNREAL_ENGINE"

    const-string v14, "android_unreal"

    const-string v15, "com.epicgames.ue4.GameActivity"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->w:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 75
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v13, 0xc

    const-string v14, "XAMARIN"

    const-string v15, "android_xamarin"

    const-string v12, "mono.android.Runtime"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->v:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 76
    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v12, 0xd

    const-string v14, "CAPACITOR"

    const-string v15, "android_capacitor"

    const-string v13, "capacitor.plugin.appsflyer.sdk.AppsFlyerPlugin"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afInfoLog:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    .line 62
    sget-object v13, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v13, v0, v1

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->d:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->e:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->registerClient:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v9

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->AFLogger:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v10

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->force:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v11

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->w:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->v:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afInfoLog:Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    aput-object v1, v0, v12

    sput-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afDebugLog:[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->i:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afWarnLog:Ljava/lang/String;

    return-void
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afWarnLog:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;
    .locals 1

    .line 62
    const-class v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    return-object p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;
    .locals 1

    .line 62
    sget-object v0, Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->afDebugLog:[Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFb1gSDK$AFa1ySDK;

    return-object v0
.end method
