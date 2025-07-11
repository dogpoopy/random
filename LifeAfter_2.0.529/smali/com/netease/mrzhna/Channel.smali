.class public Lcom/netease/mrzhna/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;
.implements Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
.implements Lcom/netease/ntunisdk/base/OnLeaveSdkListener;
.implements Lcom/netease/ntunisdk/base/OnContinueListener;
.implements Lcom/netease/ntunisdk/base/OnWebViewListener;
.implements Lcom/netease/ntunisdk/base/OnExitListener;
.implements Lcom/netease/ntunisdk/base/OnShareListener;
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;
.implements Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;
.implements Lcom/netease/ntunisdk/base/OnQRCodeListener;
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;
.implements Lcom/netease/ntunisdk/base/QueryFriendListener;


# static fields
.field private static final JAVA_VERSION:I = 0x1

.field private static final MAX_SHARE_SIZE:I = 0x500

.field public static final SOCIAL_DOUYIN:I = 0x7

.field public static final SOCIAL_FACEBOOK:I = 0x4

.field public static final SOCIAL_GODLIKE:I = 0x6

.field public static final SOCIAL_INS:I = 0xc

.field public static final SOCIAL_LINE:I = 0x9

.field public static final SOCIAL_QQ:I = 0x8

.field public static final SOCIAL_SINA_WEIBO:I = 0x2

.field public static final SOCIAL_TIKTOK:I = 0xa

.field public static final SOCIAL_TWITTER:I = 0x5

.field public static final SOCIAL_VK:I = 0xb

.field public static final SOCIAL_WEIXIN:I = 0x3

.field public static final SOCIAL_YIXIN:I = 0x1

.field private static final THUMB_SIZE:I = 0x96

.field private static s_instance:Lcom/netease/mrzhna/Channel;


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_is_init:Z

.field private m_is_initializing:Z

.field private m_pre_login_suc_time:J

.field private m_pre_login_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_init:Z

    .line 32
    iput-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_initializing:Z

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/netease/mrzhna/Channel;->m_pre_login_time:J

    .line 34
    iput-wide v0, p0, Lcom/netease/mrzhna/Channel;->m_pre_login_suc_time:J

    .line 65
    iput-object p1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 67
    sput-object p0, Lcom/netease/mrzhna/Channel;->s_instance:Lcom/netease/mrzhna/Channel;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/Channel;Ljava/lang/String;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/Channel;->isChannel(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/Channel;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/mrzhna/Channel;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/netease/mrzhna/Channel;->m_is_init:Z

    return p1
.end method

.method static synthetic access$302(Lcom/netease/mrzhna/Channel;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/netease/mrzhna/Channel;->m_is_initializing:Z

    return p1
.end method

.method private checkShareBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    return-object p1

    .line 937
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 938
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/high16 v2, 0x44a00000    # 1280.0f

    .line 940
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 946
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 947
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method private static getAnimation(FFJ)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .line 217
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 218
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/netease/mrzhna/Channel;
    .locals 2

    const-class v0, Lcom/netease/mrzhna/Channel;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/netease/mrzhna/Channel;->s_instance:Lcom/netease/mrzhna/Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getThumbBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    return-object p1

    .line 963
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 964
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/high16 v2, 0x43160000    # 150.0f

    .line 966
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x1

    .line 971
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private isChannel(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static json2Map(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static popStartup(Landroid/content/Context;)V
    .locals 5

    .line 184
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 185
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "sdk_startup_logo"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 190
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    .line 195
    invoke-static {p0, v2, v3, v4}, Lcom/netease/mrzhna/Channel;->getAnimation(FFJ)Landroid/view/animation/AlphaAnimation;

    move-result-object p0

    .line 196
    new-instance v2, Lcom/netease/mrzhna/Channel$2;

    invoke-direct {v2, v0}, Lcom/netease/mrzhna/Channel$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    new-instance v0, Lcom/netease/mrzhna/Channel$3;

    invoke-direct {v0, v1, p0}, Lcom/netease/mrzhna/Channel$3;-><init>(Landroid/widget/ImageView;Landroid/view/animation/AlphaAnimation;)V

    .line 212
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x7d0

    .line 213
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showProtocol(Z)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    return-void
.end method


# virtual methods
.method public DRPF(Ljava/lang/String;)I
    .locals 1

    .line 633
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->DRPF(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public GetMobileLanguage()Ljava/lang/String;
    .locals 3

    const-string v0, "ldd"

    const-string v1, "language"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldd language\uff1a"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public OnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 430
    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnWebViewCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Setlanguage()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/netease/mrzhna/Channel;->GetMobileLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "en"

    if-eqz v1, :cond_0

    const-string v0, "cn"

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fr"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "de"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ru"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ko"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 170
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "LANGUAGE_CODE"

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public antiAddiction(Ljava/lang/String;)V
    .locals 1

    .line 602
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntAntiAddiction(Ljava/lang/String;)V

    return-void
.end method

.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 0

    .line 988
    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnCodeScannerFinish(ILjava/lang/String;)V

    return-void
.end method

.method public continueGame()V
    .locals 0

    return-void
.end method

.method public createQRCode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 684
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public createQRCodeDone(Ljava/lang/String;)V
    .locals 0

    .line 993
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnCreateQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method public exitApp()V
    .locals 1

    .line 481
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnExitApp()V

    const-string v0, "quicksdk"

    .line 482
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Channel;->isChannel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    check-cast v0, Landroid/app/NativeActivity;

    .line 486
    invoke-virtual {v0}, Landroid/app/NativeActivity;->finish()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 1

    .line 694
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    return-void
.end method

.method public gameLoginSuccess()V
    .locals 1

    .line 658
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGameLoginSuccess()V

    return-void
.end method

.method public getAnnouncementInfo()V
    .locals 1

    .line 412
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetAnnouncementInfo()V

    return-void
.end method

.method public getAuthType()I
    .locals 1

    .line 538
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAuthType()I

    move-result v0

    return v0
.end method

.method public getAvailablePayChannels()Ljava/lang/String;
    .locals 2

    .line 638
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/Channel;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getChannelJavaVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .locals 1

    .line 648
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 306
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovo_open"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "APPID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1409170819125.app.ln"

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "lenovo_preinstall"

    :cond_0
    return-object v0
.end method

.method public getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 653
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 674
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 1

    .line 359
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UID"

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "UIN"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 373
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2

    .line 663
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 669
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guestBind()V
    .locals 1

    .line 407
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGuestBind()V

    return-void
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1

    .line 628
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasLogin()Z
    .locals 1

    .line 301
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasPlatform(I)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 730
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Facebook"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 732
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Twitter"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x6

    const-string v1, "[ngshare]"

    if-ne p1, v0, :cond_2

    const-string p1, "NgHasPlatform Godlike"

    .line 734
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Godlike"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    const-string p1, "NgHasPlatform Douyin"

    .line 738
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "douyinshare"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    const-string p1, "NgHasPlatform QQ"

    .line 742
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "QQ"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const-string p1, "NgHasPlatform wechat"

    .line 746
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Weixin"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "NgHasPlatform yixin"

    .line 750
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Yixin"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    const-string p1, "NgHasPlatform weibo"

    .line 754
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Weibo"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    const/16 v2, 0x9

    if-ne p1, v2, :cond_8

    const-string p1, "NgHasPlatform Line"

    .line 758
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "Line"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8
    const/16 v2, 0xa

    if-ne p1, v2, :cond_9

    const-string p1, "NgHasPlatform SOCIAL_TIKTOK"

    .line 762
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "TikTok"

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    .line 766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "NgHasPlatform invalid platform:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public hasProduct(Ljava/lang/String;)Z
    .locals 0

    .line 271
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initialize()V
    .locals 4

    .line 82
    iget-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_init:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_initializing:Z

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_PNG_SCALE_TYPE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 91
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "ENABLE_EXLOGIN_GUEST"

    invoke-interface {v0, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 95
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_JF_GAS3"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 98
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_DRPF_URL"

    const-string v3, "https://drpf-g66na.proxima.nie.easebar.com/"

    invoke-interface {v0, v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    const-string v1, "EB"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/advertSdk/base/AdvertMgr;->init(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/mrzhna/Channel$1;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Channel$1;-><init>(Lcom/netease/mrzhna/Channel;)V

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    .line 147
    iput-boolean v2, p0, Lcom/netease/mrzhna/Channel;->m_is_initializing:Z

    :cond_0
    return-void
.end method

.method public isDarenUpdated()V
    .locals 1

    .line 1031
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntIsDarenUpdated()V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_init:Z

    return v0
.end method

.method public isInitializing()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_initializing:Z

    return v0
.end method

.method public leaveSdk(I)V
    .locals 0

    .line 441
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnLeaveSdk(I)V

    return-void
.end method

.method public login()V
    .locals 5

    .line 276
    iget-boolean v0, p0, Lcom/netease/mrzhna/Channel;->m_is_init:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/mrzhna/Channel;->m_pre_login_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mrzhna/Channel;->m_pre_login_time:J

    .line 279
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    :cond_0
    return-void
.end method

.method public loginDone(I)V
    .locals 5

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/mrzhna/Channel;->m_pre_login_suc_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mrzhna/Channel;->m_pre_login_suc_time:J

    .line 472
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnLogin(I)V

    .line 474
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    return-void
.end method

.method public logout()V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/netease/mrzhna/Channel;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_LOGOUT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogout()V

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_SWITCH_ACCOUNT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSwitchAccount()V

    :cond_1
    :goto_0
    return-void
.end method

.method public logoutDone(I)V
    .locals 0

    .line 448
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnLogout(I)V

    return-void
.end method

.method public ngShare(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    const/4 v7, 0x7

    new-array v8, v7, [Ljava/lang/Object;

    .line 775
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v11, 0x2

    aput-object v2, v8, v11

    const/4 v12, 0x3

    aput-object v3, v8, v12

    const/4 v13, 0x4

    aput-object v4, v8, v13

    const/4 v14, 0x5

    aput-object v5, v8, v14

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v10, 0x6

    aput-object v15, v8, v10

    const-string v15, "channel:%d, title:%s, text:%s, desc:%s, link:%s, imagePath:%s, shareCircle:%b"

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "[ngShare]"

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v8, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {v8}, Lcom/netease/ntunisdk/base/ShareInfo;-><init>()V

    const-string v15, "TYPE_VIDEO"

    const-string v11, "TYPE_IMAGE"

    const/16 v12, 0x8

    if-ne v0, v13, :cond_0

    const/16 v7, 0x6c

    .line 778
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto/16 :goto_3

    :cond_0
    if-ne v0, v14, :cond_1

    const/16 v7, 0xca

    .line 780
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto/16 :goto_3

    :cond_1
    if-ne v0, v10, :cond_3

    if-nez p8, :cond_2

    const/16 v7, 0x7d

    .line 783
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0x7c

    .line 785
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto/16 :goto_3

    :cond_3
    if-ne v0, v7, :cond_9

    const/16 v0, 0x12e

    .line 789
    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    if-eqz v5, :cond_7

    const-string v0, ".jpg"

    .line 791
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".png"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 800
    :cond_4
    invoke-virtual {v8, v15}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v8, v5}, Lcom/netease/ntunisdk/base/ShareInfo;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :cond_5
    :goto_0
    invoke-virtual {v8, v11}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 793
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v2, ","

    .line 794
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 795
    :goto_1
    array-length v5, v2

    if-ge v10, v5, :cond_6

    .line 796
    aget-object v5, v2, v10

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 798
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 805
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v8, v3}, Lcom/netease/ntunisdk/base/ShareInfo;->setDesc(Ljava/lang/String;)V

    const-string v0, "TYPE_MINI_PROGRAM"

    .line 807
    invoke-virtual {v8, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v8, v4}, Lcom/netease/ntunisdk/base/ShareInfo;->setLink(Ljava/lang/String;)V

    .line 811
    :cond_8
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return v9

    :cond_9
    if-ne v0, v12, :cond_b

    if-nez p8, :cond_a

    const/16 v7, 0x69

    .line 817
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_a
    const/16 v7, 0x6a

    .line 819
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_b
    const/4 v7, 0x3

    if-ne v0, v7, :cond_d

    if-nez p8, :cond_c

    const/16 v7, 0x65

    .line 824
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_c
    const/16 v7, 0x66

    .line 826
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_d
    if-ne v0, v9, :cond_f

    if-nez p8, :cond_e

    const/16 v7, 0x67

    .line 831
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_e
    const/16 v7, 0x68

    .line 833
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_f
    const/4 v7, 0x2

    if-ne v0, v7, :cond_10

    const/16 v7, 0x64

    .line 837
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_10
    const/16 v7, 0x9

    if-ne v0, v7, :cond_11

    const/16 v7, 0xcb

    .line 840
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_11
    const/16 v7, 0xa

    if-ne v0, v7, :cond_12

    const/16 v7, 0x131

    .line 843
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_12
    const/16 v7, 0xb

    if-ne v0, v7, :cond_13

    const/16 v7, 0x71

    .line 846
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    goto :goto_3

    :cond_13
    const/16 v7, 0xc

    if-ne v0, v7, :cond_22

    const/16 v7, 0xc9

    .line 849
    invoke-virtual {v8, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    :goto_3
    const-string v7, "[ngshare]"

    if-ne v0, v12, :cond_14

    if-eqz p8, :cond_14

    if-eqz v5, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    const-string v13, "Ngshare setTitle"

    .line 856
    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setTitle(Ljava/lang/String;)V

    :cond_15
    if-ne v0, v12, :cond_16

    if-eqz p8, :cond_16

    if-eqz v5, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    const-string v1, "Ngshare setText"

    .line 860
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {v8, v2}, Lcom/netease/ntunisdk/base/ShareInfo;->setText(Ljava/lang/String;)V

    .line 864
    :cond_17
    invoke-virtual {v8, v3}, Lcom/netease/ntunisdk/base/ShareInfo;->setDesc(Ljava/lang/String;)V

    const-string v1, "TYPE_TEXT_ONLY"

    .line 865
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    if-eqz v5, :cond_1c

    .line 867
    invoke-virtual {v8, v11}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    if-eq v0, v12, :cond_1b

    if-eq v0, v10, :cond_1b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1b

    const-string v1, "http"

    .line 868
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_5

    :cond_18
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    if-eq v0, v9, :cond_1a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    goto :goto_4

    .line 888
    :cond_19
    invoke-static/range {p6 .. p6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 889
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 879
    :cond_1a
    :goto_4
    invoke-static/range {p6 .. p6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 885
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 875
    :cond_1b
    :goto_5
    invoke-virtual {v8, v5}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    :cond_1c
    :goto_6
    if-eqz p7, :cond_1d

    .line 893
    invoke-static/range {p7 .. p7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 894
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareThumb(Landroid/graphics/Bitmap;)V

    :cond_1d
    if-eqz v4, :cond_1e

    const-string v1, "TYPE_LINK"

    .line 898
    invoke-virtual {v8, v1}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v8, v4}, Lcom/netease/ntunisdk/base/ShareInfo;->setLink(Ljava/lang/String;)V

    :cond_1e
    if-eqz v6, :cond_20

    if-ne v0, v14, :cond_1f

    .line 904
    invoke-virtual {v8, v11}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v8, v6}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    goto :goto_7

    .line 908
    :cond_1f
    invoke-virtual {v8, v15}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v8, v6}, Lcom/netease/ntunisdk/base/ShareInfo;->setVideoUrl(Ljava/lang/String;)V

    :cond_20
    :goto_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_21

    .line 915
    invoke-static {v8}, Lcom/netease/ntunisdk/base/ShareInfo;->obj2JsonStr(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object v0

    .line 918
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "methodId"

    const-string v2, "ntShare"

    .line 919
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    const-string v0, "Channel"

    const-string v1, "LINE obj2JsonStr error"

    .line 922
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 928
    :cond_21
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    :goto_8
    return v9

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyFriendFinished(Z)V
    .locals 0

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 0

    .line 998
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnExtendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method public onInviteFriendListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onInviterListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onIsDarenUpdated(Z)V
    .locals 0

    .line 1037
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnIsDarenUpdated(Z)V

    return-void
.end method

.method public onOpenExitViewFailed()V
    .locals 5

    .line 491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Exit Game"

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Confirm to exit?"

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    .line 494
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic_launcher"

    const-string v4, "drawable"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    .line 496
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "neox_confirm"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/Channel$4;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/Channel$4;-><init>(Lcom/netease/mrzhna/Channel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    .line 507
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "neox_cancel"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onQueryAvailablesInviteesFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueryFriendListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueryFriendListInGameFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 0

    return-void
.end method

.method public onShareFinished(Z)V
    .locals 2

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShareFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[share]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnShareFinished(Z)V

    return-void
.end method

.method public on_activityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 561
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public on_backPressed()V
    .locals 1

    .line 573
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnBackPressed()V

    return-void
.end method

.method public on_configChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 577
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public on_destroy()V
    .locals 2

    .line 553
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 556
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->destroyInst()V

    const/4 v0, 0x0

    .line 557
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public on_newIntent(Landroid/content/Intent;)V
    .locals 1

    .line 565
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public on_pause()V
    .locals 1

    .line 542
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    .line 543
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    return-void
.end method

.method public on_requestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 581
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public on_restart()V
    .locals 1

    .line 585
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRestart()V

    return-void
.end method

.method public on_resume()V
    .locals 1

    .line 547
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnResume()V

    return-void
.end method

.method public on_saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 569
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public on_start()V
    .locals 1

    .line 589
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStart()V

    return-void
.end method

.method public on_stop()V
    .locals 3

    .line 593
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStop()V

    .line 594
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_UID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_DATATYPE"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_STAGE"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    :cond_0
    return-void
.end method

.method public openManager()V
    .locals 1

    .line 402
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenManager()V

    return-void
.end method

.method public openPauseView()V
    .locals 1

    .line 618
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    return-void
.end method

.method public openWebView(Ljava/lang/String;)V
    .locals 1

    .line 417
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenWebView(Ljava/lang/String;)V

    return-void
.end method

.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    .line 456
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/netease/neox/NativeInterface;->NativeOnOrderCheckDone(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public orderProduct(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 322
    :try_start_0
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p3}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 332
    invoke-virtual {v0, p6}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public orderProductEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 342
    :try_start_0
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 352
    invoke-virtual {v0, p6}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public presentQRCodeScanner(Ljava/lang/String;I)V
    .locals 1

    .line 679
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPresentQRCodeScanner(Ljava/lang/String;I)V

    return-void
.end method

.method public querySkuDetails([Ljava/lang/String;)V
    .locals 4

    .line 699
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_QUERYSKUDETAILS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 702
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "inapp"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQuerySkuDetails(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public querySkuDetailsFinished(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/SkuDetailsInfo;",
            ">;)V"
        }
    .end annotation

    .line 1005
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1006
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    .line 1007
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 1008
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "price"

    .line 1009
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "curr_code"

    .line 1010
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnQuerySkuDetailsFinished(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Channel"

    const-string v0, "querySkuDetailsFinished error"

    .line 1017
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "[]"

    .line 1018
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnQuerySkuDetailsFinished(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0

    .line 240
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI[Ljava/lang/String;)V
    .locals 4

    .line 245
    array-length v0, p5

    if-nez v0, :cond_0

    .line 246
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    goto :goto_1

    .line 249
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 251
    :goto_0
    array-length v2, p5

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 253
    aget-object v3, p5, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v2, p5, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    :goto_1
    return-void
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 1

    .line 364
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UID"

    .line 381
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v0, "UIN"

    invoke-interface {p1, v0, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    :goto_1
    return-void
.end method

.method public showCompactView(Z)V
    .locals 1

    .line 689
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    return-void
.end method

.method public showDaren()V
    .locals 1

    .line 1026
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowDaren()V

    return-void
.end method

.method public showFloatButton(Z)V
    .locals 1

    .line 623
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    return-void
.end method

.method public switchAccount()V
    .locals 2

    .line 422
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_SWITCH_ACCOUNT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSwitchAccount()V

    :cond_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 713
    :try_start_0
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    invoke-static {p2}, Lcom/netease/mrzhna/Channel;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 717
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public tryExit()Z
    .locals 2

    .line 519
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_EXIT_VIEW"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "quicksdk"

    invoke-direct {p0, v0}, Lcom/netease/mrzhna/Channel;->isChannel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenExitView()V

    goto :goto_1

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/netease/mrzhna/Channel;->m_context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/mrzhna/Channel$5;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/Channel$5;-><init>(Lcom/netease/mrzhna/Channel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 7

    .line 607
    :try_start_0
    const-class v0, Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v1, "ntUpdateRank"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 611
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
