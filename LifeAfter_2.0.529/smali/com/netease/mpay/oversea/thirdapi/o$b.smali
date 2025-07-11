.class public Lcom/netease/mpay/oversea/thirdapi/o$b;
.super Lcom/nhn/android/naverlogin/OAuthLoginHandler;
.source "NaverApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/oversea/p;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/p;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nhn/android/naverlogin/OAuthLoginHandler;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->a:Lcom/netease/mpay/oversea/p;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized run(Z)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "naver result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2716

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "naver loginSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->a:Lcom/netease/mpay/oversea/p;

    if-eqz p1, :cond_4

    const-string v1, ""

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->a:Lcom/netease/mpay/oversea/p;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 12
    invoke-interface {v1, v2, p1, v2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 16
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->a:Lcom/netease/mpay/oversea/p;

    if-eqz p1, :cond_4

    const-string v1, ""

    .line 17
    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 22
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getState(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->getLastErrorCode(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naver loginFailed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 25
    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_LOGIN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    if-eq v2, p1, :cond_2

    sget-object v2, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->OK:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    if-ne v2, p1, :cond_3

    :cond_2
    sget-object p1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ACTIVITY_IS_SINGLE_TASK:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v1, :cond_3

    monitor-exit p0

    return-void

    .line 26
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->b:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->getLastErrorDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naver loginFailed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->a:Lcom/netease/mpay/oversea/p;

    if-eqz v2, :cond_4

    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v2, v1, p1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 32
    :catch_1
    :try_start_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$b;->a:Lcom/netease/mpay/oversea/p;

    if-eqz p1, :cond_4

    const-string v1, ""

    .line 33
    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
