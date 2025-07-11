.class public Lcom/netease/ntunisdk/SdkNeteaseGlobal;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkNeteaseGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;,
        Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;
    }
.end annotation


# static fields
.field private static final AMAZON:Ljava/lang/String; = "amazon"

.field private static final AUTH_APPLE:I = 0x1b

.field private static final AUTH_DISCORD:I = 0x25

.field private static final AUTH_EMAIL:I = 0x23

.field private static final AUTH_ENYI_PASSPORT:I = 0x28

.field private static final AUTH_HUAWEI:I = 0x21

.field private static final AUTH_HYDRA_EMAIL:I = 0x20

.field private static final AUTH_LY_PASSPORT:I = 0x29

.field private static final AUTH_NAVER:I = 0x1f

.field private static final AUTH_PASSPORT:I = 0x26

.field private static final AUTH_PN:I = 0x2a

.field private static final AUTH_TIKTOK:I = 0x22

.field public static final AUTO_LINK_ACCOUNT:Ljava/lang/String; = "AUTO_LINK_ACCOUNT"

.field private static final CHANNEL:Ljava/lang/String; = "netease_global"

.field private static final FACEBOOK_SDK:Ljava/lang/String; = "facebook_sdk"

.field private static final GOOGLE:Ljava/lang/String; = "google"

.field private static final GOOGLE_PLAY:Ljava/lang/String; = "google_play"

.field public static final HIDE_LOGIN_CLOSE_BUTTON:Ljava/lang/String; = "hideLoginCloseButton"

.field public static final HIDE_REGISTER_BIRTHDAY_CLOSE_BUTTON:Ljava/lang/String; = "hideRegisterBirthdayCloseButton"

.field private static final KAKAO:Ljava/lang/String; = "kakao"

.field private static final LINE:Ljava/lang/String; = "line"

.field private static final LINEGAME:Ljava/lang/String; = "linegame"

.field public static final MINOR_ISO_CODE:Ljava/lang/String; = "MINOR_ISO_CODE"

.field private static final MINOR_STATUS:Ljava/lang/String; = "MINOR_STATUS"

.field private static final MODE_HAS_LVU_DIALOG:Ljava/lang/String; = "FEATURE_HAS_LVU_DIALOG"

.field private static final MYCARD:Ljava/lang/String; = "mycard"

.field private static final NT_AUTH_NAME_APPLE:Ljava/lang/String; = "apple"

.field private static final NT_AUTH_NAME_DISCORD:Ljava/lang/String; = "discord"

.field private static final NT_AUTH_NAME_EMAIL:Ljava/lang/String; = "email"

.field private static final NT_AUTH_NAME_ENYI_PASSPORT:Ljava/lang/String; = "enyi_passport"

.field private static final NT_AUTH_NAME_HUAWEI:Ljava/lang/String; = "huawei"

.field private static final NT_AUTH_NAME_HYDRA_EMAIL:Ljava/lang/String; = "hydra_email"

.field private static final NT_AUTH_NAME_LY_PASSPORT:Ljava/lang/String; = "ly_passport"

.field private static final NT_AUTH_NAME_NAVER:Ljava/lang/String; = "naver"

.field private static final NT_AUTH_NAME_PASSPORT:Ljava/lang/String; = "ospassport"

.field private static final NT_AUTH_NAME_PN:Ljava/lang/String; = "pn"

.field private static final NT_AUTH_NAME_TIKTOK:Ljava/lang/String; = "tiktok"

.field private static final OVERSEA_CLIENT_LOG_URL:Ljava/lang/String; = "https://applog.matrix.easebar.com"

.field private static final PAY_CHANNELS_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UniSDK netease_global"

.field private static final TWITTER:Ljava/lang/String; = "twitter"

.field private static final VER:Ljava/lang/String; = "3.9.0"


# instance fields
.field currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

.field private currentLanguageCode:Ljava/lang/String;

.field private debugMode:Z

.field private isForceRTL:Z

.field isGameLanguageChanged:Z

.field private isMiddleEastPublish:Z

.field private isNeedWriteExternalStorage:Z

.field private isPublishAreaChanged:Z

.field private jfGameId:Ljava/lang/String;

.field private lineGameMid:Ljava/lang/String;

.field private mBindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

.field private mBoundTypeNames:[Ljava/lang/String;

.field private mBoundTypes:[I

.field private mCachedFontPath:Ljava/lang/String;

.field private mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

.field private mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

.field private mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

.field private mLoginType:I

.field private mLoginTypeName:Ljava/lang/String;

.field private mMonitorCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

.field private mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

.field private mUnbindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

.field private publishArea:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "amazon"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mycard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "google_play"

    aput-object v2, v0, v1

    .line 111
    sput-object v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->PAY_CHANNELS_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentLanguageCode:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginType:I

    .line 124
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    const-string v1, "unlogin"

    .line 126
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginTypeName:Ljava/lang/String;

    const-string v1, ""

    .line 127
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 129
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->debugMode:Z

    .line 130
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    .line 131
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isNeedWriteExternalStorage:Z

    .line 132
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    .line 133
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    .line 134
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

    .line 135
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mUnbindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

    .line 136
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mMonitorCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

    .line 432
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isGameLanguageChanged:Z

    const/4 p1, 0x1

    .line 802
    iput p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    .line 803
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    .line 804
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    .line 805
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isForceRTL:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Lcom/netease/mpay/oversea/MpayOverseaApi;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->processCurrentUser(Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Ljava/util/Map;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->updateProtocolSilentMode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetGameLanguage()V

    return-void
.end method

.method static synthetic access$2200(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setLoginType(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setJFSauth(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLineGameUid()V

    return-void
.end method

.method static synthetic access$2500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/mpay/oversea/User;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->didBind(Lcom/netease/mpay/oversea/User;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetProp()V

    return-void
.end method

.method static synthetic access$2702(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[I)[I
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private checkConfig()V
    .locals 6

    .line 812
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MIDDLE_EAST_PUBLISH"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 813
    :goto_0
    iget-boolean v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    if-eq v0, v3, :cond_2

    .line 814
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    .line 815
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    .line 816
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    goto :goto_2

    .line 818
    :cond_2
    iput-boolean v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    .line 821
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishArea:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isMiddleEastPublish:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isPublishAreaChanged:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UniSDK netease_global"

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    .line 825
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v3

    .line 826
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/GameLanguage;->setFontPath(Ljava/lang/String;)V

    .line 827
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v4, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V

    .line 828
    iget-boolean v4, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isGameLanguageChanged:Z

    if-eqz v4, :cond_5

    .line 830
    sget-object v4, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "ENABLE_RTL"

    if-ne v4, v3, :cond_3

    .line 831
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->changeGameLanguage(Landroid/app/Activity;)V

    .line 832
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 835
    :cond_3
    sget-object v2, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    if-ne v2, v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->resetGameLanguage(Landroid/app/Activity;)V

    .line 838
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 841
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    if-eqz v0, :cond_6

    .line 842
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/GameConfig;->setPublishArea(I)Lcom/netease/mpay/oversea/GameConfig;

    .line 843
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method private configMpayHosts()V
    .locals 3

    const-string v0, "CHANNEL_ANALYSIS_HOST"

    .line 396
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Enter updateMpayHosts : %s"

    .line 397
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {v0}, Lcom/netease/mpay/oversea/GameConfig;->updateMpayHosts(Ljava/lang/String;)V

    return-void
.end method

.method private didBind(Lcom/netease/mpay/oversea/User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boundTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindSuccess,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setLoginType(Lcom/netease/mpay/oversea/User;)V

    .line 413
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLineGameUid()V

    .line 414
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    const-string v2, "UIN"

    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->token:Ljava/lang/String;

    const-string v2, "SESSION"

    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->deviceId:Ljava/lang/String;

    const-string v2, "DEVICE_ID"

    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "LOGIN_STAT"

    .line 417
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 418
    iget v2, p1, Lcom/netease/mpay/oversea/User;->minorStatus:I

    const-string v3, "MINOR_STATUS"

    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 419
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    iget-object p1, p1, Lcom/netease/mpay/oversea/User;->region:Ljava/lang/String;

    const-string v3, "MINOR_ISO_CODE"

    invoke-interface {v2, v3, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "func"

    aput-object v3, p1, v2

    const-string v2, "MpayLoginCallback.onDialogFinish"

    aput-object v2, p1, v1

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, p1, v1

    const/4 v1, 0x3

    const-string v2, "loginDone"

    aput-object v2, p1, v1

    const/4 v1, 0x4

    const-string v2, "unisdk_code"

    aput-object v2, p1, v1

    const/4 v1, 0x5

    const-string v2, "13"

    aput-object v2, p1, v1

    const/4 v1, 0x6

    const-string v2, "raw_code"

    aput-object v2, p1, v1

    const/4 v1, 0x7

    const-string v2, "onDialogFinish"

    aput-object v2, p1, v1

    const/16 v1, 0x8

    const-string v2, "raw_msg"

    aput-object v2, p1, v1

    const/16 v1, 0x9

    aput-object v0, p1, v1

    .line 420
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 428
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginDone(I)V

    return-void
.end method

.method private declared-synchronized getLanguage()Lcom/netease/mpay/oversea/GameLanguage;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "LANGUAGE_CODE"

    .line 436
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "LANGUAGE_CODE"

    const-string v1, "EN"

    .line 438
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EN"

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isGameLanguageChanged:Z

    .line 443
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 445
    :cond_1
    :try_start_1
    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentLanguageCode:Ljava/lang/String;

    .line 446
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    const-string v2, "ZH_HANS"

    .line 447
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "ZH_CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v2, "ZH_HANT"

    .line 449
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "ZH_HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const-string v2, "ZH_TW"

    .line 451
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 452
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_4
    const-string v2, "EN"

    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 454
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_5
    const-string v2, "PT"

    .line 457
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 458
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->PT:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_6
    const-string v2, "RU"

    .line 463
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 464
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->RU:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_7
    const-string v2, "DE"

    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 466
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->DE:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_8
    const-string v2, "ES"

    .line 467
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 468
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ES:Lcom/netease/mpay/oversea/GameLanguage;

    goto/16 :goto_2

    :cond_9
    const-string v2, "FR"

    .line 469
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 470
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->FR:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_a
    const-string v2, "HI"

    .line 471
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 472
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->HI:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_b
    const-string v2, "IN"

    .line 473
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 474
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->IN:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_c
    const-string v2, "JA"

    .line 477
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 478
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->JA:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_d
    const-string v2, "KO"

    .line 479
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 480
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->KO:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_e
    const-string v2, "TH"

    .line 487
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 488
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->TH:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_f
    const-string v2, "VI"

    .line 489
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 490
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->VI:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_10
    const-string v2, "TR"

    .line 491
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 492
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->TR:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    :cond_11
    const-string v2, "AR"

    .line 493
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 494
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    .line 450
    :cond_12
    :goto_0
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/GameLanguage;

    goto :goto_2

    .line 448
    :cond_13
    :goto_1
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/GameLanguage;

    .line 496
    :cond_14
    :goto_2
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isGameLanguageChanged:Z

    const-string v0, "UniSDK netease_global"

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentLanguage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/GameLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLineGameUid()V
    .locals 4

    const-string v0, "UniSDK netease_global"

    const-string v1, "getLineGameUid"

    .line 1808
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLineGameAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 1810
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1811
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getAuthTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1812
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v1

    .line 1813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThirdPartyCredentials loginType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;

    invoke-direct {v3, p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$17;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;I)V

    invoke-virtual {v2, v1, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->isThirdPartyAuthValid(ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 1836
    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 1839
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineGameUid mid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getMetaDataInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 2512
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2513
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 2512
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 2514
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method private getMpayLoginType(Ljava/lang/String;)I
    .locals 2

    .line 1703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "guest"

    if-eqz v0, :cond_0

    const-string p1, "AUTH_CHANNEL"

    .line 1704
    invoke-virtual {p0, p1, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "google"

    .line 1706
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "native"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "facebook"

    .line 1708
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const-string v0, "twitter"

    .line 1710
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const-string v0, "dmm"

    .line 1712
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x6

    return p1

    :cond_4
    const-string v0, "steam"

    .line 1714
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x7

    return p1

    :cond_5
    const-string v0, "amazon"

    .line 1716
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x8

    return p1

    :cond_6
    const-string v0, "line"

    .line 1718
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x9

    return p1

    :cond_7
    const-string v0, "linegame"

    .line 1720
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0xa

    return p1

    :cond_8
    const-string v0, "psn"

    .line 1722
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xb

    return p1

    :cond_9
    const-string v0, "wechat"

    .line 1724
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xe

    return p1

    :cond_a
    const-string v0, "nintendo"

    .line 1726
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xd

    return p1

    :cond_b
    const-string v0, "vk"

    .line 1728
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x11

    return p1

    :cond_c
    const-string v0, "huawei"

    .line 1730
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0x12

    return p1

    :cond_d
    const-string v0, "kakao"

    .line 1732
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0x13

    return p1

    :cond_e
    const-string v0, "naver"

    .line 1734
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x14

    return p1

    :cond_f
    const-string v0, "hydra_email"

    .line 1736
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x15

    return p1

    .line 1738
    :cond_10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const-string v0, "email"

    .line 1740
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p1, 0x16

    return p1

    :cond_12
    const-string v0, "tiktok"

    .line 1742
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p1, 0x17

    return p1

    :cond_13
    const-string v0, "discord"

    .line 1744
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 p1, 0x18

    return p1

    :cond_14
    const-string v0, "apple"

    .line 1746
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p1, 0x10

    return p1

    :cond_15
    const-string v0, "ospassport"

    .line 1748
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p1, 0x19

    return p1

    :cond_16
    const-string v0, "enyi_passport"

    .line 1750
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 p1, 0x1c

    return p1

    :cond_17
    const-string v0, "ly_passport"

    .line 1752
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 p1, 0x1d

    return p1

    :cond_18
    const-string v0, "pn"

    .line 1754
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p1, 0x1e

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1a
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method private static getPublishArea(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.netease.global.publish.area"

    .line 2507
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMetaDataInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V
    .locals 3

    const-string v0, "AUTH_CHANNEL"

    const-string v1, "linegame"

    .line 1538
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v0

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThirdPartyCredentials loginType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$14;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getThirdPartyCredentials(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    return-void
.end method

.method public static getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 387
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUniAuthType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/16 p1, 0x2a

    return p1

    :pswitch_2
    const/16 p1, 0x29

    return p1

    :pswitch_3
    const/16 p1, 0x28

    return p1

    :pswitch_4
    const/16 p1, 0x26

    return p1

    :pswitch_5
    const/16 p1, 0x25

    return p1

    :pswitch_6
    const/16 p1, 0x22

    return p1

    :pswitch_7
    const/16 p1, 0x23

    return p1

    :pswitch_8
    const/16 p1, 0x20

    return p1

    :pswitch_9
    const/16 p1, 0x1f

    return p1

    :pswitch_a
    const/16 p1, 0xd

    return p1

    :pswitch_b
    const/16 p1, 0x21

    return p1

    :pswitch_c
    const/16 p1, 0x1c

    return p1

    :pswitch_d
    const/16 p1, 0x1b

    return p1

    :pswitch_e
    const/16 p1, 0x8

    return p1

    :pswitch_f
    const/16 p1, 0x18

    return p1

    :pswitch_10
    const/16 p1, 0x16

    return p1

    :pswitch_11
    const/16 p1, 0x13

    return p1

    :pswitch_12
    const/16 p1, 0x12

    return p1

    :pswitch_13
    const/16 p1, 0x11

    return p1

    :pswitch_14
    const/16 p1, 0x10

    return p1

    :pswitch_15
    const/16 p1, 0xf

    return p1

    :pswitch_16
    const/16 p1, 0xe

    return p1

    :pswitch_17
    const/4 p1, 0x4

    return p1

    :pswitch_18
    const/4 p1, 0x5

    return p1

    :pswitch_19
    const/4 p1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getUniAuthTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "unlogin"

    return-object p1

    :pswitch_1
    const-string p1, "pn"

    return-object p1

    :pswitch_2
    const-string p1, "ly_passport"

    return-object p1

    :pswitch_3
    const-string p1, "enyi_passport"

    return-object p1

    :pswitch_4
    const-string p1, "ospassport"

    return-object p1

    :pswitch_5
    const-string p1, "discord"

    return-object p1

    :pswitch_6
    const-string p1, "tiktok"

    return-object p1

    :pswitch_7
    const-string p1, "email"

    return-object p1

    :pswitch_8
    const-string p1, "hydra_email"

    return-object p1

    :pswitch_9
    const-string p1, "naver"

    return-object p1

    :pswitch_a
    const-string p1, "kakao"

    return-object p1

    :pswitch_b
    const-string p1, "huawei"

    return-object p1

    :pswitch_c
    const-string p1, "vk"

    return-object p1

    :pswitch_d
    const-string p1, "apple"

    return-object p1

    :pswitch_e
    const-string p1, "wechat"

    return-object p1

    :pswitch_f
    const-string p1, "nintendo"

    return-object p1

    :pswitch_10
    const-string p1, "psn"

    return-object p1

    :pswitch_11
    const-string p1, "linegame"

    return-object p1

    :pswitch_12
    const-string p1, "line"

    return-object p1

    :pswitch_13
    const-string p1, "amazon"

    return-object p1

    :pswitch_14
    const-string p1, "steam"

    return-object p1

    :pswitch_15
    const-string p1, "dmm"

    return-object p1

    :pswitch_16
    const-string p1, "twitter"

    return-object p1

    :pswitch_17
    const-string p1, "facebook"

    return-object p1

    :pswitch_18
    const-string p1, "google"

    return-object p1

    :pswitch_19
    const-string p1, "guest"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hasAuthTypeName(Ljava/lang/String;)Z
    .locals 5

    .line 1843
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1846
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1847
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initClientLog()V
    .locals 3

    .line 260
    invoke-static {}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isSupportNewClientLog()Z

    move-result v0

    .line 261
    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$1;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Z)V

    invoke-virtual {v1, v2}, Lcom/netease/mcount/ClientLogAgent;->init(Lcom/netease/mcount/clientlog/ClientLogHandle;)V

    .line 378
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_CLIENT_LOG_URL"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://applog.matrix.easebar.com"

    .line 382
    :goto_0
    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mcount/ClientLogAgent;->setClientLogUrl(Ljava/lang/String;)V

    return-void
.end method

.method private is3rdLibValid(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2148
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    const-string v0, "linegame"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 2144
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v0, "google"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public static isClassInstalled(Ljava/lang/String;)Z
    .locals 0

    .line 2498
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 2501
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static isGoogleGamesV2Available()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayGamesSdk"

    .line 2437
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportNewClientLog()Z
    .locals 3

    .line 2492
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BASE_VERSION_CODE"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xbc

    if-lt v0, v2, :cond_0

    const-string v0, "com.netease.ntunisdk.base.utils.clientlog.ClientLog"

    .line 2493
    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isClassInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isThirdPartyAuthValid(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "AUTH_CHANNEL"

    const-string v1, "linegame"

    .line 1598
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v0

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThirdPartyAuthValid loginType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK netease_global"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$15;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$15;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->isThirdPartyAuthValid(ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    return-void
.end method

.method private presentUserCenter(Ljava/lang/String;)V
    .locals 3

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "presentUserCenter key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->openManager()V

    goto :goto_0

    .line 1476
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "MINOR_STATUS"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 1477
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateMinorStatus(I)V

    .line 1478
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->presentUserCenterFromViewController(Ljava/lang/String;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "func"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "openManager"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "open_manager_start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 1479
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1486
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    const/16 v1, 0x3ed

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x66

    invoke-virtual {v0, v1, p1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;->onFailure(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private processCurrentUser(Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v2, "result"

    .line 1495
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    const-string v1, "uid"

    .line 1497
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->uid:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 1498
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->token:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    .line 1499
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->deviceId:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "security_email"

    .line 1500
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->securityEmail:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "authType"

    .line 1502
    iget v2, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "authName"

    .line 1503
    iget v2, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1505
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    .line 1506
    iget-object v1, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1507
    :goto_1
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 1508
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v3

    aput v3, v2, v1

    .line 1509
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1511
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1512
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_2
    const-string v4, ","

    if-ge v3, v2, :cond_3

    :try_start_1
    aget v5, v1, v3

    .line 1513
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1514
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "boundTypes"

    .line 1518
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1521
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    .line 1522
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1523
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string v0, "boundNames"

    .line 1527
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1530
    :cond_6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFuncCall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private readOriginPublishArea()V
    .locals 5

    .line 245
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "MIDDLE_EAST_PUBLISH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    .line 247
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    const/4 v4, 0x3

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPublishArea(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    .line 249
    iget v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    if-ne v0, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    .line 250
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 252
    :cond_2
    iput v4, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    .line 254
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishArea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isMiddleEastPublish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isMiddleEastPublish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetGameLanguage()V
    .locals 2

    .line 861
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLanguage()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v0

    .line 862
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    if-eq v1, v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->resetGameLanguage(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private resetProp()V
    .locals 2

    const-string v0, "USR_NAME"

    const/4 v1, 0x0

    .line 2155
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetCommonProp()V

    return-void
.end method

.method private varargs saveClientLog([Ljava/lang/String;)V
    .locals 5

    .line 2127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 2129
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x0

    .line 2130
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    .line 2131
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2134
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK netease_global"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setLoginType(Lcom/netease/mpay/oversea/User;)V
    .locals 9

    .line 1762
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    .line 1763
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    .line 1764
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->boundIds:Ljava/lang/String;

    const-string v1, "GLOBAL_BOUND_IDS"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1766
    :goto_0
    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v3, v3

    const-string v4, ","

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    .line 1767
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    iget-object v6, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v6, v6, v2

    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v6

    aput v6, v3, v2

    .line 1768
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v6, v6, v2

    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1769
    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1770
    iget-object v3, p1, Lcom/netease/mpay/oversea/User;->boundTypes:[I

    array-length v3, v3

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_0

    .line 1771
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1774
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SAUTH_LOGIN_TYPE"

    .line 1776
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    :cond_2
    iget v0, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthType(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginType:I

    .line 1779
    iget v0, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginTypeName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1780
    iget-object v0, p1, Lcom/netease/mpay/oversea/User;->nickName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v2, "USR_NAME"

    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1782
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypes:[I

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_5

    aget v7, v2, v6

    .line 1783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 1784
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1788
    :cond_5
    iget-object v2, p1, Lcom/netease/mpay/oversea/User;->securityEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "SECURITY_EMAIL"

    const-string v6, "SECURITY_EMAIL_SET"

    if-eqz v2, :cond_6

    .line 1789
    invoke-virtual {p0, v6, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    const-string p1, ""

    .line 1790
    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1792
    :cond_6
    invoke-virtual {p0, v6, v5}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 1793
    iget-object p1, p1, Lcom/netease/mpay/oversea/User;->securityEmail:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BOUND_TYPES"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1797
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBoundTypeNames:[Ljava/lang/String;

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 1798
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 1799
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1803
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BOUND_TYPES_NAME"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unBind()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "unBind"

    .line 758
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v1, :cond_0

    const-string v1, "SDK is uninitialized!"

    .line 760
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    .line 763
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mUnbindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniUnbindCallback;

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->unBind(ILcom/netease/mpay/oversea/UnBindCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateProtocolSilentMode()V
    .locals 3

    .line 2357
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->isProtocolSilentMode()Z

    move-result v1

    const-string v2, "PROTOCOL_SILENT_MODE"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public DRPF(Ljava/lang/String;)I
    .locals 0

    .line 2111
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->DRPF(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 7

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOrder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " checkOrder"

    if-eqz v2, :cond_0

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 598
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->PAY_CHANNELS_ORDER:[Ljava/lang/String;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 599
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-eqz v0, :cond_4

    const-string v0, "netease_global payment-wall"

    .line 608
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;-><init>()V

    .line 610
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setCurrency(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 611
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setGoodsCount(I)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 612
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setGoodsID(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 613
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setGoodsName(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 614
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setOrderID(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 615
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setPrice(F)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 616
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setOrderInfo(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    const-string v1, "USE_BOACOMPRA_PAYMENT"

    .line 617
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    .line 618
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->setPayMethod(I)Lcom/netease/mpay/oversea/PaymentRequest$Builder;

    .line 621
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->build()Lcom/netease/mpay/oversea/PaymentRequest;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->pay(Lcom/netease/mpay/oversea/PaymentRequest;Lcom/netease/mpay/oversea/PaymentCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 650
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public displayAchievement()V
    .locals 2

    .line 1988
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->displayAchievement()V

    :cond_0
    return-void
.end method

.method public displayLeaderboard(Ljava/lang/String;)V
    .locals 2

    .line 1981
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->displayLeaderboard(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public displayQuests([I)V
    .locals 2

    .line 2009
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->displayQuests([I)V

    :cond_0
    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "WRITE_EXTERNAL_STORAGE"

    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "getLastLoginType"

    const-string v3, "system"

    .line 970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extendFunc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniSDK netease_global"

    invoke-static {v5, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v4, :cond_0

    const-string v1, "sdk not init successfully"

    .line 972
    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 976
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "methodId"

    .line 977
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkConfig()V

    const-string v6, "setLanguage"

    .line 979
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "hideRegisterBirthdayCloseButton"

    const-string v8, "debug"

    const-string v9, "appChannel"

    const-string v10, "host"

    const-string v11, "gameId"

    const-string v12, "path"

    const-string v13, "hideLoginCloseButton"

    const-string v14, "JF_GAMEID"

    const-string v15, ""

    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-nez v6, :cond_30

    :try_start_1
    const-string v6, "setFontPath"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v6, "enableRequestSdcardPermission"

    .line 1018
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "ENABLE_REQUEST_SDCARD_PERMISSION"

    .line 1019
    invoke-virtual {v0, v1, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 1020
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableRequestSdcardPermission(Z)V

    goto/16 :goto_e

    :cond_3
    const-string v6, "enableRTL"

    .line 1021
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v1, "enabled"

    const/4 v2, 0x0

    .line 1023
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isForceRTL:Z

    .line 1024
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "ENABLE_RTL"

    iget-boolean v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isForceRTL:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 1025
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-boolean v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isForceRTL:Z

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setRLTLayout(Z)V

    .line 1026
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->changeGameLanguage(Landroid/app/Activity;)V

    goto/16 :goto_e

    :cond_5
    const-string v6, "setSpwd"

    .line 1027
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1028
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSecondPwd(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    :cond_6
    const-string v6, "updateUserProfile"

    .line 1029
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1031
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateAgeInfo(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    :cond_7
    const-string v6, "generateMigrateCode"

    .line 1032
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1033
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$4;

    invoke-direct {v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$4;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->generateMigrateCode(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    :cond_8
    const-string v6, "getThirdPartyCredentials"

    .line 1060
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x0

    .line 1061
    invoke-direct {v0, v4, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto/16 :goto_e

    :cond_9
    const-string v6, "isThirdPartyAuthValid"

    .line 1063
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1064
    invoke-direct {v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isThirdPartyAuthValid(Lorg/json/JSONObject;)V

    goto/16 :goto_e

    :cond_a
    const-string v6, "guestBind"

    .line 1066
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->guestBind()V

    goto/16 :goto_e

    :cond_b
    const-string v6, "guestLogin"

    .line 1068
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v1, "CLEAR_GUEST_WHEN_LOGOUT"

    const/4 v2, 0x0

    .line 1072
    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 1074
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    .line 1076
    :cond_c
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v3, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->channelLogin(ILcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    :cond_d
    const-string v6, "unBind"

    .line 1078
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    const-string v6, "guestUnbind"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_7

    :cond_e
    const-string v6, "shouldAutoLogin"

    .line 1081
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1082
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$5;

    invoke-direct {v2, v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$5;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->shouldAutoLogin(Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V

    goto/16 :goto_e

    .line 1094
    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1095
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLastLoginType()I

    move-result v1

    .line 1098
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getUniAuthTypeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "result"

    .line 1099
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFuncCall(Ljava/lang/String;)V

    .line 1102
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "lastTypeValue"

    .line 1103
    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastTypeName"

    .line 1104
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "func"

    const/4 v6, 0x0

    aput-object v5, v1, v6

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "step"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "getLastLoginTypeDone"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "rawInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 1108
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1105
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_10
    const-string v2, "openFeedback"

    .line 1114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1115
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$6;

    invoke-direct {v2, v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$6;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openFeedback(Lcom/netease/mpay/oversea/FeedbackCallback;)V

    goto/16 :goto_e

    :cond_11
    const-string v2, "uploadEmail"

    .line 1137
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1138
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$UploadEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e

    :cond_12
    const-string v2, "loginNewGuest"

    .line 1139
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1140
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    :cond_13
    const-string v2, "setSkin"

    .line 1141
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "SKIN_TYPE"

    .line 1142
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set skin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1146
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSkinPath(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_14
    const-string v2, "enablePermissionRetry"

    .line 1149
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "shouldRetry"

    .line 1150
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1151
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enablePermissionRetry(Z)V

    goto/16 :goto_e

    :cond_15
    const-string v2, "enableSaveImageData"

    .line 1152
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v1, "enable"

    .line 1153
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1154
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableSaveImageData(Z)V

    goto/16 :goto_e

    :cond_16
    const-string v2, "getCurrentUser"

    .line 1155
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1156
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getCurrentUser()Lcom/netease/mpay/oversea/User;

    move-result-object v1

    .line 1157
    invoke-direct {v0, v1, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->processCurrentUser(Lcom/netease/mpay/oversea/User;Lorg/json/JSONObject;)V

    goto/16 :goto_e

    :cond_17
    const-string v2, "presentUserCenter"

    .line 1158
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "key"

    if-eqz v2, :cond_18

    .line 1159
    :try_start_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->presentUserCenter(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_18
    const-string v2, "presentUserCenterDynamicEntry"

    .line 1161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1162
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->presentUserCenter(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_19
    const-string v2, "setGameRegion"

    .line 1164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v1, "isoCode"

    .line 1165
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1166
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setGameRegionISOCode(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1a
    const-string v2, "refreshUser"

    .line 1167
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1168
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;

    invoke-direct {v2, v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$7;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->refresh(Lcom/netease/mpay/oversea/RefreshCallback;)V

    goto/16 :goto_e

    :cond_1b
    const-string v2, "updateConfig"

    .line 1193
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1194
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-virtual {v4, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1196
    iget-boolean v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    if-eqz v1, :cond_1c

    iget v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/GameConfig;->getDefaultDomain(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1c
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v2, v2, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    invoke-virtual {v4, v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1198
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-boolean v2, v2, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    invoke-virtual {v4, v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const/4 v2, 0x0

    .line 1199
    invoke-virtual {v4, v13, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenCloseBtn()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_3

    :cond_1d
    const/4 v3, 0x0

    .line 1200
    :cond_1e
    :goto_3
    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1201
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v4, v4, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    .line 1202
    new-instance v6, Lcom/netease/mpay/oversea/GameConfig;

    iget-object v7, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    move-object v15, v6

    move-object/from16 v18, v1

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v20}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object v6, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 1203
    iget-object v6, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iput-object v4, v6, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    .line 1204
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v4, v2}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 1205
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide_login_close_button: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V

    .line 1209
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    goto/16 :goto_e

    :cond_1f
    const-string v2, "setForbidChannels"

    .line 1211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v1, "channels"

    .line 1212
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1213
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    const-string v1, "FORBID_CHANNELS"

    .line 1214
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1215
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_6

    .line 1220
    :cond_21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 1221
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_23

    .line 1222
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 1223
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_5

    .line 1226
    :cond_22
    invoke-direct {v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v6

    .line 1227
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    .line 1228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1230
    :cond_23
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v3, v1}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 1234
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/GameConfig;->setForbidChannels([Ljava/lang/Integer;)V

    .line 1235
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    goto/16 :goto_e

    :cond_24
    :goto_6
    const-string v1, "please pass channels"

    .line 1216
    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    const-string v2, "setSoundVolume"

    .line 1236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v1, "volume"

    const-string v2, "1"

    .line 1237
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1239
    :try_start_3
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSoundVolume(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_e

    .line 1241
    :catch_0
    :try_start_4
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSoundVolume(F)V

    goto/16 :goto_e

    .line 1243
    :cond_26
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1244
    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1245
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 1246
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    const-string v1, "hide_login_close_button: true"

    .line 1247
    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    goto/16 :goto_e

    .line 1249
    :cond_27
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v1, "hidden"

    .line 1250
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 1251
    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1252
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 1253
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenRegisterBirthdayCloseBtn(Z)V

    const-string v1, "hideRegisterBirthdayCloseButton:true"

    .line 1254
    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V

    goto/16 :goto_e

    :cond_28
    const-string v2, "needTransferPNGuest"

    .line 1257
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1258
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/netease/ntunisdk/SdkNeteaseGlobal$8;

    invoke-direct {v4, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$8;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/netease/mpay/oversea/MpayOverseaApi;->needTransferPNGuest(Landroid/app/Activity;Lcom/netease/mpay/oversea/Callback;)V

    goto/16 :goto_e

    :cond_29
    const-string v2, "transferPNGuest"

    .line 1278
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1279
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->transferPNGuest(Landroid/app/Activity;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto/16 :goto_e

    :cond_2a
    const-string v2, "openLVU"

    .line 1280
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v2, :cond_2b

    :try_start_5
    const-string v1, "orderInfo"

    const-string v2, "{}"

    .line 1282
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1283
    invoke-static {v1}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;

    move-result-object v1

    .line 1284
    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;

    invoke-direct {v3, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openLVU(Lcom/netease/mpay/oversea/OnLVUCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_e

    :cond_2b
    :try_start_6
    const-string v2, "registerBirthday"

    .line 1302
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v2, :cond_2d

    .line 1304
    :try_start_7
    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$10;

    invoke-direct {v2, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$10;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)V

    .line 1357
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v4, "MINOR_STATUS"

    const/16 v5, 0x12c

    invoke-interface {v1, v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x12c

    if-eq v1, v4, :cond_2c

    const/16 v4, 0x12d

    if-eq v1, v4, :cond_2c

    const-string v1, "You have registered birthday!"

    .line 1359
    invoke-interface {v2, v3, v1}, Lcom/netease/mpay/oversea/OnCPTCallback;->onFailed(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 1361
    :cond_2c
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openCPT(Lcom/netease/mpay/oversea/OnCPTCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_e

    :cond_2d
    :try_start_8
    const-string v2, "registerBirthdayForPay"

    .line 1366
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "region"

    .line 1368
    invoke-virtual {v4, v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1369
    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v3, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setGameRegion(Ljava/lang/String;)V

    .line 1370
    new-instance v2, Lcom/netease/ntunisdk/SdkNeteaseGlobal$11;

    invoke-direct {v2, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$11;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)V

    .line 1413
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openCPTByPay(Lcom/netease/mpay/oversea/OnCPTCallback;)V

    goto/16 :goto_e

    :cond_2e
    const-string v2, "showAASDialog"

    .line 1416
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "message"

    .line 1417
    invoke-virtual {v4, v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra"

    .line 1418
    invoke-virtual {v4, v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->showAASDialog(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    .line 1079
    :cond_2f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->unBind()V

    goto/16 :goto_e

    :cond_30
    :goto_8
    move-object/from16 v1, v16

    .line 981
    invoke-virtual {v4, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 982
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 983
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 984
    iput-object v15, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    goto :goto_9

    :cond_31
    const-string v1, "/"

    .line 986
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "assets"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    goto :goto_9

    .line 989
    :cond_32
    iput-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    .line 992
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fontPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/GameLanguage;->setFontPath(Ljava/lang/String;)V

    goto :goto_a

    .line 995
    :cond_33
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 996
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCachedFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/GameLanguage;->setFontPath(Ljava/lang/String;)V

    .line 999
    :cond_34
    :goto_a
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-virtual {v4, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1001
    iget-boolean v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isPublishAreaChanged:Z

    if-eqz v1, :cond_35

    iget v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/GameConfig;->getDefaultDomain(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_35
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    :goto_b
    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1002
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    invoke-virtual {v4, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1003
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const/4 v1, 0x0

    .line 1004
    invoke-virtual {v4, v13, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenCloseBtn()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_c

    :cond_36
    const/4 v1, 0x0

    goto :goto_d

    :cond_37
    :goto_c
    const/4 v1, 0x1

    :goto_d
    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenRegisterBirthdayCloseBtn()Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_38
    const/4 v2, 0x1

    .line 1006
    :cond_39
    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1007
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v4, v4, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    .line 1008
    new-instance v6, Lcom/netease/mpay/oversea/GameConfig;

    iget-object v7, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    move-object v15, v6

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v20}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object v6, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 1009
    iget-object v6, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iput-object v4, v6, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    .line 1010
    iget-object v4, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v4, v3}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 1011
    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v3, v1}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenCloseBtn(Z)V

    .line 1012
    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v3, v2}, Lcom/netease/mpay/oversea/GameConfig;->setHiddenRegisterBirthdayCloseBtn(Z)V

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hidden_close_button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideRegisterBirthdayCloseButton: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V

    .line 1016
    iget-object v1, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :catchall_0
    :cond_3a
    :goto_e
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v0, :cond_0

    const-string p1, "sdk not init successfully"

    .line 948
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 952
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 953
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "updateActivity"

    .line 954
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 955
    array-length p1, p2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 956
    aget-object v0, p2, p1

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActivity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    aget-object p1, p2, p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateActivity(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 963
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAuthType()I
    .locals 1

    .line 926
    iget v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginType:I

    return v0
.end method

.method public getAuthTypeName()Ljava/lang/String;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_global"

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "UniSDK netease_global"

    const-string v2, "SDK is uninitialized!"

    .line 539
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DEVICE_ID"

    .line 544
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getJfPaylMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 567
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLineGameAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UniSDK netease_global"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sub_channel"

    const-string v2, "line"

    .line 570
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJfPaylMap mid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "getJfPaylMap mid: 0"

    .line 573
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public getJfQueryOrderlMap(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/base/OrderInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 581
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "line_region"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->getLineGameAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getJfQueryOrderlMap mid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->lineGameMid:Ljava/lang/String;

    const-string v1, "mid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, "not_login"

    if-nez v0, :cond_0

    const-string v0, "UniSDK netease_global"

    const-string v2, "SDK is uninitialized!"

    .line 525
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SESSION"

    .line 530
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "UniSDK netease_global"

    const-string v2, "SDK is uninitialized!"

    .line 553
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UIN"

    .line 558
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.9.0"

    return-object v0
.end method

.method public getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guestBind()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "bind guest"

    .line 735
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v1, :cond_0

    const-string v1, "SDK is uninitialized!"

    .line 737
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BIND_TYPE"

    .line 740
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openBindCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 745
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v1

    .line 746
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->is3rdLibValid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 747
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mBindCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$SingleBindCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->bind(ILcom/netease/mpay/oversea/MpayBindCallback;)V

    goto :goto_0

    :cond_2
    const-string v1, "library not support this channel bind type"

    .line 749
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 753
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public handleOnWindowFocusChanged(Z)V
    .locals 1

    .line 851
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->handleOnWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 853
    sget-object p1, Lcom/netease/mpay/oversea/GameLanguage;->AR:Lcom/netease/mpay/oversea/GameLanguage;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isForceRTL:Z

    if-eqz p1, :cond_1

    .line 854
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->changeGameLanguage(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 4

    .line 2117
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "facebook_sdk"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2120
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v3, "twitter"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 2121
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->hasPlatform(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    const/4 v0, 0x1

    :cond_3
    :goto_2
    return v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 11

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try netease init current thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v2, "FEATURE_HAS_GUEST"

    .line 144
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_GUEST_BIND"

    .line 145
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_SHARE"

    .line 146
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_NEED_UNITED_LOGIN"

    .line 147
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_QUERYSKUDETAILS"

    .line 148
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_ACHIEVEMENT"

    .line 149
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_MANAGER"

    .line 150
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_SWITCH_ACCOUNT"

    .line 151
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_LOGOUT"

    .line 152
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_FRIEND"

    .line 153
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_RANK"

    .line 154
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_LVU_DIALOG"

    .line 155
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "MODE_HAS_MCOUNT_CLIENT_LOG_INITED"

    .line 156
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setFeature(Ljava/lang/String;Z)V

    .line 158
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->configMpayHosts()V

    const-string v2, "JF_GAMEID"

    .line 160
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    const-string v2, "APPID"

    .line 162
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "DOMAIN"

    .line 163
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "WRITE_EXTERNAL_STORAGE"

    .line 164
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeExternalStorage: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isGoogleGamesV2Available()Z

    move-result v3

    const-string v5, "GOOGLE_PGS_V2_ENABLE"

    invoke-virtual {p0, v5, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 167
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_1

    const-string v3, "http://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 168
    :goto_0
    iget-boolean v5, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->debugMode:Z

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    const/4 v8, 0x0

    .line 169
    invoke-virtual {v7, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "netease_global_debug_on"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-eqz v2, :cond_4

    const-string v5, "1"

    .line 170
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isNeedWriteExternalStorage:Z

    .line 171
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->readOriginPublishArea()V

    .line 172
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkConfig()V

    if-nez v3, :cond_5

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", use default,publishArea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getAppChannel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-static {v4, v2, v3, v10}, Lcom/netease/mpay/oversea/GameConfig;->genDefaultConfig(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)Lcom/netease/mpay/oversea/GameConfig;

    move-result-object v2

    iget v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->publishArea:I

    .line 177
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/GameConfig;->setPublishArea(I)Lcom/netease/mpay/oversea/GameConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 178
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    goto :goto_4

    .line 180
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use custom domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v2, Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getAppChannel()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->currentGameLanguage:Lcom/netease/mpay/oversea/GameLanguage;

    move-object v3, v2

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    .line 182
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->jfGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    .line 184
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsGameId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v3, v3, Lcom/netease/mpay/oversea/GameConfig;->jfGameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->initClientLog()V

    .line 186
    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mGameConfig:Lcom/netease/mpay/oversea/GameConfig;

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/oversea/MpayOverseaApi;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/GameConfig;)V

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    .line 187
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mMonitorCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$MonitorCallback;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->addTraceCallback(Lcom/netease/mpay/oversea/trackers/Monitor$Callback;)Lcom/netease/mpay/oversea/MpayOverseaApi;

    .line 188
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->initMCountTracker()V

    const/4 v2, -0x1

    const-string v3, "SCR_ORIENTATION"

    .line 190
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v3, v2, :cond_c

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SCR_ORIENTATION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v8, 0x6

    if-ne v3, v7, :cond_6

    const/4 v3, 0x6

    goto :goto_5

    :cond_6
    if-ne v3, v8, :cond_7

    const/4 v3, 0x7

    goto :goto_5

    :cond_7
    if-ne v3, v0, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    if-ne v3, v5, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    if-ne v3, v4, :cond_a

    const/16 v3, 0x8

    goto :goto_5

    :cond_a
    if-ne v3, v6, :cond_b

    const/4 v3, 0x4

    goto :goto_5

    :cond_b
    const/4 v3, -0x1

    :goto_5
    if-eq v3, v2, :cond_c

    .line 210
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setOrientation(I)V

    .line 214
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v1, v10}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableDebugMode(Z)V

    .line 217
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->isNeedWriteExternalStorage:Z

    if-eqz v1, :cond_d

    .line 218
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableRequestSdcardPermission(Z)V

    goto :goto_7

    :cond_d
    const-string v1, "ENABLE_REQUEST_SDCARD_PERMISSION"

    .line 220
    invoke-virtual {p0, v1, v9}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-ne v1, v0, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->enableRequestSdcardPermission(Z)V

    .line 224
    :goto_7
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->myCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "line_region"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SKIN_TYPE"

    .line 227
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 229
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setSkinPath(Ljava/lang/String;)V

    :cond_f
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "func"

    aput-object v2, v1, v9

    const-string v2, "init"

    aput-object v2, v1, v0

    const-string v0, "step"

    aput-object v0, v1, v5

    const-string v0, "onInitDone"

    aput-object v0, v1, v4

    .line 232
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 237
    invoke-interface {p1, v9}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_10
    return-void
.end method

.method public isBinded(Ljava/lang/String;)Z
    .locals 0

    .line 775
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->hasAuthTypeName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public login()V
    .locals 11

    const-string v0, "login"

    const-string v1, "UniSDK netease_global"

    .line 657
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MINOR_STATUS"

    const/16 v3, 0x66

    .line 658
    invoke-virtual {p0, v2, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 659
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, ""

    const-string v4, "MINOR_ISO_CODE"

    invoke-interface {v2, v4, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v2, :cond_0

    const-string v0, "SDK is uninitialized!"

    .line 661
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 665
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "methodId"

    const-string v5, "updateProtocolConfig"

    .line 666
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :catch_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkConfig()V

    :try_start_1
    const-string v2, "AUTO_LINK_ACCOUNT"

    const/4 v4, 0x1

    .line 672
    invoke-virtual {p0, v2, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 673
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTO_LINK_ACCOUNT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v6, v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setAcceptLinkAccount(Z)V

    const-string v2, "LOGIN_TYPE"

    .line 675
    invoke-virtual {p0, v2, v5}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    goto :goto_1

    .line 713
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 710
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->migrateCodeLogin(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 701
    :cond_4
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getMpayLoginType(Ljava/lang/String;)I

    move-result v9

    .line 702
    invoke-direct {p0, v9}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->is3rdLibValid(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 703
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v10, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9, v10}, Lcom/netease/mpay/oversea/MpayOverseaApi;->channelLogin(ILcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    :cond_5
    const-string v9, "library not support this channel login type"

    .line 705
    invoke-static {v1, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 682
    :cond_6
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v9, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;

    invoke-direct {v9, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$3;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->shouldAutoLogin(Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V

    goto :goto_1

    .line 678
    :cond_7
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v9, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v1, v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->login(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    :goto_1
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v9, "func"

    aput-object v9, v1, v5

    aput-object v0, v1, v4

    const-string v0, "step"

    aput-object v0, v1, v8

    const-string v0, "login_start"

    aput-object v0, v1, v7

    const-string v0, "loginType"

    aput-object v0, v1, v6

    const/4 v0, 0x5

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public logout()V
    .locals 4

    const-string v0, "logout"

    const-string v1, "UniSDK netease_global"

    .line 871
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v2, :cond_0

    const-string v0, "SDK is uninitialized!"

    .line 873
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 877
    :cond_0
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->logout()V

    const/16 v1, 0x66

    const-string v2, "MINOR_STATUS"

    .line 878
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->setPropInt(Ljava/lang/String;I)V

    .line 879
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "MINOR_ISO_CODE"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->resetCommonProp()V

    const/4 v1, 0x0

    .line 881
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->logoutDone(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "func"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string v1, "step"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "logoutDone"

    aput-object v1, v2, v0

    .line 882
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method public openManager()V
    .locals 6

    const-string v0, "UniSDK netease_global"

    const-string v1, "user center"

    .line 780
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    if-nez v1, :cond_0

    const-string v1, "SDK is uninitialized!"

    .line 782
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkConfig()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "AUTO_LINK_ACCOUNT"

    .line 787
    invoke-virtual {p0, v3, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 788
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_LINK_ACCOUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->setAcceptLinkAccount(Z)V

    .line 790
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "MINOR_STATUS"

    const/16 v4, 0x12c

    invoke-interface {v0, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 791
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v3, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateMinorStatus(I)V

    .line 792
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mCenterCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$CenterCallback;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openUserCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "func"

    aput-object v3, v0, v1

    const-string v1, "openManager"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "open_manager_start"

    aput-object v2, v0, v1

    .line 796
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method public queryAvailablesInvitees()V
    .locals 2

    .line 2075
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "facebook_sdk"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryAvailablesInvitees()V

    :cond_0
    return-void
.end method

.method public queryFriendList()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "queryFriendList"

    .line 2016
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH_CHANNEL"

    const-string v2, "facebook"

    .line 2017
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    .line 2018
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linegame queryFriendList"

    .line 2019
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2021
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 2023
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$18;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$18;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "no pack linegame"

    .line 2033
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2036
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fb queryFriendList"

    .line 2037
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryFriendList()V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryFriendListInGame()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "queryFriendListInGame"

    .line 2045
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH_CHANNEL"

    const-string v2, "facebook"

    .line 2046
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    .line 2047
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linegame queryFriendListInGame"

    .line 2048
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2050
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 2052
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$19;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$19;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "no pack linegame"

    .line 2063
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2066
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fb queryFriendListInGame"

    .line 2067
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryFriendListInGame()V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryMyAccount()V
    .locals 3

    const-string v0, "UniSDK netease_global"

    const-string v1, "queryMyAccount"

    .line 2082
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH_CHANNEL"

    const-string v2, "facebook"

    .line 2083
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "linegame"

    .line 2084
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "linegame queryMyAccount"

    .line 2085
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2087
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 2089
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$20;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$20;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "no pack linegame"

    .line 2099
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2102
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fb queryMyAccount"

    .line 2103
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->queryMyAccount()V

    :cond_2
    :goto_0
    return-void
.end method

.method public queryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
    .locals 0

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->debugMode:Z

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 3

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->obj2JsonStr(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_7

    const/16 v2, 0xca

    if-eq v0, v2, :cond_5

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_5

    const/16 v2, 0x132

    if-eq v0, v2, :cond_5

    const/16 v2, 0x133

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    const-string p1, "\u6ca1\u6709\u8bbe\u7f6e\u5206\u4eab\u6e20\u9053\uff1ashareInfo.setShareChannel"

    .line 1698
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1671
    :pswitch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "line"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u6ca1\u6709\u6253\u5305line sdk"

    .line 1674
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    const-string v2, "kakao"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6ca1\u6709\u6253\u5305kakao sdk"

    .line 1666
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "NT_SHARE_TYPE_LINE_GAME"

    .line 1679
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->sdkInstMap:Ljava/util/Map;

    const-string v2, "linegame"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1681
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "getThirdPartyCredentials"

    .line 1683
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :catch_0
    new-instance v1, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$16;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/ShareInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getThirdPartyCredentials(Lorg/json/JSONObject;Lcom/netease/ntunisdk/SdkNeteaseGlobal$UniThirdPartyCredentialsCallback;)V

    goto :goto_0

    :cond_4
    const-string p1, "no pack linegame"

    .line 1693
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "twitter"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1656
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_6
    const-string p1, "\u6ca1\u6709\u6253\u5305twitter sdk"

    .line 1658
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1645
    :cond_7
    :pswitch_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v2, "facebook_sdk"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1646
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_8
    const-string p1, "\u6ca1\u6709\u6253\u5305facebook sdk"

    .line 1648
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected showAASDialog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "UniSDK netease_global"

    const-string v1, "showAASDialog enter"

    .line 1427
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAASDialog message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    new-instance v5, Lcom/netease/ntunisdk/SdkNeteaseGlobal$12;

    invoke-direct {v5, p0, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$12;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Ljava/lang/String;)V

    new-instance v7, Lcom/netease/ntunisdk/SdkNeteaseGlobal$13;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal$13;-><init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/netease/mpay/oversea/MpayOverseaApi;->showAASDialog(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p1

    return p1
.end method

.method public switchAccount()V
    .locals 5

    const-string v0, "switchAccount"

    const-string v1, "UniSDK netease_global"

    .line 504
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mLoginCallback:Lcom/netease/ntunisdk/SdkNeteaseGlobal$LoginCallback;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/MpayOverseaApi;->presentAccountSwitch(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "func"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "step"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "switchAccount_start"

    aput-object v3, v2, v0

    .line 507
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 4

    .line 895
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    const-string v1, "UniSDK netease_global"

    if-nez v0, :cond_0

    const-string v0, "SDK not init."

    .line 896
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "call upLoadUserInfo..."

    .line 899
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "USERINFO_UID"

    .line 901
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "role_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_NAME"

    .line 902
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nickname"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_GRADE"

    .line 903
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "grade"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_HOSTID"

    .line 904
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "host_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_HOSTNAME"

    .line 905
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "host_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_ROLE_TYPE_ID"

    .line 906
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_ROLE_TYPE_NAME"

    .line 907
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_MENPAI_ID"

    .line 908
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "menpai_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_MENPAI_NAME"

    .line 909
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "menpai_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_CAPABILITY"

    .line 910
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "capability"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_VIP"

    .line 911
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vip"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_GANG_ID"

    .line 912
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gang_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "USERINFO_ORG"

    .line 913
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gang_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "region_id"

    .line 914
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "region_name"

    .line 915
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->mSdkInstance:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->getLoginUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->syncRoleInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upLoadUserInfo roleInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "func"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "upLoadUserInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "step"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "uploadUserInfo_start"

    aput-object v2, v0, v1

    .line 918
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->saveClientLog([Ljava/lang/String;)V

    return-void
.end method

.method public updateAchievement(Ljava/lang/String;I)V
    .locals 2

    .line 1995
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->updateAchievement(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateEvent(Ljava/lang/String;I)V
    .locals 2

    .line 2002
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->updateEvent(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 2

    .line 1970
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    const-string v1, "google"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/SdkBase;->updateRank(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method
