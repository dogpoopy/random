.class public Lcom/netease/ntunisdk/SdkTwitter;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkTwitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;,
        Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;,
        Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;,
        Lcom/netease/ntunisdk/SdkTwitter$GetFileUriTask;,
        Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;,
        Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "twitter"

.field private static final CODE_LIKE:I

.field private static final CODE_SHARE:I

.field private static final HINT_DOWNLOAD_NET_IMG:Ljava/lang/String; = "Downloading network image\u2026"

.field private static final HINT_READ_IMG:Ljava/lang/String; = "Reading image\u2026"

.field private static final METHODID_GET_ACCESS_TOKEN:Ljava/lang/String; = "getTwitterAccessToken"

.field private static final METHODID_GET_FOLLOWER_IDS:Ljava/lang/String; = "getFollowerIds"

.field private static final METHODID_GET_FRIEND_IDS:Ljava/lang/String; = "getFriendIds"

.field private static final METHODID_GET_USER_LOOKUP:Ljava/lang/String; = "getUserLookup"

.field private static final METHODID_POST_CARD_UPDATE:Ljava/lang/String; = "postCardStatusUpdate"

.field private static final METHODID_POST_MEDIA_UPDATE:Ljava/lang/String; = "postMediaStatusUpdate"

.field private static final METHODID_POST_STATUS_UPDATE:Ljava/lang/String; = "postStatusUpdate"

.field private static final METHODID_POST_VIDEO_UPDATE:Ljava/lang/String; = "postVideoStatusUpdate"

.field private static final SDK_VER:Ljava/lang/String; = "3.1.2"

.field public static final SHARE_WITH_NATIVE_TWITTER:Ljava/lang/String; = "SHARE_WITH_NATIVE_TWITTER"

.field public static final SHARE_WITH_TWITTER_API:Ljava/lang/String; = "SHARE_WITH_TWITTER_API"

.field private static final TAG:Ljava/lang/String; = "SdkTwitter"

.field private static final VER_BLACK:Ljava/lang/String; = "8.11.0"


# instance fields
.field private volatile authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private cachedTwtSession:Lcom/twitter/sdk/android/core/TwitterSession;

.field private hasRetry:Z

.field private loginCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalInited:Z

.field private mMethodSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseNativeShare:Z

.field private receiver:Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "SdkTwitter"

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xffff

    rem-int/2addr v1, v2

    sput v1, Lcom/netease/ntunisdk/SdkTwitter;->CODE_SHARE:I

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, v2

    sput v0, Lcom/netease/ntunisdk/SdkTwitter;->CODE_LIKE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkTwitter;->mUseNativeShare:Z

    .line 106
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkTwitter;->mLocalInited:Z

    .line 555
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkTwitter;->hasRetry:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/TwitterSession;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->cachedTwtSession:Lcom/twitter/sdk/android/core/TwitterSession;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/SdkTwitter;Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterSession;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkTwitter;->cachedTwtSession:Lcom/twitter/sdk/android/core/TwitterSession;

    return-object p1
.end method

.method static synthetic access$100(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;
    .locals 0

    .line 83
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getAuthInfo(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/SdkTwitter;)Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkTwitter;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweetByUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;
    .locals 0

    .line 83
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getAuthInfoForApi(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkTwitter;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private checkActivity(Landroid/content/Context;)V
    .locals 1

    .line 343
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Twitter"

    const-string v0, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    .line 344
    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logOrThrowIllegalStateException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkCallback(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Twitter"

    const-string v0, "Callback must not be null, did you call setCallback?"

    .line 337
    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logOrThrowIllegalStateException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private clearPicassoCache(Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/squareup/picasso/TwitterComposerImageClearer;->clearCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/squareup/picasso/TwitterComposerImageClearer2;->clearCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private composeTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 636
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    iget-boolean p2, p0, Lcom/netease/ntunisdk/SdkTwitter;->mUseNativeShare:Z

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p2, v1, :cond_0

    .line 640
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tw.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 642
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 644
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTwitter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweetByUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 648
    check-cast p2, Landroid/net/Uri;

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweetByUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private composeTweetByUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .line 558
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 560
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SHARE_WITH_TWITTER_API"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "com.twitter.android"

    .line 561
    invoke-direct {p0, v4}, Lcom/netease/ntunisdk/SdkTwitter;->hasInstallApp(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "SdkTwitter"

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    const-string p1, "twitter app is not installed"

    .line 564
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    .line 566
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->showInstallTips()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const-string v0, "null twitter session"

    .line 570
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->checkActivity(Landroid/content/Context;)V

    .line 572
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkTwitter$NullSessionCallback;-><init>(Lcom/netease/ntunisdk/SdkTwitter;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    goto/16 :goto_1

    .line 574
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 577
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 581
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p2, :cond_5

    .line 585
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkTwitter;->clearPicassoCache(Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_8

    .line 589
    new-instance p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    iget-object p3, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;-><init>(Landroid/content/Context;)V

    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_6

    .line 591
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    :cond_6
    if-eqz p2, :cond_7

    .line 594
    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->image(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    .line 598
    :cond_7
    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->session(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    move-result-object p1

    .line 599
    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 600
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 601
    :cond_8
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mUseNativeShare:Z

    if-eqz v0, :cond_b

    .line 602
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object v0

    if-eqz p2, :cond_9

    .line 605
    invoke-virtual {v0, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->image(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    .line 608
    :cond_9
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/TweetBuilderProcessor;->process(Landroid/content/Context;Landroid/content/Intent;)V

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget v4, Lcom/netease/ntunisdk/SdkTwitter;->CODE_SHARE:I

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 616
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkTwitter;->mUseNativeShare:Z

    .line 617
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->hasRetry:Z

    if-eqz v0, :cond_a

    const-string p1, "share failed!"

    .line 618
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    .line 620
    iput-boolean v2, p0, Lcom/netease/ntunisdk/SdkTwitter;->hasRetry:Z

    return-void

    .line 624
    :cond_a
    iput-boolean v3, p0, Lcom/netease/ntunisdk/SdkTwitter;->hasRetry:Z

    .line 625
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweetByUri(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string p1, "session invalid..."

    .line 629
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    :goto_1
    return-void
.end method

.method private static getAuthInfo(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;
    .locals 3

    .line 309
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/twitter/sdk/android/core/OAuthSigning;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p0

    check-cast p0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v1, v0, p0}, Lcom/twitter/sdk/android/core/OAuthSigning;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;)V

    .line 311
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/OAuthSigning;->getOAuthEchoHeadersForVerifyCredentials()Ljava/util/Map;

    move-result-object p0

    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :try_start_0
    const-string p0, "X-Verify-Credentials-Authorization"

    .line 316
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Authorization"

    .line 317
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 322
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TWITTER_AUTH_INFO"

    invoke-interface {p0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getAuthInfoForApi(Lcom/twitter/sdk/android/core/TwitterSession;)Lorg/json/JSONObject;
    .locals 8

    .line 328
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v2

    .line 329
    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;-><init>()V

    .line 330
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    .line 329
    invoke-virtual/range {v1 .. v7}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aHeaders;->getOAuthEchoHeaders(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 332
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 730
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "."

    .line 734
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 735
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 736
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ".jpg"

    :goto_0
    return-object p0
.end method

.method private getTat()V
    .locals 5

    const/4 v0, 0x0

    .line 744
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "getTwitterAccessToken"

    .line 745
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v2

    .line 747
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterSession;

    if-eqz v2, :cond_3

    .line 749
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v2, :cond_2

    .line 751
    iget-object v3, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 752
    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 754
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "access_token"

    .line 755
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "invalid token"

    .line 759
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "access_token_secret"

    .line 760
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v0, "invalid secret"

    goto :goto_1

    :cond_2
    const-string v0, "no auth token"

    goto :goto_1

    :cond_3
    const-string v0, "no active session"

    :goto_1
    const-string v2, "error"

    .line 772
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_1

    .line 662
    const-class v0, Lcom/netease/ntunisdk/SdkTwitter;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v1, :cond_0

    .line 664
    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 666
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 668
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method

.method private static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 380
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private hasInstallApp(Ljava/lang/String;)Z
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 364
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    return v1
.end method

.method private isBlackListVersion()Z
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    const-string v1, "com.twitter.android"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkTwitter;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8.11.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private performInit()I
    .locals 7

    const-string v0, "APP_KEY"

    .line 227
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_SECRET"

    .line 228
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkTwitter;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "FEATURE_HAS_SHARE"

    .line 234
    invoke-virtual {p0, v2, v4}, Lcom/netease/ntunisdk/SdkTwitter;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "FEATURE_HAS_LOGOUT"

    .line 235
    invoke-virtual {p0, v2, v4}, Lcom/netease/ntunisdk/SdkTwitter;->setFeature(Ljava/lang/String;Z)V

    .line 237
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/twitter/sdk/android/core/DefaultLogger;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>(I)V

    .line 238
    invoke-virtual {v2, v5}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v2

    new-instance v5, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v5, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2, v5}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v4}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    .line 243
    iput-boolean v4, p0, Lcom/netease/ntunisdk/SdkTwitter;->mLocalInited:Z

    .line 245
    new-instance v0, Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;-><init>(Lcom/netease/ntunisdk/SdkTwitter;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->receiver:Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 250
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter;->receiver:Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;

    invoke-virtual {v1, v2, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter;->receiver:Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    :goto_0
    new-instance v0, Lcom/netease/ntunisdk/SdkTwitter$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkTwitter$1;-><init>(Lcom/netease/ntunisdk/SdkTwitter;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->loginCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    .line 295
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "postStatusUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "postCardStatusUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "getFriendIds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "getFollowerIds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "getUserLookup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "getTwitterAccessToken"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "postVideoStatusUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    const-string v1, "postMediaStatusUpdate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v3

    :cond_2
    :goto_1
    const-string v0, "SdkTwitter"

    const-string v1, "empty twitter-key or empty twitter-secret"

    .line 230
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-boolean v3, p0, Lcom/netease/ntunisdk/SdkTwitter;->hasInit:Z

    return v4
.end method

.method private performLogin()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->loginCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->checkCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 351
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->checkActivity(Landroid/content/Context;)V

    .line 352
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkTwitter;->loginCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method private performPay(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    const-string v0, "no pay function"

    .line 356
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 357
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method private showInstallTips()V
    .locals 7

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    const-string v1, "Twitter App is not installed."

    const-string v2, "OK"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/netease/ntunisdk/Alerts;->alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private toTwPage(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 4

    .line 451
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUser()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.action.VIEW"

    if-nez v1, :cond_1

    const-string v1, "com.twitter.android"

    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkTwitter;->hasInstallApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    new-instance p1, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twitter://user?user_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object p1, v0

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/netease/ntunisdk/SdkTwitter;->CODE_LIKE:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const-string p1, "SdkTwitter"

    const-string v0, "no title/toUser/link found"

    .line 464
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 465
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter;->performPay(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTwitter;->receiver:Lcom/netease/ntunisdk/SdkTwitter$TwitterShareResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "srcMethodId"

    const-string v3, "authAgain"

    const-string v4, "methodId"

    const-string v5, ""

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extendFunc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SdkTwitter"

    invoke-static {v7, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "channel"

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkTwitter;->getChannel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 929
    iget-object v9, v1, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    if-eqz v9, :cond_18

    iget-object v9, v1, Lcom/netease/ntunisdk/SdkTwitter;->mMethodSet:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkTwitter;->getChannel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_9

    .line 934
    :cond_0
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 935
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 938
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v3

    .line 939
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/TwitterSession;

    const-string v9, "tryAgain"

    const/4 v10, 0x1

    .line 940
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    if-nez v9, :cond_2

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v9, 0x1

    :goto_1
    const-string v12, "error"

    if-eqz v3, :cond_16

    .line 941
    :try_start_1
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v13

    if-eqz v13, :cond_16

    .line 942
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v13

    check-cast v13, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v13}, Lcom/twitter/sdk/android/core/TwitterAuthToken;->isExpired()Z

    move-result v13

    if-nez v13, :cond_16

    if-eqz v8, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v8, "getTwitterAccessToken"

    .line 963
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 964
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkTwitter;->getTat()V

    return-void

    .line 968
    :cond_4
    new-instance v8, Lcom/netease/ntunisdk/UniTwitterApiClient;

    invoke-direct {v8, v3}, Lcom/netease/ntunisdk/UniTwitterApiClient;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    .line 970
    new-instance v3, Lcom/netease/ntunisdk/SdkTwitter$2;

    invoke-direct {v3, v1, v6}, Lcom/netease/ntunisdk/SdkTwitter$2;-><init>(Lcom/netease/ntunisdk/SdkTwitter;Lorg/json/JSONObject;)V

    .line 1017
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v9

    const-string v13, "SHARE_WITH_TWITTER_API"

    invoke-interface {v9, v13, v11}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 1019
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could use twitter api:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "postStatusUpdate"

    .line 1021
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "media_ids"

    const-string v13, "EMPTY"

    const-string v14, "status"

    const/4 v15, 0x0

    if-eqz v9, :cond_7

    if-eqz v10, :cond_6

    .line 1023
    :try_start_2
    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v0, "in_reply_to_status_id"

    .line 1024
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Long;

    const-string v0, "possibly_sensitive"

    .line 1025
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Boolean;

    const-string v0, "lat"

    .line 1026
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    const-string v0, "long"

    .line 1027
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Double;

    const-string v0, "place_id"

    .line 1028
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    const-string v0, "display_coordinates"

    .line 1029
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Boolean;

    const-string v0, "trim_user"

    .line 1030
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Boolean;

    .line 1031
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 1033
    invoke-virtual {v8}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getStatusesPlusServices()Lcom/netease/ntunisdk/services/StatusesPlusServices;

    move-result-object v16

    .line 1034
    invoke-interface/range {v16 .. v25}, Lcom/netease/ntunisdk/services/StatusesPlusServices;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v15

    goto/16 :goto_6

    .line 1037
    :cond_6
    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    invoke-direct {v1, v0, v15, v15}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v9, v15

    goto/16 :goto_5

    :cond_7
    const-string v9, "postCardStatusUpdate"

    .line 1041
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_8

    .line 1043
    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "card_uri"

    .line 1044
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1045
    invoke-virtual {v8}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getStatusesCardServices()Lcom/netease/ntunisdk/services/StatusesCardServices;

    move-result-object v8

    .line 1046
    invoke-interface {v8, v0, v9}, Lcom/netease/ntunisdk/services/StatusesCardServices;->update(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v15

    goto/16 :goto_6

    .line 1048
    :cond_8
    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    invoke-direct {v1, v0, v15, v15}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v9, "postMediaStatusUpdate"

    .line 1052
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v15, "Forbidden to use Twitter API."

    if-eqz v9, :cond_b

    if-eqz v10, :cond_a

    .line 1054
    :try_start_3
    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1057
    invoke-virtual {v8}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getStatusesMediaServices()Lcom/netease/ntunisdk/services/StatusesMediaServices;

    move-result-object v8

    .line 1058
    invoke-interface {v8, v0, v9}, Lcom/netease/ntunisdk/services/StatusesMediaServices;->update(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v15

    goto/16 :goto_6

    .line 1060
    :cond_a
    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v9, "postVideoStatusUpdate"

    .line 1065
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v10, :cond_c

    .line 1067
    invoke-static/range {p0 .. p0}, Lcom/netease/ntunisdk/services/MediaShareUtil;->getInstance(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/services/MediaShareUtil;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/services/MediaShareUtil;->setObj(Lorg/json/JSONObject;)Lcom/netease/ntunisdk/services/MediaShareUtil;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/netease/ntunisdk/services/MediaShareUtil;->shareVideo(Lcom/netease/ntunisdk/UniTwitterApiClient;)V

    goto :goto_4

    .line 1069
    :cond_c
    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "video"

    .line 1070
    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    .line 1071
    invoke-direct {v1, v0, v2, v9}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_d
    const/4 v9, 0x0

    const-string v11, "getFriendIds"

    .line 1074
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v13, "screen_name"

    const-string v14, "user_id"

    if-eqz v11, :cond_f

    if-eqz v10, :cond_e

    .line 1076
    :try_start_4
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Long;

    .line 1077
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    const-string v0, "cursor"

    .line 1078
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    const-string v0, "stringify_ids"

    .line 1079
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Boolean;

    const-string v0, "count"

    .line 1080
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    .line 1082
    invoke-virtual {v8}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getFriendsService()Lcom/netease/ntunisdk/services/FriendsService;

    move-result-object v14

    .line 1083
    invoke-interface/range {v14 .. v19}, Lcom/netease/ntunisdk/services/FriendsService;->ids(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object v15

    goto/16 :goto_6

    .line 1085
    :cond_e
    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1086
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V

    return-void

    :cond_f
    const-string v11, "getFollowerIds"

    .line 1090
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v10, :cond_10

    .line 1092
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Long;

    .line 1093
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    const-string v0, "cursor"

    .line 1094
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    const-string v0, "stringify_ids"

    .line 1095
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Boolean;

    const-string v0, "count"

    .line 1096
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    .line 1098
    invoke-virtual {v8}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getFollowersService()Lcom/netease/ntunisdk/services/FollowersService;

    move-result-object v14

    .line 1099
    invoke-interface/range {v14 .. v19}, Lcom/netease/ntunisdk/services/FollowersService;->ids(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object v15

    goto :goto_6

    .line 1101
    :cond_10
    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1102
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v11, "getUserLookup"

    .line 1106
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v10, :cond_13

    .line 1108
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v0, "ids"

    .line 1110
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    :cond_12
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "include_entities"

    .line 1113
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    const-string v11, "tweet_mode"

    .line 1114
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 1116
    invoke-virtual {v8}, Lcom/netease/ntunisdk/UniTwitterApiClient;->getUsersService()Lcom/netease/ntunisdk/services/UsersService;

    move-result-object v8

    .line 1117
    invoke-interface {v8, v9, v0, v10, v11}, Lcom/netease/ntunisdk/services/UsersService;->lookup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v15

    goto :goto_6

    .line 1119
    :cond_13
    invoke-virtual {v6, v12, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1120
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V

    return-void

    :cond_14
    :goto_5
    move-object v15, v9

    .line 1126
    :goto_6
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 1128
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1129
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    if-eqz v15, :cond_19

    .line 1133
    invoke-interface {v15, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_a

    :cond_16
    :goto_7
    const-string v0, "no active session"

    .line 944
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_17

    .line 949
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->checkActivity(Landroid/content/Context;)V

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkTwitter;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkTwitter;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;

    invoke-direct {v3, v1, v6, v11}, Lcom/netease/ntunisdk/SdkTwitter$NullWhenExtendCallback;-><init>(Lcom/netease/ntunisdk/SdkTwitter;Lorg/json/JSONObject;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    goto :goto_8

    :cond_17
    const-string v0, "twitter authorize error, no active session"

    .line 952
    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkTwitter;->extendFuncCall(Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_18
    :goto_9
    const-string v0, "not for this"

    .line 930
    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_a
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "twitter"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTwitter;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 161
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTwitter;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "UIN"

    .line 172
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.2"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 2

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(13)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasPlatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTwitter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 394
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "twitter"

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.twitter.android"

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter;->hasInstallApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 4

    const-string v0, "SdkTwitter"

    const-string v1, "twitter init"

    .line 127
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->performInit()I

    move-result v0

    .line 131
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "SHARE_WITH_NATIVE_TWITTER"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    const-string v1, "SHARE_WITH_306"

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkTwitter;->setFeature(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_0
    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "SdkTwitter"

    const-string v1, "performLogin"

    .line 154
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->performLogin()V

    return-void
.end method

.method public logout()V
    .locals 2

    const-string v0, "SdkTwitter"

    const-string v1, "logout"

    .line 183
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    .line 185
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTwitter;->resetCommonProp()V

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->logoutDone(I)V

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdkOnActivityResult, req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTwitter"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget v0, Lcom/netease/ntunisdk/SdkTwitter;->CODE_LIKE:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 213
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    goto :goto_1

    .line 215
    :cond_0
    sget v0, Lcom/netease/ntunisdk/SdkTwitter;->CODE_SHARE:I

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mUseNativeShare:Z

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 216
    :goto_0
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    goto :goto_1

    .line 218
    :cond_2
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mLocalInited:Z

    if-eqz v0, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string p1, "ntInit had not initialize SdkTwitter"

    .line 222
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public sdkOnResume()V
    .locals 2

    const-string v0, "SdkTwitter"

    const-string v1, "sdkOnResume"

    .line 548
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 9

    .line 405
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkTwitter;->mLocalInited:Z

    const-string v1, "SdkTwitter"

    if-nez v0, :cond_0

    const-string p1, "SdkTwitter not initilized. call ntInit(...) before all other functions"

    .line 406
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "null ShareInfo instance!"

    .line 410
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTwitter;->shareFinished(Z)V

    return-void

    .line 414
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    const/16 v3, 0x132

    if-ne v3, v2, :cond_2

    .line 417
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkTwitter;->toTwPage(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void

    .line 422
    :cond_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "com.twitter.android"

    .line 426
    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkTwitter;->hasInstallApp(Ljava/lang/String;)Z

    move-result v6

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "has install twitter app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v7, "SHARE_WITH_NATIVE_TWITTER"

    invoke-interface {v1, v7, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v7, 0x1

    if-ne v7, v1, :cond_3

    if-eqz v6, :cond_3

    .line 429
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkTwitter;->isBlackListVersion()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, p0, Lcom/netease/ntunisdk/SdkTwitter;->mUseNativeShare:Z

    if-eqz v2, :cond_5

    const-string v1, "http"

    .line 431
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ftp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 432
    :cond_4
    new-instance v1, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;

    invoke-direct {v1, p1, p0}, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkTwitter;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/SdkTwitter$DownloadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_5
    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 435
    new-instance v1, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;

    invoke-direct {v1, p1, p0}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkTwitter;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/SdkTwitter$SaveBmpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 438
    :cond_6
    invoke-direct {p0, v4, v2, v3}, Lcom/netease/ntunisdk/SdkTwitter;->composeTweet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;
    .locals 2

    .line 142
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    const/16 v1, 0x132

    if-eq v0, v1, :cond_0

    .line 148
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTwitter;->getChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
