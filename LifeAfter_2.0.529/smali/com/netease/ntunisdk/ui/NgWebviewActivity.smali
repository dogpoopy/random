.class public Lcom/netease/ntunisdk/ui/NgWebviewActivity;
.super Landroid/app/Activity;
.source "NgWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/ui/NgWebviewActivity$KeyboardListener;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSEWEBVIEW:Ljava/lang/String; = "closeWebView"

.field public static final ACTION_COPE2PASTEBOARD:Ljava/lang/String; = "copyToPasteboard"

.field public static final ACTION_NOTIFY_NATIVE:Ljava/lang/String; = "ngwebview_notify_native"

.field public static final ACTION_OPENBROWSER:Ljava/lang/String; = "openBrowser"

.field public static final ACTION_SAVEWEBIMAGE:Ljava/lang/String; = "saveWebImage"

.field public static final ACTION_SHAREMODULE:Ljava/lang/String; = "shareModule"

.field public static final ACTION_SURVEYSTATE:Ljava/lang/String; = "surveyState"

.field public static final ACTION_SURVEYUSERACTION:Ljava/lang/String; = "surveyUserAction"

.field public static ORIENTATION:I = 0x0

.field private static final REQUEST_CODE_ASK_PERMISSIONS:I

.field private static final TAG:Ljava/lang/String; = "NgWebviewActivity"

.field private static mInstance:Lcom/netease/ntunisdk/ui/NgWebviewActivity;


# instance fields
.field private mContentView:Landroid/widget/RelativeLayout;

.field private mIdentifier:Ljava/lang/String;

.field private mIimageURL:Ljava/lang/String;

.field private mNgwebviewClose:Landroid/widget/ImageView;

.field private mRightNavigationBar:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSetContentMarginFlag:Z

.field private mTargetSdkVersion:I

.field private mTopNavigationBar:Landroid/widget/RelativeLayout;

.field private mUniWvContainer:Landroid/widget/FrameLayout;

.field private originalLayoutInDisplayCutoutMode:I

.field private qstLoadingView:Landroid/widget/RelativeLayout;

.field private uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

.field private wvParams:Lcom/netease/ntunisdk/WebviewParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NgWebviewActivity"

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->REQUEST_CODE_ASK_PERMISSIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->originalLayoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTargetSdkVersion:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->hideVirtualNavigationBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Lcom/netease/ntunisdk/WebviewParams;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->handleIPC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Lcom/netease/ntunisdk/ui/UniWebView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->qstLoadingView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getRemoteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->saveImageToPhotos(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->onJsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fitContentView()V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mSetContentMarginFlag:Z

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    iget v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenWidth:I

    iget v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenHeight:I

    const/16 v3, 0x5a

    if-le v1, v2, :cond_0

    .line 394
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 395
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 397
    :cond_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 398
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/ui/NgWebviewActivity;
    .locals 1

    .line 101
    sget-object v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mInstance:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    return-object v0
.end method

.method private getRemoteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 884
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 887
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 888
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 889
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 890
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 894
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 892
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 838
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 838
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 840
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 842
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private handleIPC(Ljava/lang/String;)V
    .locals 2

    .line 379
    sget-object v0, Lcom/netease/ntunisdk/aidl/NGRemoteService;->callback:Lcom/netease/ntunisdk/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 381
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/aidl/NGRemoteService;->callback:Lcom/netease/ntunisdk/IRemoteCallback;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/IRemoteCallback;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NgWebviewActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private hideVirtualNavigationBar()V
    .locals 3

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/16 v2, 0xb

    if-le v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 234
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initLoadingView()V
    .locals 3

    const-string v0, "NgWebviewActivity"

    const-string v1, "initLoadingView..."

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "survey.163.com"

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "survey.netease.com"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "survey.easebar.com"

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "research.163.com"

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "research.easebar.com"

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "survey-game.163.com"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "research-game.163.com"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "research-game.easebar.com"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "qst_loading_view"

    .line 254
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->qstLoadingView:Landroid/widget/RelativeLayout;

    .line 255
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->qstLoadingView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    const-string v1, "qstLoadingView: VISIBLE"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->qstLoadingView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "qst_loading_close"

    .line 258
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 259
    new-instance v1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$2;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 424
    new-instance v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$4;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$4;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    new-instance p1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    new-instance p1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$6;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$6;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    new-instance p1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$7;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$7;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNavigationView()V
    .locals 4

    const-string v0, "r_close"

    .line 405
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "r_back"

    .line 406
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "r_forward"

    .line 407
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "r_refresh"

    .line 408
    invoke-static {p0, v3}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 409
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const-string v0, "t_close"

    .line 411
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "t_back"

    .line 412
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "t_forward"

    .line 413
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "t_refresh"

    .line 414
    invoke-static {p0, v3}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 415
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private initNgwebviewCloseBtn()V
    .locals 4

    const-string v0, "ngwebview_close"

    .line 906
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mNgwebviewClose:Landroid/widget/ImageView;

    .line 907
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isCloseButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mNgwebviewClose:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 909
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getCloseBtnWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 910
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getCloseBtnHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 911
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getCloseBtnOriginX()I

    move-result v1

    iget-object v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/WebviewParams;->getCloseBtnOriginY()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 912
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mNgwebviewClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mNgwebviewClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mNgwebviewClose:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 927
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mNgwebviewClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$13;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$13;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebview()V
    .locals 9

    .line 275
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    new-instance v1, Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/ui/UniWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    .line 279
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/ui/UniWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mUniWvContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 282
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->fitContentView()V

    .line 285
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getWebviewBackgroundColor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 286
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->setBackgroundColor(I)V

    .line 289
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->setForceDarkAllowed(Z)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getYYGameID()Ljava/lang/String;

    move-result-object v4

    .line 294
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    .line 295
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getScriptVersion()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v6, v5

    goto :goto_0

    :cond_2
    move-object v6, v0

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getChannelID()Ljava/lang/String;

    move-result-object v7

    .line 301
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/netease/ntunisdk/ui/UniWebView;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->getAdditionalUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/netease/ntunisdk/ui/UniWebView;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->clearCache(Z)V

    .line 304
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 305
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 306
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 307
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 308
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 309
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v2, "AndroidJSBridge"

    invoke-virtual {v0, p0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v2, "$CallbackInterface"

    invoke-virtual {v0, p0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    new-instance v2, Lcom/netease/ntunisdk/ui/NgWebviewActivity$3;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$3;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->setUniWebViewCallback(Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;)V

    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_3

    .line 365
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/ui/UniWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 369
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    .line 371
    invoke-static {v1}, Lcom/netease/ntunisdk/ui/UniWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/UniWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onJsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 800
    new-instance v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$11;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveImageToPhotos(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .line 849
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ngwebview"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 853
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

    .line 854
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 856
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 857
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 858
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 859
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 863
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 861
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 873
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 875
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 876
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 877
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveWebImg(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 811
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 832
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setScreenOrientation()V
    .locals 3

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenOrientation, ORIENTATION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->ORIENTATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NgWebviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->ORIENTATION:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 562
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 564
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    .line 568
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    const/4 v2, 0x6

    if-ne v1, v0, :cond_4

    .line 570
    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v1, v0, :cond_5

    const/16 v0, 0x9

    .line 572
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    if-ne v2, v0, :cond_6

    const/16 v0, 0x8

    .line 574
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setRequestedOrientation(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private showRightNavigationBar()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showTopNavigationBar()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public closeWebview()V
    .locals 6

    const-string v0, "jsonException="

    const-string v1, "NgWebviewActivity"

    const-string v2, "methodId"

    .line 469
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "NGWebViewClose"

    .line 471
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "func"

    const-string v5, "webview_close"

    .line 472
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 477
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 482
    :goto_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "NtCloseWebView"

    .line 483
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "result"

    const-string v5, "0"

    .line 484
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 493
    :goto_1
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ngwebview_notify_native"

    .line 494
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "closeWebView"

    .line 496
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reqData"

    .line 497
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 517
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 518
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    goto :goto_3

    .line 520
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 524
    :goto_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$8;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$8;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public nativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$NGRemoteService.callback.call2, action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NgWebviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/ui/UniWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isSupportBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "NtCloseWebView"

    .line 633
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    const-string v2, "0"

    .line 634
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NtCloseWebView Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NgWebviewActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 641
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 596
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NgWebviewActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sput-object p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mInstance:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    .line 108
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "WebviewParams"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/WebviewParams;

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/WebviewParams;->getOrientation()I

    move-result p1

    sput p1, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->ORIENTATION:I

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ORIENTATION = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->ORIENTATION:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NgWebviewActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_init="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetSdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1b

    if-lt p1, v1, :cond_1

    const-string p1, "never call setScreenOrientation"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setScreenOrientation()V

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 126
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenWidth:I

    .line 127
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenHeight:I

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ng_wv_main_act"

    .line 130
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->setContentView(I)V

    .line 134
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initLoadingView()V

    const-string p1, "content_view"

    .line 136
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    const-string p1, "webview_Container"

    .line 137
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mUniWvContainer:Landroid/widget/FrameLayout;

    .line 139
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/WebviewParams;->isFullScreen()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getOriginX()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 144
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getOriginY()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 146
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/WebviewParams;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 147
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_2

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 151
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/WebviewParams;->isHasCutout()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 152
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge p1, v3, :cond_3

    .line 155
    iput-boolean v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mSetContentMarginFlag:Z

    goto :goto_1

    .line 158
    :cond_3
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mSetContentMarginFlag:Z

    .line 159
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 161
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->originalLayoutInDisplayCutoutMode:I

    const/4 v1, 0x2

    .line 167
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 169
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 173
    :cond_4
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mSetContentMarginFlag:Z

    .line 175
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetContentMarginFlag = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mSetContentMarginFlag:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 178
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_6

    .line 179
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mContentView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x600

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :catch_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 194
    :goto_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initWebview()V

    .line 197
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initNgwebviewCloseBtn()V

    const-string p1, "top_navigation_bar"

    .line 199
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTopNavigationBar:Landroid/widget/RelativeLayout;

    const-string p1, "right_navigation_bar"

    .line 200
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mRightNavigationBar:Landroid/widget/RelativeLayout;

    .line 201
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initNavigationView()V

    .line 204
    iget p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenWidth:I

    iget v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mScreenHeight:I

    if-le p1, v0, :cond_7

    .line 205
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->showRightNavigationBar()V

    goto :goto_3

    .line 207
    :cond_7
    invoke-direct {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->showTopNavigationBar()V

    .line 211
    :goto_3
    new-instance p1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;Lcom/netease/ntunisdk/ui/NgWebviewActivity$KeyboardListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 8

    .line 662
    iget v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->originalLayoutInDisplayCutoutMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 664
    iget v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->originalLayoutInDisplayCutoutMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 665
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 669
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "utf-8"

    .line 670
    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/ui/UniWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ui/UniWebView;->clearHistory()V

    .line 673
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ui/UniWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 674
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ui/UniWebView;->destroy()V

    .line 675
    iput-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    .line 678
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 679
    sput-object v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mInstance:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    .line 681
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sdkOnRequestPermissionsResult, requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NgWebviewActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget p2, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->REQUEST_CODE_ASK_PERMISSIONS:I

    if-ne p2, p1, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 690
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 691
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIdentifier:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIimageURL:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->saveWebImg(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 693
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIdentifier:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIimageURL:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->saveWebImg(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 580
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 581
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 588
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 589
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->uniWv:Lcom/netease/ntunisdk/ui/UniWebView;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/UniWebView;->onStop()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 647
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 648
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->wvParams:Lcom/netease/ntunisdk/WebviewParams;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/WebviewParams;->isNavigationBarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    .line 650
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "http://"

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postMsgToNative, json="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NgWebviewActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "methodId"

    .line 734
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reqData"

    .line 735
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "identifier"

    .line 736
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 737
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "closeWebView"

    .line 738
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 739
    new-instance p1, Lcom/netease/ntunisdk/ui/NgWebviewActivity$10;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity$10;-><init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const-string v7, "copyToPasteboard"

    .line 745
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string p1, "copyText"

    .line 746
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "clipboard"

    .line 747
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 748
    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 749
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "result"

    .line 750
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "success"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    :goto_0
    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->onJsCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "openBrowser"

    .line 752
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "webURL"

    .line 754
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 758
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 759
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "saveWebImage"

    .line 760
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "imageURL"

    .line 761
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIimageURL:Ljava/lang/String;

    .line 762
    iput-object v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIdentifier:Ljava/lang/String;

    .line 763
    invoke-static {p0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTargetSdkVersion:I

    .line 764
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt p1, v2, :cond_5

    iget p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mTargetSdkVersion:I

    if-lt p1, v2, :cond_5

    .line 765
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 766
    sget v0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->REQUEST_CODE_ASK_PERMISSIONS:I

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 770
    :cond_5
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIdentifier:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->mIimageURL:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->saveWebImg(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string v0, "shareModule"

    .line 771
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "surveyUserAction"

    .line 773
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "data"

    if-eqz v0, :cond_8

    :try_start_1
    const-string p1, "action"

    .line 775
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "surveyState"

    .line 778
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "state"

    .line 780
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, "ngwebview_notify_native"

    .line 783
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 791
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->handleIPC(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 795
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method
