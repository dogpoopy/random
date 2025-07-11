.class Lcom/netease/mpay/oversea/thirdapi/u$a;
.super Ljava/lang/Object;
.source "VkIdApi.java"

# interfaces
.implements Lcom/vk/id/VKID$AuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/u;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/u;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/u$a;->a:Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/vk/id/VKIDAuthFail;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VKID onFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vk/id/VKIDAuthFail;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 7
    instance-of v0, p1, Lcom/vk/id/VKIDAuthFail$Canceled;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/u$a;->a:Lcom/netease/mpay/oversea/thirdapi/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-virtual {p1}, Lcom/vk/id/VKIDAuthFail;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/u$a;->a:Lcom/netease/mpay/oversea/thirdapi/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-virtual {p1}, Lcom/vk/id/VKIDAuthFail;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/vk/id/AccessToken;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VKID onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getUserID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getUserData()Lcom/vk/id/VKIDUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/VKIDUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/u$a;->a:Lcom/netease/mpay/oversea/thirdapi/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/u$a;->a:Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getUserData()Lcom/vk/id/VKIDUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/VKIDUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/u;->a(Lcom/netease/mpay/oversea/thirdapi/u;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/u$a;->a:Lcom/netease/mpay/oversea/thirdapi/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getUserID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vk/id/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
