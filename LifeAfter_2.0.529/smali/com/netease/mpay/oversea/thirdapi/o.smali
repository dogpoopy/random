.class public Lcom/netease/mpay/oversea/thirdapi/o;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "NaverApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/o$b;,
        Lcom/netease/mpay/oversea/thirdapi/o$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
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

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/o$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/thirdapi/o$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/o;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/o$c;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/o$c;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/s;->b([Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object p2

    .line 5
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/nhn/android/naverlogin/OAuthLogin;->enableNaverAppLoginOnly()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/nhn/android/naverlogin/OAuthLogin;->enableWebViewLoginOnly()V

    .line 10
    :goto_0
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nhn/android/naverlogin/OAuthLogin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/o$b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-direct {v0, v1, p1}, Lcom/netease/mpay/oversea/thirdapi/o$b;-><init>(Lcom/netease/mpay/oversea/p;Landroid/content/Context;)V

    invoke-virtual {p2, p1, v0}, Lcom/nhn/android/naverlogin/OAuthLogin;->startOauthLoginActivity(Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->z:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
