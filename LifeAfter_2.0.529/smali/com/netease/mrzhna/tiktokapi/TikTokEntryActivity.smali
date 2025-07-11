.class public Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;
.super Landroid/app/Activity;
.source "TikTokEntryActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "TikTokEntryActivity"


# instance fields
.field private base:Lcom/netease/ntunisdk/base/SdkBase;

.field private ttOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v0, "TikTokEntryActivity"

    const-string v1, "BdEntryActivity init!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iput-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    .line 31
    invoke-static {p0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->ttOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    .line 32
    iget-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->ttOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-virtual {p0}, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    .line 33
    return-void
.end method

.method public onErrorIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->finish()V

    .line 74
    return-void
.end method

.method public onReq(Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onResp(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;

    .line 44
    const-string v1, "TikTokEntryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " code\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "suberrorcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->subErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Response;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v0, p1, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 62
    const-string v0, "TikTokEntryActivity"

    const-string v1, "share failed!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iput-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    .line 64
    iget-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->shareFinished(Z)V

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->finish()V

    .line 69
    return-void

    .line 47
    :pswitch_0
    const-string v0, "TikTokEntryActivity"

    const-string v1, "share success!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iput-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    .line 49
    iget-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->shareFinished(Z)V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "TikTokEntryActivity"

    const-string v1, "share failed!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iput-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    .line 54
    iget-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->shareFinished(Z)V

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v0, "TikTokEntryActivity"

    const-string v1, "share cancel!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iput-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    .line 59
    iget-object v0, p0, Lcom/netease/mrzhna/tiktokapi/TikTokEntryActivity;->base:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/SdkBase;->shareFinished(Z)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
