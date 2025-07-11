.class public Lcom/netease/ntunisdk/base/WebViewProxy;
.super Ljava/lang/Object;
.source "WebViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "UniSDK WebViewProxy"

.field private static volatile c:Lcom/netease/ntunisdk/base/WebViewProxy;

.field private static d:Z

.field private static e:Lcom/netease/ntunisdk/base/OnWebViewListener;


# instance fields
.field a:Landroid/os/Handler;

.field private f:Landroid/content/Context;

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/ProgressDialog;

.field private j:I

.field private k:Landroid/widget/Button;

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/RelativeLayout;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    .line 68
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    .line 69
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    .line 74
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    .line 77
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    .line 81
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    .line 82
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    .line 83
    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    .line 88
    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$1;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;)V
    .locals 12

    .line 2145
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    .line 2146
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    .line 2148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 2149
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v2, "WebViewProxy [setForceDarkAllowed]"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setForceDarkAllowed(Z)V

    .line 2153
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "WEBVIEW_FULLFIT"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    .line 2155
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "WEBVIEW_BKCOLOR"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    .line 2156
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2157
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2160
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v4, 0x1

    .line 2163
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v5, 0x2

    .line 2164
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 2165
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2167
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2168
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2169
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2170
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2171
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 2172
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 2173
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2174
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 2175
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ge v5, v7, :cond_2

    .line 2176
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const-string v7, "searchBoxJavaBridge_"

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2177
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const-string v7, "accessibility"

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2178
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const-string v7, "accessibilityTraversal"

    invoke-virtual {v5, v7}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2181
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    .line 2182
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " Unisdk/1.1 NetType/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-static {v8}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 2186
    sget-object v5, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WebViewProxy [init] User Agent:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    const-string v5, "WEBVIEW_SUPPORT_BACK_KEY"

    if-nez v0, :cond_4

    .line 2813
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "unisdk_webview_progressdialog"

    const-string v9, "layout"

    invoke-virtual {v0, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2815
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2816
    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 2818
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v8

    invoke-interface {v8, v5, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2819
    sget-object v9, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "WebViewProxy [checkStatus] isSupportBackKey:"

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    invoke-virtual {v7, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2822
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2823
    invoke-virtual {v7, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2826
    :cond_3
    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2827
    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 2190
    iput-object v7, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    .line 2193
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    new-instance v7, Lcom/netease/ntunisdk/base/WebViewProxy$2;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$2;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2340
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    new-instance v7, Lcom/netease/ntunisdk/base/WebViewProxy$3;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$3;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2348
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    new-instance v7, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    const-string v8, "$CallbackInterface"

    invoke-virtual {v0, v7, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2351
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2357
    iget-object v7, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v7, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2359
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v7, "WEBVIEW_CLBTN"

    invoke-interface {v0, v7, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2361
    sget-object v7, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "WebViewProxy [init] isShowClostBtn="

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2365
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    .line 2366
    new-instance v7, Lcom/netease/ntunisdk/base/WebViewProxy$4;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$4;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2380
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v8, 0x42080000    # 34.0f

    mul-float v0, v0, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v0, v8

    float-to-int v0, v0

    invoke-direct {v7, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2383
    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2384
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2387
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unisdk_webview_close"

    const-string v8, "drawable"

    invoke-virtual {v0, v7, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2388
    iget-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2391
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2395
    :cond_5
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WebViewProxy [init] isFullFit:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unisdk_webview_dialog"

    const-string v8, "style"

    invoke-virtual {v0, v7, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2399
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    goto :goto_0

    .line 2402
    :cond_6
    new-instance v0, Landroid/app/Dialog;

    const v6, 0x103000a

    invoke-direct {v0, p1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    .line 2405
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_7

    .line 2406
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    const/16 v0, 0x600

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 2409
    :cond_7
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2411
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2412
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "WebViewProxy [init] isSupportBackKey:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2415
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2416
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2419
    :cond_8
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2420
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    .line 2422
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$5;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 58
    sput-boolean p0, Lcom/netease/ntunisdk/base/WebViewProxy;->d:Z

    return p0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 791
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "GET"

    .line 793
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 794
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 795
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 796
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 797
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 802
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    .line 799
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_0

    .line 802
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_1
    return v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 804
    :cond_2
    throw v0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/widget/Button;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->k:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/netease/ntunisdk/base/WebViewProxy;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic c()Lcom/netease/ntunisdk/base/OnWebViewListener;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->e:Lcom/netease/ntunisdk/base/OnWebViewListener;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/netease/ntunisdk/base/WebViewProxy;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, ""

    .line 701
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "FULL_UIN"

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 702
    :try_start_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "USERINFO_UID"

    invoke-interface {v3, v4, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 703
    :try_start_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v5, "USERINFO_HOSTID"

    invoke-interface {v4, v5, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 705
    :goto_0
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 708
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 709
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 710
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    const-string v5, "&server="

    const-string v6, "&role_id="

    const-string v7, "&uid="

    if-eqz v4, :cond_2

    .line 711
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "uid"

    .line 712
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 713
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "role_id"

    .line 715
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 716
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v2, "server"

    .line 718
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 719
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 723
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 724
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "?"

    .line 731
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 732
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_4

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 735
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 738
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_3
    return-object p0
.end method

.method private d()V
    .locals 7

    .line 447
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [adjustSize]"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 451
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 452
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [adjustSize] tOrientation="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 456
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v4, "WebViewProxy [adjustSize] need refresh"

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iput v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    .line 460
    :cond_0
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebViewProxy [adjustSize] mNeedRefreshSizeStuts="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    if-eq v3, v2, :cond_1

    .line 463
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [adjustSize] is always the same, stop adjustSize"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    .line 467
    iput v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    .line 468
    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-le v0, v4, :cond_2

    .line 474
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 475
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 476
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 477
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 481
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 483
    :goto_0
    sget-object v4, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewProxy [adjustSize] width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v4, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewProxy [adjustSize] isFullFit:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 488
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 490
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 492
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 493
    sget-object v5, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v6, "WebViewProxy [adjustSize] UniSdkUtils.isTablet true"

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_3

    int-to-double v1, v1

    const-wide v5, 0x3fe199999999999aL    # 0.55

    .line 496
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 497
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_5

    int-to-double v1, v1

    const-wide v5, 0x3fe6666666666666L    # 0.7

    .line 500
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 501
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 505
    :cond_4
    sget-object v2, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v5, "WebViewProxy [adjustSize] UniSdkUtils.isTablet false"

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-double v1, v1

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 506
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-int v1, v1

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v0

    .line 507
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 518
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 519
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 524
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 526
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    move-result v0

    .line 527
    sget-object v1, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebViewProxy [adjustSize] m_webView.requestFocus():"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 530
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6
    return-void
.end method

.method static synthetic e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    return-object p0
.end method

.method private e()Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/WebViewProxy;
    .locals 2

    .line 124
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    if-nez v0, :cond_1

    .line 125
    const-class v0, Lcom/netease/ntunisdk/base/WebViewProxy;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    .line 129
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/ntunisdk/base/WebViewProxy;)I
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->j:I

    return v0
.end method

.method static synthetic j(Lcom/netease/ntunisdk/base/WebViewProxy;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized closeWebView()V
    .locals 2

    monitor-enter p0

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 747
    check-cast v0, Landroid/app/Activity;

    .line 748
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$8;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$8;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disposeWebView()V
    .locals 2

    monitor-enter p0

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 767
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$9;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$9;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doOpenWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 645
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 646
    iget v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->r:I

    .line 647
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$7;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCallbackInterface()Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;
    .locals 1

    .line 135
    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    return-object v0
.end method

.method public declared-synchronized onConfigChange(Landroid/content/res/Configuration;)V
    .locals 5

    monitor-enter p0

    .line 610
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [onConfigChange] start"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_2

    .line 612
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v2, "WebViewProxy [onConfigChange] has isInitialized"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 615
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v2, "WebViewProxy [onConfigChange] Configuration.ORIENTATION_LANDSCAPE..."

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    goto :goto_0

    .line 621
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 622
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v3, "WebViewProxy [onConfigChange] Configuration.ORIENTATION_PORTRAIT..."

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 625
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [onConfigChange] mScreenWidthDp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", config.screenHeightDp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewProxy [onConfigChange] mScreenHeightDp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", config.screenHeightDp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v3, :cond_2

    .line 629
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v3, "WebViewProxy [onConfigChange] call adjustSize"

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iput v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->p:I

    .line 631
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    .line 637
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 638
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    .line 639
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    .line 640
    sget-object p1, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewProxy [onConfigChange] reset size, mScreenWidthDp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeightDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 601
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [onPause]"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    .line 590
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    sget-object v0, Lcom/netease/ntunisdk/base/WebViewProxy;->b:Ljava/lang/String;

    const-string v1, "WebViewProxy [onResume]"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/WebViewProxy;->d()V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openWebView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "1"

    .line 536
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    .line 537
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "WEBVIEW_MODE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 540
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "WEBVIEW_FULLFIT"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    .line 541
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v1, "WEBVIEW_CLBTN"

    invoke-interface {p1, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "WEBVIEW_SUPPORT_BACK_KEY"

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "methodId"

    const-string v4, "NGWebViewOpenURL"

    .line 546
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "URLString"

    .line 547
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "intercept_schemes"

    const-string v3, "unisdk-jsbridge"

    .line 548
    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "additionalUserAgent"

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Unisdk/2.0 NetType/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "qstn_close_btn"

    .line 551
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "supportBackKey"

    .line 554
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isFullScreen"

    .line 557
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 559
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 560
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 561
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 563
    div-int/lit8 v0, p2, 0xa

    .line 564
    div-int/lit8 v1, p1, 0xa

    mul-int/lit8 p2, p2, 0x8

    .line 565
    div-int/lit8 p2, p2, 0xa

    mul-int/lit8 p1, p1, 0x8

    .line 566
    div-int/lit8 p1, p1, 0xa

    const-string v3, "origin_x"

    .line 567
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "origin_y"

    .line 568
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "width"

    .line 569
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "height"

    .line 570
    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 572
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 574
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 579
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$6;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;)V
    .locals 0

    .line 139
    sput-object p1, Lcom/netease/ntunisdk/base/WebViewProxy;->e:Lcom/netease/ntunisdk/base/OnWebViewListener;

    return-void
.end method
