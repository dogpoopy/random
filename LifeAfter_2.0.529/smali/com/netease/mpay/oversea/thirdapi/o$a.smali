.class Lcom/netease/mpay/oversea/thirdapi/o$a;
.super Ljava/lang/Object;
.source "NaverApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/o;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/o;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o$a;->b:Lcom/netease/mpay/oversea/thirdapi/o;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/o$a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "silent login:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/o$a;->b:Lcom/netease/mpay/oversea/thirdapi/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {v1, v2, v0, v2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o$a;->b:Lcom/netease/mpay/oversea/thirdapi/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v1, -0x2

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
