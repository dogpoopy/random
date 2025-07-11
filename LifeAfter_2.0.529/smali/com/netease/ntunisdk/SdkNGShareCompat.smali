.class public Lcom/netease/ntunisdk/SdkNGShareCompat;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkNGShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkNGShareCompat$DelayHandler;,
        Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;,
        Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;,
        Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;,
        Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "ngshare_compat"

.field private static final FACEBOOK_SDK:Ljava/lang/String; = "facebook_sdk"

.field private static final REQ_CODE:I

.field private static final TAG:Ljava/lang/String; = "UniSDK share_compat"

.field private static final TWITTER:Ljava/lang/String; = "twitter"

.field private static final VER:Ljava/lang/String; = "2.4"


# instance fields
.field private mDelayHandler:Landroid/os/Handler;

.field private final mFbChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShareStarted:Z

.field private mShouldShow:Z

.field private final mTwChannels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shareInstMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UniSDK share_compat"

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkNGShareCompat;->REQ_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShareStarted:Z

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mFbChannels:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mTwChannels:Ljava/util/Set;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareInstMap:Ljava/util/Map;

    .line 72
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShouldShow:Z

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "INNER_MODE_NO_PAY"

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/ntunisdk/SdkNGShareCompat;Lcom/netease/ntunisdk/base/ShareInfo;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareAfterUriGot(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/net/Uri;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/SdkNGShareCompat;Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/netease/ntunisdk/SdkNGShareCompat;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShareStarted:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/netease/ntunisdk/SdkNGShareCompat;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShareStarted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mDelayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 10

    .line 215
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shouldIncept(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result v0

    const-string v1, "UniSDK share_compat"

    if-eqz v0, :cond_0

    const-string p1, "shouldIncept=true"

    .line 216
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    invoke-static {v0}, Lcom/netease/ntunisdk/PackageTable;->shouldShowFloating(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    .line 222
    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->hasFloatingPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v3, "NGSHARE_COMPAT_BACK_GAME_BTN"

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShouldShow:Z

    .line 224
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShouldShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->canShowFloatBtn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->shouldReqPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/SdkNGShareCompat$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$1;-><init>(Lcom/netease/ntunisdk/SdkNGShareCompat;Lcom/netease/ntunisdk/base/ShareInfo;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/FloatingButtonUtil;->reqPermission(Landroid/app/Activity;Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;)V

    return-void

    .line 243
    :cond_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TYPE_IMAGE"

    .line 245
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "ftp"

    const-string v6, "http"

    const-string v7, "TYPE_LINK"

    const-string v8, "TYPE_VIDEO"

    if-eqz v4, :cond_6

    .line 246
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasImage(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 247
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    return-void

    .line 251
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 254
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_4
    const-string v0, "http image"

    .line 255
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;

    invoke-direct {v0, p1, p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_5
    const-string v0, "save bitmap and get its path"

    .line 261
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;

    invoke-direct {v0, p1, p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 266
    :cond_6
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 267
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    const-string p1, "only local video path allowed"

    .line 271
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    return-void

    .line 276
    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "TYPE_LINK, no other operations"

    .line 278
    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v4, "pre ready"

    .line 302
    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.SEND"

    .line 305
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.TITLE"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 308
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "android.intent.extra.TEXT"

    if-eqz v6, :cond_c

    .line 316
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string p1, "share link error"

    .line 318
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    return-void

    .line 324
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 328
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, p1, v0, v4}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareAfterUriGot(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/net/Uri;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 331
    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 332
    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 333
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_d

    .line 339
    new-instance v0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;

    invoke-direct {v0, p1, v4, p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/content/Intent;Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 341
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no exist image file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    goto :goto_3

    .line 345
    :cond_e
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 346
    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "video/*"

    .line 347
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 348
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_f

    .line 354
    new-instance v0, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;

    invoke-direct {v0, p1, v4, p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/content/Intent;Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$GetFileUriAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 356
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no exist video file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    :cond_10
    :goto_3
    return-void

    .line 281
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "share type not set or type not support:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasImage(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 284
    invoke-virtual {p1, v3}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_4

    .line 287
    :cond_12
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasLink(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 288
    invoke-virtual {p1, v7}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_4

    .line 291
    :cond_13
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasVideo(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 292
    invoke-virtual {p1, v8}, Lcom/netease/ntunisdk/base/ShareInfo;->setType(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_4

    .line 296
    :cond_14
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    :goto_4
    return-void
.end method

.method private getLoginInstMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareInstMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->getLoginInstMapFromMain()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareInstMap:Ljava/util/Map;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareInstMap:Ljava/util/Map;

    return-object v0
.end method

.method private getLoginInstMapFromMain()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation

    .line 473
    const-class v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 474
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "loginSdkInstMap"

    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 478
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 481
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 495
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "."

    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ".jpg"

    :goto_0
    return-object p0
.end method

.method private hasImage(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareThumb()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasLink(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasVideo(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shareAfterUriGot(Lcom/netease/ntunisdk/base/ShareInfo;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 9

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK share_compat"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    .line 368
    invoke-static {v0}, Lcom/netease/ntunisdk/PackageTable;->getPackageSet(I)Ljava/util/List;

    move-result-object v2

    .line 369
    invoke-static {v0}, Lcom/netease/ntunisdk/PackageTable;->getAppName(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v0}, Lcom/netease/ntunisdk/PackageTable;->getClassName(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / className="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / packageNameList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    .line 376
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v7

    .line 380
    :cond_1
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/netease/ntunisdk/AppPackageUtil;->hasPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v2, "has installed"

    .line 381
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p3, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TYPE_LINK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 388
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-virtual {p1, v7, p2, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_7

    .line 395
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "app for sharing is not installed?"

    .line 396
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    .line 398
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v3, v0}, Lcom/netease/ntunisdk/MarketJumper;->onNoAppInstalledProcess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 p1, 0x63

    if-ne p1, v0, :cond_6

    const-string p1, "no specific package"

    .line 403
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "no package list"

    .line 405
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "has.no.this.package"

    .line 406
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "app_name"

    const-string v2, "string"

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Share to ..."

    goto :goto_3

    .line 414
    :cond_8
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 417
    :goto_3
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 418
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    sget p3, Lcom/netease/ntunisdk/SdkNGShareCompat;->REQ_CODE:I

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 420
    :cond_9
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/netease/ntunisdk/SdkNGShareCompat;->REQ_CODE:I

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 422
    :goto_4
    iput-boolean v5, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShareStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/SdkNGShareCompat;->shareFinished(Z)V

    :goto_5
    return-void
.end method

.method private shouldIncept(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 8

    .line 433
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->getLoginInstMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const-string v2, "SHARE_WITH_COMPAT"

    .line 434
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mFbChannels:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "facebook_sdk"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return v3

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mTwChannels:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "twitter"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return v3

    :cond_2
    const/16 v2, 0x12c

    .line 445
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v4

    if-eq v2, v4, :cond_7

    .line 446
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v4, "SHARE_WITH_NATIVE"

    invoke-interface {v2, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v3, v2, :cond_7

    .line 447
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHARE_WITH_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_3

    goto :goto_0

    .line 452
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 453
    invoke-virtual {v2, v4, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 455
    :cond_5
    invoke-virtual {v2, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return v3

    :cond_6
    return v1

    .line 448
    :cond_7
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->share(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return v3

    :cond_8
    :goto_1
    return v1
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->stop(Landroid/content/Context;)V

    .line 189
    :cond_0
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 3

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK share_compat"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ntShare"

    const-string v2, "methodId"

    .line 1001
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/ShareInfo;

    move-result-object p1

    const-string v0, "SHARE_WITH_COMPAT"

    const/4 v1, 0x1

    .line 1003
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setFeature(Ljava/lang/String;Z)V

    .line 1004
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1008
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "ngshare_compat"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 112
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 120
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 2

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call hasPlatform platform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK share_compat"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/AppPackageUtil;->hasPlatformInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 4

    const-string v0, "UniSDK share_compat"

    const-string v1, "init..."

    .line 84
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "FEATURE_HAS_SHARE"

    .line 85
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setFeature(Ljava/lang/String;Z)V

    .line 86
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/ntunisdk/AppPackageUtil;->init(Landroid/content/Context;)V

    .line 88
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mFbChannels:Ljava/util/Set;

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mFbChannels:Ljava/util/Set;

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mFbChannels:Ljava/util/Set;

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mTwChannels:Ljava/util/Set;

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mTwChannels:Ljava/util/Set;

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;-><init>(Lcom/netease/ntunisdk/SdkNGShareCompat$1;)V

    new-array v0, v0, [Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$RemoveCacheAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    new-instance v0, Lcom/netease/ntunisdk/SdkNGShareCompat$DelayHandler;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkNGShareCompat$DelayHandler;-><init>(Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mDelayHandler:Landroid/os/Handler;

    .line 98
    invoke-interface {p1, v3}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UIN"

    const-string v1, "NGSshareUid"

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    const-string v1, "NGSshareSession"

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setPropInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->loginDone(I)V

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdkOnActivityResult..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UniSDK share_compat"

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canShow="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->canShowFloatBtn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/netease/ntunisdk/FloatingButtonUtil;->onActivityResult(I)V

    .line 146
    sget p2, Lcom/netease/ntunisdk/SdkNGShareCompat;->REQ_CODE:I

    if-ne p2, p1, :cond_0

    const-string p1, "bingo"

    .line 148
    invoke-static {p3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sdkOnPause()V
    .locals 3

    const-string v0, "UniSDK share_compat"

    const-string v1, "sdkOnPause"

    .line 155
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/ntunisdk/FloatingButtonUtil;->canShowFloatBtn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mDelayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShareStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShouldShow:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/FloatingButtonUtil;->startSingle(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public sdkOnRestart()V
    .locals 2

    const-string v0, "UniSDK share_compat"

    const-string v1, "sdkOnRestart"

    .line 181
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sdkOnResume()V
    .locals 4

    const-string v0, "UniSDK share_compat"

    const-string v1, "sdkOnResume"

    .line 167
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->myCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/ntunisdk/FloatingButtonUtil;->canShowFloatBtn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mShareStarted:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public sdkOnStop()V
    .locals 2

    const-string v0, "UniSDK share_compat"

    const-string v1, "sdkOnStop"

    .line 176
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK share_compat"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHARE_WITH_COMPAT"

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->setFeature(Ljava/lang/String;Z)V

    .line 210
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->doShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
