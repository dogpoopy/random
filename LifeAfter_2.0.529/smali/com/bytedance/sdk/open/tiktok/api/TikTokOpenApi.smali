.class public interface abstract Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;
.super Ljava/lang/Object;
.source "TikTokOpenApi.java"


# virtual methods
.method public abstract authorize(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z
.end method

.method public abstract isAppInstalled()Z
.end method

.method public abstract isAppSupportAuthorization()Z
.end method

.method public abstract isAppSupportShare()Z
.end method

.method public abstract isShareSupportFileProvider()Z
.end method

.method public abstract share(Lcom/bytedance/sdk/open/tiktok/share/Share$Request;)Z
.end method

.method public abstract share(Lcom/bytedance/sdk/open/tiktok/share/ShareRequest;)Z
.end method
