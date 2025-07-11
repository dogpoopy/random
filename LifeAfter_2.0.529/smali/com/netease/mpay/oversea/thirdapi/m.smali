.class public Lcom/netease/mpay/oversea/thirdapi/m;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "KakaoApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kakao/sdk/common/KakaoSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    return-object p1
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

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 24
    invoke-static {}, Lcom/kakao/sdk/auth/TokenManager;->getInstance()Lcom/kakao/sdk/auth/TokenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManager;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x3

    const-string v1, "token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {v1, v0, p1, v0}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/m$c;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/m$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/m;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/user/UserApiClient;->logout(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/user/UserApiClient;->isKakaoTalkLoginAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p2

    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/m$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/m$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/m;)V

    invoke-virtual {p2, p1, v0}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kakao/sdk/auth/model/Prompt;

    sget-object v1, Lcom/kakao/sdk/auth/model/Prompt;->LOGIN:Lcom/kakao/sdk/auth/model/Prompt;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/m$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/m$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/m;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->y:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
