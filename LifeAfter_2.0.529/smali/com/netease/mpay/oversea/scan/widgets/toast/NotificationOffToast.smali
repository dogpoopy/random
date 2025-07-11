.class public Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;
.super Landroid/widget/Toast;
.source "NotificationOffToast.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsShowing:Z

.field private mPackageName:Ljava/lang/String;

.field private mToastView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mActivity:Landroid/app/Activity;

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/Toast;->cancel()V

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->isFinishing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mIsShowing:Z

    if-nez v0, :cond_1

    return-void

    .line 66
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mToastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mToastView:Landroid/view/View;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mIsShowing:Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->isFinishing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mIsShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x2

    .line 35
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x498

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 46
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mToastView:Landroid/view/View;

    .line 49
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mToastView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/NotificationOffToast;->mIsShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
