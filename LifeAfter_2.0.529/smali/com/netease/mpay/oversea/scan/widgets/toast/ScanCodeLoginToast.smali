.class public Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;
.super Ljava/lang/Object;
.source "ScanCodeLoginToast.java"


# static fields
.field private static final TOAST_SHOW_DURATION:I = 0xa

.field private static volatile mCurrentToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 18
    sget-object v0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static declared-synchronized cancelToast()V
    .locals 2

    const-class v0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    const/4 v1, 0x0

    .line 54
    sput-object v1, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static newToastView(Landroid/content/Context;Ljava/lang/String;II)Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;
    .locals 1

    .line 80
    new-instance v0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;-><init>(IILandroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static showToastView(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;)Landroid/widget/Toast;
    .locals 3

    .line 59
    new-instance v0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;-><init>(Landroid/app/Activity;)V

    .line 61
    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;->getLeftOffset()I

    move-result p0

    .line 62
    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;->getTopOffset()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, 0x31

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const p0, 0x800013

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 72
    :goto_0
    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;->getLeftOffset()I

    move-result v1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;->getTopOffset()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 73
    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;->getContent()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method

.method public static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0, v0}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->toastAt(Landroid/app/Activity;Ljava/lang/String;II)V

    return-void
.end method

.method public static toastAt(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    sget-object v0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->cancelToast()V

    .line 33
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->newToastView(Landroid/content/Context;Ljava/lang/String;II)Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;

    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->showToastView(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;

    .line 36
    sget-object p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->mCurrentToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$1;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$1;-><init>(I)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
