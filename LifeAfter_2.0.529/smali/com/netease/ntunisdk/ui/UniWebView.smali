.class public Lcom/netease/ntunisdk/ui/UniWebView;
.super Landroid/webkit/WebView;
.source "UniWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;
    }
.end annotation


# static fields
.field public static final ACTION_GETNETWORKTYPE:Ljava/lang/String; = "getNetworkType"

.field public static final ALIPAY_PREFIX:Ljava/lang/String; = "alipays://platformapi/startApp?"

.field public static final CB_ACTION:Ljava/lang/String; = "func"

.field public static final CB_NATIVE2H5:Ljava/lang/String; = "callback"

.field public static final CB_PARAMS:Ljava/lang/String; = "params"

.field public static final HTTP_PREFIX:Ljava/lang/String; = "http"

.field public static final IDV_PREFIX:Ljava/lang/String; = "idvurl://"

.field private static final NTWKJSBridgeJS:Ljava/lang/String; = "NTWKJSBridge.js"

.field public static final REQUEST_CODE_FILE_CHOOSER:I = 0x2537

.field private static final TAG:Ljava/lang/String; = "UniSDK UniWebView"

.field public static final UNIWEB_PREFIX:Ljava/lang/String; = "uniweb://"

.field public static final UNI_JSBRIDGE:Ljava/lang/String; = "unisdk-jsbridge"

.field public static final UNI_JSBRIDGE_PREFIX:Ljava/lang/String; = "unisdk-jsbridge://"

.field public static final URLPROXY_PREFIX:Ljava/lang/String; = "nativerequest/"


# instance fields
.field private callback:Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;

.field private errorView:Landroid/view/View;

.field private loadingView:Landroid/view/View;

.field private mUploadCallBackAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private myCtx:Landroid/content/Context;

.field private webViewIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    .line 99
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView(Landroid/content/Context;)V

    .line 101
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->initWebView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 93
    iput p2, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    .line 106
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    .line 107
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->initWebView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 93
    iput p2, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    .line 113
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->initWebView()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/ui/UniWebView;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/ui/UniWebView;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/ui/UniWebView;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->interceptUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/ui/UniWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/ui/UniWebView;->runCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/ui/UniWebView;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/ui/UniWebView;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/ui/UniWebView;->getJS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/ui/UniWebView;Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->errorView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$702(Lcom/netease/ntunisdk/ui/UniWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/ui/UniWebView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->showFileChooser()V

    return-void
.end method

.method static synthetic access$902(Lcom/netease/ntunisdk/ui/UniWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->mUploadCallBackAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 3

    .line 212
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/BitmapUtil;->createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 215
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/netease/ntunisdk/BitmapUtil;->deleteFile(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    const-string v1, "UniSDK UniWebView"

    if-nez v0, :cond_1

    const-string p1, "can\'t create a bitmap"

    .line 218
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/netease/ntunisdk/BitmapUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "can\'t get a save path"

    .line 225
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 229
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, p3}, Lcom/netease/ntunisdk/BitmapUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p3

    if-eqz p3, :cond_3

    return-object p1

    :cond_3
    const-string p1, "can\'t save bitmap"

    .line 232
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private errorView(Landroid/content/Context;)V
    .locals 5

    .line 337
    iget v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 345
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "unisdk_webview_error"

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/ui/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    .line 347
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "unisdk_webview_icon_iv"

    invoke-static {v0, v4}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 348
    iget v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    if-eq v1, v0, :cond_2

    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "unisdk_webview_reload_btn"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 356
    new-instance v0, Lcom/netease/ntunisdk/ui/UniWebView$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/ui/UniWebView$1;-><init>(Lcom/netease/ntunisdk/ui/UniWebView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 372
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private getActivityFromView(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 569
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 570
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 571
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 573
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "fromFile Exception : "

    const-string v4, "UniSDK UniWebView"

    if-ge p1, v2, :cond_1

    .line 177
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ngwebview.fileprovider"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/netease/ntunisdk/NgWebviewFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUriForFile Exception : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v1, :cond_2

    .line 192
    :try_start_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v1
.end method

.method private getJS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getJS, fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK UniWebView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 619
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 620
    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x800

    :try_start_2
    new-array v1, v1, [B

    .line 623
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 624
    invoke-virtual {p2, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 626
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 632
    :try_start_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 634
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz p1, :cond_1

    .line 639
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 641
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v1

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_6

    :catch_3
    move-exception v1

    move-object p2, v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    goto :goto_6

    :catch_4
    move-exception v1

    move-object p1, v0

    move-object p2, p1

    .line 628
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_2

    .line 632
    :try_start_6
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    .line 634
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz p1, :cond_3

    .line 639
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 641
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    return-object v0

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz p2, :cond_4

    .line 632
    :try_start_8
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception p2

    .line 634
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz p1, :cond_5

    .line 639
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    .line 641
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 644
    :cond_5
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private getNetworkType(Ljava/lang/String;)V
    .locals 4

    .line 796
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errno"

    const/4 v2, 0x0

    .line 798
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    const-string v2, ""

    .line 799
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 801
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/NetConnectivity;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    .line 802
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 803
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniSDK UniWebView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 808
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hasPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "UniSDK UniWebView"

    const/4 v1, 0x0

    .line 784
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x80

    .line 785
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPackageInstalled, info="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 790
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private initWebView()V
    .locals 4

    .line 378
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 381
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 382
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    .line 383
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 386
    :cond_0
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 387
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 388
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 390
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/ui/UniWebView$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/ui/UniWebView$2;-><init>(Lcom/netease/ntunisdk/ui/UniWebView;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 522
    new-instance v0, Lcom/netease/ntunisdk/ui/UniWebView$3;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/ui/UniWebView$3;-><init>(Lcom/netease/ntunisdk/ui/UniWebView;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 552
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->requestFocus()Z

    return-void
.end method

.method private interceptUrl(Ljava/lang/String;)Z
    .locals 6

    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x11

    new-array v0, v0, [C

    .line 662
    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uniweb://"

    .line 664
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "func"

    const-string v4, "UniSDK UniWebView"

    if-eqz v2, :cond_2

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptUrl url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeUrl url:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 671
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSONException:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getNetworkType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "callback"

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->getNetworkType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 679
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->runCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 681
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "android.intent.action.VIEW"

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 682
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->isWxInstall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 684
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 686
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v5

    .line 690
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0246

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 692
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 694
    :cond_4
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->goBack()V

    goto/16 :goto_5

    :cond_5
    const-string v0, "alipays://platformapi/startApp?"

    .line 696
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 697
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->isAliPayInstalled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 698
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->startAlipayActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0244

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 702
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    return v5

    :cond_8
    const-string v0, "idvurl://"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "unisdk-jsbridge://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_6

    :cond_9
    const-string v0, "intent://"

    .line 716
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "http"

    if-eqz v0, :cond_e

    .line 718
    :try_start_1
    invoke-static {p1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 720
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    .line 721
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 724
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 725
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    return v1

    :cond_c
    :goto_2
    const-string v0, "browser_fallback_url"

    .line 726
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return v5

    :catch_1
    :cond_d
    return v1

    .line 738
    :cond_e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 739
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x30000000

    .line 740
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 742
    :try_start_2
    iget-object v2, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity failed with url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0245

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 748
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_4
    return v5

    :cond_10
    :goto_5
    return v1

    .line 707
    :cond_11
    :goto_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v1, "interceptUrl"

    .line 709
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "params"

    .line 710
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->runCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 713
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7
    return v5

    nop

    :array_0
    .array-data 2
        0x77s
        0x65s
        0x69s
        0x78s
        0x69s
        0x6es
        0x3as
        0x2fs
        0x2fs
        0x77s
        0x61s
        0x70s
        0x2fs
        0x70s
        0x61s
        0x79s
        0x3fs
    .end array-data
.end method

.method private isAliPayInstalled()Z
    .locals 3

    const-string v0, "alipays://platformapi/startApp"

    .line 771
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 772
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 773
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWxInstall()Z
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->hasPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadingView(Landroid/content/Context;)V
    .locals 3

    .line 318
    iget v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 322
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "unisdk_webview_loading"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    .line 324
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "unisdk_webview_icon_iv"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 325
    iget v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    if-eq v1, v0, :cond_1

    .line 326
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 329
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private runCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->callback:Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;

    if-eqz v0, :cond_0

    .line 821
    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;->callback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "UniSDK UniWebView"

    const-string p2, "UniWebViewCallback null"

    .line 823
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showFileChooser()V
    .locals 3

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-direct {p0, p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getActivityFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x2537

    .line 563
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private startAlipayActivity(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 760
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.category.BROWSABLE"

    .line 761
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 762
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 763
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 765
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private uploadResultMessage(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "UniSDK UniWebView"

    const-string v1, "uploadResultMessage"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->myCtx:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-direct {p0, v1, p1, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 152
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/UniWebView;->getFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->mUploadCallBackAboveL:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 158
    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 160
    :cond_2
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 162
    :goto_2
    iput-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->mUploadCallBackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_3

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 165
    iput-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->mUploadMessage:Landroid/webkit/ValueCallback;

    :goto_3
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 650
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateJavascript method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK UniWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    .line 592
    new-instance p1, Lcom/netease/ntunisdk/ui/UniWebView$4;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/ui/UniWebView$4;-><init>(Lcom/netease/ntunisdk/ui/UniWebView;)V

    invoke-super {p0, v0, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "evaluateJavascript method null"

    .line 602
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public goBack()V
    .locals 0

    .line 654
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public handleNativeNotify(Ljava/lang/String;)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.handleNativeNotify&&window.handleNativeNotify("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNativeNotify js\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK UniWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 247
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public httpGet(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 4

    .line 837
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 838
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 839
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 840
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "accept"

    const-string v3, "*/*"

    .line 841
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    .line 842
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a98

    .line 843
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x7530

    .line 844
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "get"

    .line 846
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "GET"

    .line 847
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "POST"

    .line 849
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p3, :cond_1

    .line 852
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 853
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 854
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 855
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 856
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 860
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 861
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 863
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8bf7\u6c42\u63d0\u4ea4\u5931\u8d25:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniSDK UniWebView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->errorView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", data="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UniSDK UniWebView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x2537

    if-ne p1, p2, :cond_0

    .line 133
    invoke-direct {p0, p3}, Lcom/netease/ntunisdk/ui/UniWebView;->uploadResultMessage(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 119
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    const-string v0, "{\"name\": \"onScreenUnlock\"}"

    .line 122
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->handleNativeNotify(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "{\"name\": \"onScreenLock\"}"

    .line 127
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->handleNativeNotify(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadingIcon(I)V
    .locals 3

    .line 295
    iput p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->webViewIcon:I

    .line 297
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/UniWebView;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "unisdk_webview_icon_iv"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 299
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 300
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setUniWebViewCallback(Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/UniWebView;->callback:Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 8

    .line 259
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "YY_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-object v2, p0

    move-object v5, p1

    .line 259
    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/ui/UniWebView;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/ui/UniWebView;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 280
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " uniweb/%s uniweb-apk-version/%s uniweb-script-version/%s uniweb-channel/%s"

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p5

    .line 285
    invoke-virtual {p5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/UniWebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    .line 289
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extraInfo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UniSDK UniWebView"

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
