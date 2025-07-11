.class public Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxWebViewHelper"

.field private static mActivity:Landroid/app/NativeActivity;

.field private static sHandler:Landroid/os/Handler;

.field private static viewTag:I

.field private static webDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/cocos2dx/lib/WebDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static webLayouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static webViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/cocos2dx/lib/Cocos2dxWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/NativeActivity;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sHandler:Landroid/os/Handler;

    .line 129
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webViews:Landroid/util/SparseArray;

    .line 130
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webLayouts:Landroid/util/SparseArray;

    .line 131
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webDialogs:Landroid/util/SparseArray;

    return-void
.end method

.method public static _didFailLoading(ILjava/lang/String;)V
    .locals 0

    .line 192
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->didFailLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _didFinishLoading(ILjava/lang/String;)V
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->didFinishLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _onJsCallback(ILjava/lang/String;)V
    .locals 0

    .line 198
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->onJsCallback(ILjava/lang/String;)V

    return-void
.end method

.method public static _onJsMessage(ILjava/lang/String;)V
    .locals 0

    .line 204
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->onJsMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static _shouldStartLoading(ILjava/lang/String;)Z
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->shouldStartLoading(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic access$000(I)V
    .locals 0

    .line 116
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->newDialog(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .line 116
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webLayouts:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200()Landroid/app/NativeActivity;
    .locals 1

    .line 116
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/SparseArray;
    .locals 1

    .line 116
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 116
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .locals 1

    .line 116
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webDialogs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 413
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static canGoBack(I)Z
    .locals 1

    .line 418
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$14;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$14;-><init>(I)V

    const/4 p0, 0x0

    .line 426
    :try_start_0
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static canGoForward(I)Z
    .locals 1

    .line 435
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$15;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$15;-><init>(I)V

    const/4 p0, 0x0

    .line 443
    :try_start_0
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static createWebView()I
    .locals 3

    .line 208
    sget v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->viewTag:I

    .line 209
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;

    invoke-direct {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    sget v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->viewTag:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->viewTag:I

    return v0
.end method

.method private static native didFailLoading(ILjava/lang/String;)V
.end method

.method private static native didFinishLoading(ILjava/lang/String;)V
.end method

.method public static evaluateJS(ILjava/lang/String;)V
    .locals 2

    .line 476
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$18;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$18;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goBack(I)V
    .locals 2

    .line 452
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$16;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$16;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goForward(I)V
    .locals 2

    .line 464
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 337
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$8;

    move-object v1, v7

    move v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadFile(ILjava/lang/String;)V
    .locals 2

    .line 375
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$11;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$11;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadHTMLString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 349
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;

    invoke-direct {v1, p0, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadUrl(ILjava/lang/String;Z)V
    .locals 2

    .line 361
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;

    invoke-direct {v1, p0, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;-><init>(IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static newDialog(I)V
    .locals 6

    .line 136
    new-instance v0, Landroid/widget/FrameLayout;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v1, Lorg/cocos2dx/lib/WebDialog;

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    invoke-direct {v1, v2}, Lorg/cocos2dx/lib/WebDialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/WebDialog;->requestWindowFeature(I)Z

    .line 139
    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/WebDialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/WebDialog;->setCanceledOnTouchOutside(Z)V

    .line 141
    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/WebDialog;->setCancelable(Z)V

    .line 142
    invoke-virtual {v1}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 144
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 147
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x7

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 156
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    invoke-virtual {v1}, Lorg/cocos2dx/lib/WebDialog;->show()V

    return-void
.end method

.method private static native onJsCallback(ILjava/lang/String;)V
.end method

.method private static native onJsMessage(ILjava/lang/String;)V
.end method

.method public static reload(I)V
    .locals 2

    .line 400
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$13;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$13;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static removeDialog(I)V
    .locals 2

    .line 164
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 165
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/WebDialog;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 172
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 173
    invoke-virtual {v1}, Lorg/cocos2dx/lib/WebDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public static removeWebView(I)V
    .locals 2

    .line 232
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setBackgroundTransparent(I)V
    .locals 2

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 269
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static setJavascriptInterfaceScheme(ILjava/lang/String;)V
    .locals 2

    .line 325
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOpacityWebView(IF)V
    .locals 2

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 289
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;-><init>(IF)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static setScalesPageToFit(IZ)V
    .locals 2

    .line 488
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$19;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$19;-><init>(IZ)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setVisible(IZ)V
    .locals 2

    .line 250
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;-><init>(IZ)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setWebViewRect(IIIII)V
    .locals 8

    .line 307
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native shouldStartLoading(ILjava/lang/String;)Z
.end method

.method public static stopLoading(I)V
    .locals 2

    .line 387
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->mActivity:Landroid/app/NativeActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$12;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$12;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
