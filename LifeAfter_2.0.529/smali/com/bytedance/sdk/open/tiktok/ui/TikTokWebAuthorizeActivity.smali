.class public Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;
.super Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;
.source "TikTokWebAuthorizeActivity.java"


# static fields
.field public static final AUTH_HOST:Ljava/lang/String; = "open-api.tiktok.com"

.field public static final AUTH_PATH:Ljava/lang/String; = "/platform/oauth/connect/"

.field public static final DOMAIN:Ljava/lang/String; = "open-api.tiktok.com"

.field protected static final LOCAL_ENTRY_ACTIVITY:Ljava/lang/String; = "tiktokapi.TikTokEntryActivity"


# instance fields
.field private ttOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected errorCode2Message(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method protected getAuthPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/platform/oauth/connect/"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "open-api.tiktok.com"

    return-object v0
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    const-string v0, "open-api.tiktok.com"

    return-object v0
.end method

.method protected handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->ttOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    move-result p1

    return p1
.end method

.method protected isNetworkAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->ttOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    .line 33
    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->mCancelImg:Landroid/widget/ImageView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p1, 0x0

    .line 35
    invoke-static {p0, p1}, Lcom/bytedance/sdk/open/tiktok/utils/ViewUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method protected sendInnerResponse(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p2, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p2, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->extras:Landroid/os/Bundle;

    .line 54
    :cond_0
    iget-object v0, p2, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->extras:Landroid/os/Bundle;

    const-string v1, "wap_authorize_url"

    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "tiktokapi.TikTokEntryActivity"

    .line 57
    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->sendInnerResponse(Ljava/lang/String;Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)Z

    return-void
.end method

.method protected setContainerViewBgColor()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;->mContainer:Landroid/widget/RelativeLayout;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
