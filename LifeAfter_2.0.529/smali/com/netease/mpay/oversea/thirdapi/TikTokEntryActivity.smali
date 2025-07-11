.class public Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;
.super Landroid/app/Activity;
.source "TikTokEntryActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;


# instance fields
.field a:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/r$c;->a()Lcom/netease/mpay/oversea/thirdapi/r$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/r$c;->a(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :catchall_0
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;->a:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    return-void
.end method

.method public onErrorIntent(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;->a(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReq(Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onResp[failed]: authCode is NULL"

    .line 5
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;->a(I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResp[success]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/r$c;->a()Lcom/netease/mpay/oversea/thirdapi/r$c;

    move-result-object v0

    iget-object p1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/r$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResp[failed]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 13
    iget p1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->errorCode:I

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;->a(I)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/thirdapi/TikTokEntryActivity;->a(I)V

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
