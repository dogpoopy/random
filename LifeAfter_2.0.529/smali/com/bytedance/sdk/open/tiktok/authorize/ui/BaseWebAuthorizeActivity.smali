.class public abstract Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;
.super Landroid/app/Activity;
.source "BaseWebAuthorizeActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$AuthWebViewClient;
    }
.end annotation


# static fields
.field private static final MSG_LOADING_TIME_OUT:I = 0x64

.field private static final RES_ID:Ljava/lang/String; = "id"

.field private static final RES_LAYOUT:Ljava/lang/String; = "layout"

.field private static final RES_STRING:Ljava/lang/String; = "string"

.field protected static final WAP_AUTHORIZE_URL:Ljava/lang/String; = "wap_authorize_url"


# instance fields
.field OP_ERROR_CONNECT_TIMEOUT:I

.field OP_ERROR_NETWORK_ERROR:I

.field OP_ERROR_NO_CONNECTION:I

.field protected isShowNetworkError:Z

.field protected mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

.field protected mBaseErrorDialog:Landroid/app/AlertDialog;

.field protected mCancelImg:Landroid/widget/ImageView;

.field protected mContainer:Landroid/widget/RelativeLayout;

.field protected mContentWebView:Landroid/webkit/WebView;

.field private mContext:Landroid/content/Context;

.field protected mHasExecutingRequest:Z

.field protected mHeaderView:Landroid/widget/RelativeLayout;

.field private mLastErrorCode:I

.field protected mLoadingLayout:Landroid/widget/FrameLayout;

.field protected mStatusDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, -0xc

    .line 53
    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->OP_ERROR_NO_CONNECTION:I

    const/16 v0, -0xd

    .line 54
    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->OP_ERROR_CONNECT_TIMEOUT:I

    const/16 v0, -0xf

    .line 55
    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->OP_ERROR_NETWORK_ERROR:I

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mStatusDestroyed:Z

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->isShowNetworkError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->handleRedirect(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLastErrorCode:I

    return p0
.end method

.method static synthetic access$102(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLastErrorCode:I

    return p1
.end method

.method private handleRedirect(Ljava/lang/String;)Z
    .locals 5

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    if-eqz v0, :cond_4

    .line 374
    iget-object v2, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->redirectUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "code"

    .line 378
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    .line 379
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scopes"

    .line 380
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "errCode"

    .line 382
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string p1, ""

    .line 391
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->redirectToClientApp(Ljava/lang/String;I)V

    return v1

    .line 394
    :cond_3
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->redirectToClientApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method private initView()V
    .locals 3

    .line 270
    sget v0, Lcom/bytedance/sdk/open/tiktok/R$id;->open_rl_container:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 272
    sget v0, Lcom/bytedance/sdk/open/tiktok/R$id;->open_header_view:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mHeaderView:Landroid/widget/RelativeLayout;

    .line 274
    sget v0, Lcom/bytedance/sdk/open/tiktok/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mCancelImg:Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mCancelImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$1;-><init>(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->setContainerViewBgColor()V

    .line 283
    sget v0, Lcom/bytedance/sdk/open/tiktok/R$id;->open_loading_group:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLoadingLayout:Landroid/widget/FrameLayout;

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLoadingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLoadingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 288
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLoadingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 290
    :cond_0
    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->initWebView(Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    .line 296
    sget v2, Lcom/bytedance/sdk/open/tiktok/R$id;->open_header_view:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private redirectToClientApp(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->redirectToClientApp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private redirectToClientApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 218
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;

    invoke-direct {v0}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;-><init>()V

    .line 219
    iput-object p1, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    .line 220
    iput p3, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->errorCode:I

    .line 221
    iput-object p2, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->state:Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->sendInnerResponse(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V

    .line 223
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->finish()V

    return-void
.end method

.method private redirectToClientApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 234
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;

    invoke-direct {v0}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;-><init>()V

    .line 235
    iput-object p1, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->authCode:Ljava/lang/String;

    .line 236
    iput p4, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->errorCode:I

    .line 237
    iput-object p2, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->state:Ljava/lang/String;

    .line 238
    iput-object p3, v0, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Response;->grantedPermissions:Ljava/lang/String;

    .line 239
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->sendInnerResponse(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected cancelLoad(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 503
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->OP_ERROR_NETWORK_ERROR:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->showNetworkErrorDialog(I)V

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->isShowNetworkError:Z

    return-void
.end method

.method protected configWebView()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$AuthWebViewClient;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$AuthWebViewClient;-><init>(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected abstract errorCode2Message(I)Ljava/lang/String;
.end method

.method protected abstract getAuthPath()Ljava/lang/String;
.end method

.method protected abstract getDomain()Ljava/lang/String;
.end method

.method protected abstract getHost()Ljava/lang/String;
.end method

.method protected getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 446
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/open/tiktok/R$layout;->layout_open_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z
.end method

.method public final handleRequestIntent()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->finish()V

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->isShowNetworkError:Z

    .line 182
    iget v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->OP_ERROR_NO_CONNECTION:I

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->showNetworkErrorDialog(I)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->startLoading()V

    .line 185
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->configWebView()V

    .line 186
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->getAuthPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lcom/bytedance/sdk/open/tiktok/authorize/WebViewHelper;->getLoadUrl(Landroid/content/Context;Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected initActions()V
    .locals 0

    return-void
.end method

.method public initWebView(Landroid/content/Context;)V
    .locals 2

    .line 303
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    .line 304
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public isDestroyed()Z
    .locals 2

    .line 434
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 435
    iget-boolean v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mStatusDestroyed:Z

    return v0

    .line 438
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 440
    :catch_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mStatusDestroyed:Z

    return v0
.end method

.method protected abstract isNetworkAvailable()Z
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, ""

    const/4 v1, -0x2

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->redirectToClientApp(Ljava/lang/String;I)V

    return-void
.end method

.method protected onCancel(I)V
    .locals 1

    const-string v0, ""

    .line 428
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->redirectToClientApp(Ljava/lang/String;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    iput-object p0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    .line 135
    sget p1, Lcom/bytedance/sdk/open/tiktok/R$layout;->layout_open_web_authorize:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->setContentView(I)V

    .line 136
    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->initView()V

    .line 137
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->initActions()V

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->handleRequestIntent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mStatusDestroyed:Z

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContentWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    return-void
.end method

.method public onErrorIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mBaseErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mBaseErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onReq(Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;)V
    .locals 2

    .line 143
    instance-of v0, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    .line 145
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mAuthRequest:Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/authorize/callback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->redirectUri:Ljava/lang/String;

    const/4 p1, -0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onResp(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected abstract sendInnerResponse(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
.end method

.method public sendInnerResponse(Ljava/lang/String;Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 244
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 249
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 250
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 251
    iget-object p3, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 252
    iget-object v2, p2, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->callerLocalEntry:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3, p1}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->callerLocalEntry:Ljava/lang/String;

    .line 253
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 254
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 257
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 258
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method protected setContainerViewBgColor()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const-string v1, "#ffffff"

    .line 400
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected showNetworkErrorDialog(I)V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mBaseErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mBaseErrorDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 512
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bytedance/sdk/open/tiktok/R$layout;->layout_open_network_error_dialog:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 514
    sget v1, Lcom/bytedance/sdk/open/tiktok/R$id;->tv_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$4;-><init>(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    new-instance p1, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103006b

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 523
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 524
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mBaseErrorDialog:Landroid/app/AlertDialog;

    .line 527
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mBaseErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected showSslErrorDialog(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .line 455
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {p2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_untrusted:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 467
    :pswitch_1
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_mismatched:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 464
    :pswitch_2
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_expired:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 470
    :pswitch_3
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_notyetvalid:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_continue:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 474
    sget v1, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 475
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    .line 476
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$2;-><init>(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    .line 482
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/bytedance/sdk/open/tiktok/R$string;->aweme_open_ssl_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity$3;-><init>(Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 488
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 492
    :catch_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->cancelLoad(Landroid/webkit/SslErrorHandler;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected startLoading()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLoadingLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/open/tiktok/utils/OpenUtils;->setViewVisibility(Landroid/view/View;I)V

    return-void
.end method

.method protected stopLoading()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/ui/BaseWebAuthorizeActivity;->mLoadingLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/open/tiktok/utils/OpenUtils;->setViewVisibility(Landroid/view/View;I)V

    return-void
.end method
