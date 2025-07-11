.class public Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.super Landroid/app/IntentService;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;
    }
.end annotation


# static fields
.field static final EXTRA_IMAGE_URI:Ljava/lang/String; = "EXTRA_IMAGE_URI"

.field public static final EXTRA_RETRY_INTENT:Ljava/lang/String; = "EXTRA_RETRY_INTENT"

.field public static final EXTRA_TWEET_ID:Ljava/lang/String; = "EXTRA_TWEET_ID"

.field static final EXTRA_TWEET_TEXT:Ljava/lang/String; = "EXTRA_TWEET_TEXT"

.field static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""

.field static final TAG:Ljava/lang/String; = "TweetUploadService"

.field public static final TWEET_COMPOSE_CANCEL:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

.field public static final UPLOAD_FAILURE:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

.field public static final UPLOAD_SUCCESS:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"


# instance fields
.field dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V
    .locals 1

    const-string v0, "TweetUploadService"

    .line 66
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    return-void
.end method


# virtual methods
.method fail(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendFailureBroadcast(Landroid/content/Intent;)V

    .line 141
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "TweetUploadService"

    const-string v2, "Post Tweet failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "EXTRA_USER_TOKEN"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 73
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    .line 74
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterSession;

    const-wide/16 v2, -0x1

    const-string v4, ""

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    const-string v0, "EXTRA_TWEET_TEXT"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_IMAGE_URI"

    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 79
    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method sendFailureBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_RETRY_INTENT"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method sendSuccessBroadcast(J)V
    .locals 2

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_TWEET_ID"

    .line 147
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method uploadMedia(Lcom/twitter/sdk/android/core/TwitterSession;Landroid/net/Uri;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            "Landroid/net/Uri;",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Uri file path resolved to null"

    .line 121
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v1, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object p1

    .line 123
    :try_start_0
    invoke-static {p0, p2}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 125
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterException;

    invoke-direct {p1, v0}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void

    .line 128
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 132
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v1}, Lcom/twitter/sdk/android/core/services/MediaService;->upload(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterException;

    invoke-direct {p1, v0}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Lcom/twitter/sdk/android/core/TwitterException;)V

    :goto_0
    return-void
.end method

.method uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 84
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadMedia(Lcom/twitter/sdk/android/core/TwitterSession;Landroid/net/Uri;Lcom/twitter/sdk/android/core/Callback;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method uploadTweetWithMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 102
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V

    .line 105
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
