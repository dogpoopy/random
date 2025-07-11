.class public Lcom/netease/mpay/oversea/thirdapi/s;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "TwitterApi.java"


# instance fields
.field volatile d:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private e:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/s;Lcom/twitter/sdk/android/core/TwitterSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/s;->a(Lcom/twitter/sdk/android/core/TwitterSession;)V

    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/TwitterSession;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/s;->b(Lcom/twitter/sdk/android/core/TwitterSession;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v0, v2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method private b(Lcom/twitter/sdk/android/core/TwitterSession;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/OAuthSigning;

    invoke-direct {v1, v0, p1}, Lcom/twitter/sdk/android/core/OAuthSigning;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;)V

    .line 5
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/OAuthSigning;->getOAuthEchoHeadersForVerifyCredentials()Ljava/util/Map;

    move-result-object p1

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 3
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/s;->a(Lcom/twitter/sdk/android/core/TwitterSession;)V

    return-void
.end method

.method private i()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/s;->d:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/thirdapi/s;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/s;->d:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/s;->d:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/s;->d:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 104
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "auth_credential"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;->i()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;->i()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/s;->c(Landroid/app/Activity;)V

    .line 101
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;->h()V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 5

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/s;->c(Landroid/app/Activity;)V

    .line 23
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 25
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/thirdapi/s;->b(Lcom/twitter/sdk/android/core/TwitterSession;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 30
    invoke-interface {p1}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    const/16 p1, 0x12c

    goto :goto_1

    :cond_2
    const/16 p1, 0x12f

    .line 35
    :goto_1
    invoke-interface {p3, p1, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :cond_3
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 5

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0xcd

    .line 38
    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_7

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/s;->c(Landroid/app/Activity;)V

    .line 53
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterSession;

    .line 55
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/thirdapi/s;->b(Lcom/twitter/sdk/android/core/TwitterSession;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 61
    :goto_0
    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/s$b;

    invoke-direct {v2, p0, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/s$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/s;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_6

    .line 94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3, v1, v0, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    .line 97
    :cond_4
    sget-object p2, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p2

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    invoke-direct {p3, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;-><init>(Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-static {p1, p2, p3}, Lcom/netease/mpay/oversea/ui/c;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V

    goto :goto_2

    .line 98
    :cond_5
    :goto_1
    sget-object p2, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p2

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    invoke-direct {p3, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;-><init>(Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-static {p1, p2, p3}, Lcom/netease/mpay/oversea/ui/c;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    const/16 p1, 0xcc

    .line 99
    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_8
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/s;->c(Landroid/app/Activity;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;->h()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;->i()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->cancelAuthorize()V

    .line 7
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/s$a;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/thirdapi/s$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/s;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/s;->e:Lcom/twitter/sdk/android/core/Callback;

    .line 18
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;->i()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/s;->e:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {p2, p1, v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->p(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
