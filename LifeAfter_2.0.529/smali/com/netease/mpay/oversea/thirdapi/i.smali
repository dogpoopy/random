.class public Lcom/netease/mpay/oversea/thirdapi/i;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "FacebookApi.java"


# instance fields
.field private d:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0xcc

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 101
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_8

    .line 102
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 107
    :cond_3
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    const/16 p1, 0xcb

    return p1

    .line 110
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_5

    .line 112
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    return v0

    .line 115
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/ya;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 117
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 118
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1

    .line 119
    :cond_8
    :goto_0
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/i;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "alarm"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 55
    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lcom/facebook/AccessToken;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x3

    const-string v1, "token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/i;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Lcom/facebook/AccessToken;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
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

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 9
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "account"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i;->d:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/q;->d()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/content/Context;)V

    .line 51
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 p2, -0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/i$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/thirdapi/i$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/i;)V

    invoke-static {p1}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/i$c;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/netease/mpay/oversea/thirdapi/i$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/i;Landroid/app/Activity;Lcom/netease/mpay/oversea/CheckApiAuthCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v4, Lcom/netease/mpay/oversea/thirdapi/i$d;

    invoke-direct {v4, p0, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/i$d;-><init>(Lcom/netease/mpay/oversea/thirdapi/i;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xcd

    .line 95
    invoke-interface {v4, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return-void

    .line 99
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/i$e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/thirdapi/i$e;-><init>(Lcom/netease/mpay/oversea/thirdapi/i;Landroid/app/Activity;Lcom/netease/mpay/oversea/SyncApiAuthCallback;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    const/16 p1, 0xcc

    .line 100
    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_3
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 11
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 14
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/i;->d:Lcom/facebook/CallbackManager;

    if-nez p2, :cond_1

    .line 15
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/i;->d:Lcom/facebook/CallbackManager;

    .line 16
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i;->d:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/i$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/i$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/i;)V

    invoke-virtual {p2, v0, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 41
    :cond_1
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 42
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    .line 43
    invoke-static {}, Lcom/netease/mpay/oversea/ya;->a()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-virtual {p2, p1, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
