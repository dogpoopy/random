.class public Lcom/netease/ntunisdk/NgWebviewProxy;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"


# static fields
.field public static final ACTION_CLOSEWEBVIEW:Ljava/lang/String; = "closeWebView"

.field public static final ACTION_COPE2PASTEBOARD:Ljava/lang/String; = "copyToPasteboard"

.field public static final ACTION_OPENBROWSER:Ljava/lang/String; = "openBrowser"

.field public static final ACTION_SAVEWEBIMAGE:Ljava/lang/String; = "saveWebImage"

.field public static final ACTION_SHAREMODULE:Ljava/lang/String; = "shareModule"

.field private static final MSG_PAGE_TIMEOUT:I = 0x1

.field private static final REQUEST_CODE_ASK_PERMISSIONS:I

.field private static TAG:Ljava/lang/String; = "UniSDK NgWebviewProxy"

.field private static mProxy:Lcom/netease/ntunisdk/NgWebviewProxy;


# instance fields
.field private isPageError:Z

.field private isPageFinished:Z

.field private mAct:Landroid/app/Activity;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifier:Ljava/lang/String;

.field private mIimageURL:Ljava/lang/String;

.field private mIndex:I

.field private mRightNavigationBar:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetSdkVersion:I

.field private mTopNavigationBar:Landroid/widget/RelativeLayout;

.field private qstnClose:Landroid/widget/ImageView;

.field private uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

.field private wvParams:Lcom/netease/ntunisdk/WebviewParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 119
    sget-object v0, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/NgWebviewProxy;->REQUEST_CODE_ASK_PERMISSIONS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->isPageFinished:Z

    .line 95
    iput-boolean v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->isPageError:Z

    const/4 v1, 0x1

    .line 96
    iput v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIndex:I

    .line 97
    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$1;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mHandler:Landroid/os/Handler;

    .line 118
    iput v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTargetSdkVersion:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/ui/UniWebView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/NgWebviewProxy;Lcom/netease/ntunisdk/ui/UniWebView;)Lcom/netease/ntunisdk/ui/UniWebView;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->qstnClose:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/NgWebviewProxy;->getRemoteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/NgWebviewProxy;Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/NgWebviewProxy;->saveImageToPhotos(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/NgWebviewProxy;->onJsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/NgWebviewProxy;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->isPageFinished:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/NgWebviewProxy;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/NgWebviewProxy;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->isPageError:Z

    return p0
.end method

.method static synthetic access$302(Lcom/netease/ntunisdk/NgWebviewProxy;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->isPageError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/NgWebviewProxy;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIndex:I

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/app/Dialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/netease/ntunisdk/NgWebviewProxy;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/WebviewParams;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    return-object p0
.end method

.method static synthetic access$702(Lcom/netease/ntunisdk/NgWebviewProxy;Lcom/netease/ntunisdk/WebviewParams;)Lcom/netease/ntunisdk/WebviewParams;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/NgWebviewProxy;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->closeWebview()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private closeWebview()V
    .locals 4

    .line 478
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy$9;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$9;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCutoutHeight()I
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    .line 271
    sget-object v1, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCutout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/NgWebviewProxy;
    .locals 2

    .line 126
    sget-object v0, Lcom/netease/ntunisdk/NgWebviewProxy;->mProxy:Lcom/netease/ntunisdk/NgWebviewProxy;

    if-nez v0, :cond_1

    .line 127
    const-class v0, Lcom/netease/ntunisdk/NgWebviewProxy;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/NgWebviewProxy;->mProxy:Lcom/netease/ntunisdk/NgWebviewProxy;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {v1}, Lcom/netease/ntunisdk/NgWebviewProxy;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/NgWebviewProxy;->mProxy:Lcom/netease/ntunisdk/NgWebviewProxy;

    .line 131
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 133
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/NgWebviewProxy;->mProxy:Lcom/netease/ntunisdk/NgWebviewProxy;

    return-object v0
.end method

.method private getLength(III)I
    .locals 1

    add-int v0, p1, p2

    if-le v0, p3, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    return p2
.end method

.method private getRemoteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 713
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 716
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 717
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 718
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 719
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 721
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 667
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 667
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 669
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 671
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private init()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenWidth:I

    .line 143
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenHeight:I

    .line 145
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const v2, 0x103000a

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v1, "ng_wv_main_act"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 149
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isSupportBackKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/netease/ntunisdk/NgWebviewProxy$2;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$2;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v3, "content_view"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContentView:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 179
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 180
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->getCutoutHeight()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getWidth()I

    move-result v1

    if-lez v1, :cond_4

    .line 182
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x800033

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 184
    iget v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenWidth:I

    iget v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenHeight:I

    if-le v2, v3, :cond_2

    .line 185
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/WebviewParams;->getOriginX()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 186
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getOriginX()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 190
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getOriginY()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/WebviewParams;->getOriginY()I

    move-result v2

    if-ge v2, v0, :cond_3

    .line 193
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getOriginY()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getOriginX()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 199
    :goto_3
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/WebviewParams;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenWidth:I

    invoke-direct {p0, v0, v2, v3}, Lcom/netease/ntunisdk/NgWebviewProxy;->getLength(III)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 200
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/WebviewParams;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenHeight:I

    invoke-direct {p0, v0, v2, v3}, Lcom/netease/ntunisdk/NgWebviewProxy;->getLength(III)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 202
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_4

    :cond_4
    if-lez v0, :cond_8

    .line 205
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    iget v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenWidth:I

    iget v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenHeight:I

    if-le v2, v3, :cond_5

    .line 207
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 208
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 210
    :cond_5
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 211
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 217
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    .line 218
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContentView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x600

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 225
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "layoutInDisplayCutoutMode"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 226
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 233
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v2, "top_navigation_bar"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    .line 234
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v2, "right_navigation_bar"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    .line 236
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->initNavigationView()V

    .line 238
    iget v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mScreenHeight:I

    if-le v0, v1, :cond_9

    .line 239
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->showRightNavigationBar()V

    goto :goto_5

    .line 241
    :cond_9
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->showTopNavigationBar()V

    .line 244
    :goto_5
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->initWebview()V

    .line 245
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->initQstnCloseBtn()V

    return-void
.end method

.method private initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 420
    new-instance v0, Lcom/netease/ntunisdk/NgWebviewProxy$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$5;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    new-instance p1, Lcom/netease/ntunisdk/NgWebviewProxy$6;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$6;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance p1, Lcom/netease/ntunisdk/NgWebviewProxy$7;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$7;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    new-instance p1, Lcom/netease/ntunisdk/NgWebviewProxy$8;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$8;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNavigationView()V
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v2, "r_close"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 402
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v3, "r_back"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 403
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v4, "r_forward"

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 404
    iget-object v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v5, "r_refresh"

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 405
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/ntunisdk/NgWebviewProxy;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 407
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v2, "t_close"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 408
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v3, "t_back"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 409
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v4, "t_forward"

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 410
    iget-object v3, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v5, "t_refresh"

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 411
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/ntunisdk/NgWebviewProxy;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private initQstnCloseBtn()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v2, "qstn_close"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->qstnClose:Landroid/widget/ImageView;

    .line 250
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isQstnCloseBtnVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->qstnClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->qstnClose:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->qstnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy$3;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$3;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebview()V
    .locals 8

    .line 294
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v2, "uni_webview"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/ui/UniWebView;

    iput-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->setForceDarkAllowed(Z)V

    .line 298
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "YY_GAMEID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getScriptVersion()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 304
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v6

    .line 305
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getAdditionalUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/ui/UniWebView;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->clearCache(Z)V

    .line 307
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 308
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v3, "AndroidJSBridge"

    invoke-virtual {v0, p0, v3}, Lcom/netease/ntunisdk/ui/UniWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v3, "$CallbackInterface"

    invoke-virtual {v0, p0, v3}, Lcom/netease/ntunisdk/ui/UniWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    new-instance v3, Lcom/netease/ntunisdk/NgWebviewProxy$4;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$4;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/ui/UniWebView;->setUniWebViewCallback(Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;)V

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    .line 392
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 393
    invoke-static {v1}, Lcom/netease/ntunisdk/ui/UniWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mAct:Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/NgWebviewProxy$12;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveImageToPhotos(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    .line 678
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ngwebview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 682
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 685
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 686
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 687
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 688
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 692
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 690
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 696
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, p2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 702
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 704
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 706
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 698
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object p2
.end method

.method private saveWebImg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/ntunisdk/NgWebviewProxy$13;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 661
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showRightNavigationBar()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showTopNavigationBar()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public nativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 566
    sget-object v0, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$CallbackInterface.nativeCall, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mAct:Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/NgWebviewProxy$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/NgWebviewProxy$10;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ui/UniWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 552
    sget-object p2, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdkOnRequestPermissionsResult, requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget p2, Lcom/netease/ntunisdk/NgWebviewProxy;->REQUEST_CODE_ASK_PERMISSIONS:I

    if-ne p2, p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIdentifier:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIimageURL:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/NgWebviewProxy;->saveWebImg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->onStop()V

    :cond_0
    return-void
.end method

.method public openWebView(Landroid/content/Context;Lcom/netease/ntunisdk/WebviewParams;)V
    .locals 1

    .line 526
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    .line 527
    iget v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIndex:I

    .line 528
    iput-object p2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    .line 529
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mAct:Landroid/app/Activity;

    .line 530
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/netease/ntunisdk/NgWebviewProxy;->init()V

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "http://"

    .line 581
    sget-object v2, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postMsgToNative, json="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 585
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "reqData"

    .line 586
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "identifier"

    .line 587
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "closeWebView"

    .line 589
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mAct:Landroid/app/Activity;

    new-instance v0, Lcom/netease/ntunisdk/NgWebviewProxy$11;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$11;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const-string v5, "copyToPasteboard"

    .line 596
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p1, "copyText"

    .line 597
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 599
    sget-object v1, Lcom/netease/ntunisdk/NgWebviewProxy;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 600
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "result"

    .line 601
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "success"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    :goto_0
    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/netease/ntunisdk/NgWebviewProxy;->onJsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v4, "openBrowser"

    .line 603
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p1, "webURL"

    .line 604
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 608
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string v1, "saveWebImage"

    .line 610
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "imageURL"

    .line 611
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIimageURL:Ljava/lang/String;

    .line 612
    iput-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIdentifier:Ljava/lang/String;

    .line 613
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/ntunisdk/NgWebviewProxy;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTargetSdkVersion:I

    .line 614
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_5

    iget p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mTargetSdkVersion:I

    if-lt p1, v1, :cond_5

    .line 615
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 616
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget v0, Lcom/netease/ntunisdk/NgWebviewProxy;->REQUEST_CODE_ASK_PERMISSIONS:I

    invoke-static {p1, v1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 620
    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIdentifier:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy;->mIimageURL:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->saveWebImg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "shareModule"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 626
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
