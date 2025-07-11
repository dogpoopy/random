.class public Lcom/netease/mpay/oversea/thirdapi/t;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "VkApi.java"


# instance fields
.field private d:Lcom/vk/sdk/VKCallback;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/t;->e:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "integer"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0

    :catch_0
    return-object p2
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/t;->h()V

    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/vk/sdk/VKSdk;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vk login success {uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", email:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/vk/sdk/VKAccessToken;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-static {}, Lcom/vk/sdk/VKSdk;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 14
    invoke-virtual {v0, v4}, Lcom/vk/sdk/VKAccessToken;->hasScope([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    iget-object v3, v0, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    .line 21
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v1, -0x3

    const-string v2, "Token is null"

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->d(Lcom/netease/mpay/oversea/g6;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v1, "offline"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/t;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com_vk_sdk_AppId"

    .line 5
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    const-string v2, "com_vk_sdk_ApiVersion"

    const-string v3, "5.21"

    .line 10
    invoke-static {v0, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/vk/sdk/VKSdk;->customInitialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/t;->e:Z

    .line 15
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 16
    :cond_3
    :goto_0
    :try_start_2
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

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

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 138
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object p2

    const-string v0, "email"

    .line 141
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 142
    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p2

    .line 143
    invoke-static {}, Lcom/vk/sdk/VKSdk;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/vk/sdk/VKAccessToken;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object p2, p2, Lcom/vk/sdk/VKAccessToken;->email:Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/t;->d:Lcom/vk/sdk/VKCallback;

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1, p2, p3, v0}, Lcom/vk/sdk/VKSdk;->onActivityResult(IILandroid/content/Intent;Lcom/vk/sdk/VKCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 p2, -0x1

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->a:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    .line 58
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/t;->h()V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 59
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/t;->e:Z

    if-eqz p1, :cond_0

    .line 60
    invoke-static {}, Lcom/vk/sdk/VKSdk;->logout()V

    :cond_0
    if-eqz p2, :cond_1

    .line 63
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->a:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    .line 65
    invoke-static {}, Lcom/vk/sdk/VKSdk;->isLoggedIn()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 67
    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 71
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v3, v4, v0

    .line 73
    invoke-virtual {p1, v4}, Lcom/vk/sdk/VKAccessToken;->hasScope([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {}, Lcom/vk/sdk/VKSdk;->logout()V

    :cond_3
    move p1, p2

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    if-eqz p1, :cond_5

    const/16 p2, 0x12c

    goto :goto_2

    :cond_5
    const/16 p2, 0x12d

    .line 83
    :goto_2
    invoke-interface {p3, p2, p1}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :cond_6
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->a:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    .line 91
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/t$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/t$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/t;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    .line 115
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p1, 0xcd

    .line 116
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p2

    .line 120
    invoke-static {}, Lcom/vk/sdk/VKSdk;->isLoggedIn()Z

    move-result p3

    .line 121
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    invoke-static {}, Lcom/vk/sdk/VKSdk;->isLoggedIn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 123
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v3

    .line 125
    invoke-virtual {p2, v5}, Lcom/vk/sdk/VKAccessToken;->hasScope([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    const/4 p3, 0x0

    :cond_4
    if-eqz p3, :cond_5

    .line 132
    iget-object p1, p2, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 134
    :cond_5
    sget-object p2, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p2

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    invoke-direct {p3, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;-><init>(Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-static {p1, p2, p3}, Lcom/netease/mpay/oversea/ui/c;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V

    :goto_0
    return-void

    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    const/16 p1, 0xcc

    .line 135
    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :cond_7
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/t;->e:Z

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c;->a:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/t;->e:Z

    if-nez v0, :cond_1

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 p2, -0x4

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 25
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/t;->h()V

    goto :goto_0

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/t;->d:Lcom/vk/sdk/VKCallback;

    if-nez p2, :cond_3

    .line 28
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/t$a;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/thirdapi/t$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/t;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/t;->d:Lcom/vk/sdk/VKCallback;

    .line 41
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/t;->i()Ljava/util/List;

    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    invoke-static {p1, v0}, Lcom/vk/sdk/VKSdk;->login(Landroid/app/Activity;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->m(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
