.class public Lcom/netease/mrzhna/WelcomeView;
.super Landroid/app/Activity;
.source "WelcomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/WelcomeView$UpdateHandler;
    }
.end annotation


# static fields
.field static STR_FILE_TOTRANSFER:Ljava/lang/String;

.field static STR_FILE_TRANSFERRED:Ljava/lang/String;


# instance fields
.field private m_is_rsync:Z

.field private m_label_action:Landroid/widget/TextView;

.field private m_label_status:Landroid/widget/TextView;

.field private m_option:Ljava/lang/String;

.field private m_timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_option:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_timer:Ljava/util/Timer;

    .line 16
    iput-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_label_action:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_label_status:Landroid/widget/TextView;

    return-void
.end method

.method private RestartTimer()V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 136
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/netease/mrzhna/WelcomeView;->m_timer:Ljava/util/Timer;

    .line 137
    new-instance v2, Lcom/netease/mrzhna/WelcomeView$1;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/WelcomeView$1;-><init>(Lcom/netease/mrzhna/WelcomeView;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/WelcomeView;)Landroid/widget/TextView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/mrzhna/WelcomeView;->m_label_action:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/WelcomeView;)Landroid/widget/TextView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/netease/mrzhna/WelcomeView;->m_label_status:Landroid/widget/TextView;

    return-object p0
.end method

.method private getIdId(Ljava/lang/String;)I
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getLayoutId(Ljava/lang/String;)I
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "welcomeview"

    .line 60
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getLayoutId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->setContentView(I)V

    const-string p1, "labelConnectServer"

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getIdId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_label_action:Landroid/widget/TextView;

    const-string p1, "labelUpdateStatus"

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getIdId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_label_status:Landroid/widget/TextView;

    const-string p1, "neox_welcomeview_updated_file_num"

    .line 63
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getStringId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/mrzhna/WelcomeView;->STR_FILE_TRANSFERRED:Ljava/lang/String;

    const-string p1, "neox_welcomeview_total_update_file_num"

    .line 64
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getStringId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/WelcomeView;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/mrzhna/WelcomeView;->STR_FILE_TOTRANSFER:Ljava/lang/String;

    return-void
.end method

.method public onRsyncAll(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-boolean p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_option:Ljava/lang/String;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    .line 99
    invoke-direct {p0}, Lcom/netease/mrzhna/WelcomeView;->RestartTimer()V

    .line 100
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onRsyncScript(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-boolean p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    if-nez p1, :cond_0

    const-string p1, "script"

    .line 109
    iput-object p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_option:Ljava/lang/String;

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    .line 111
    invoke-direct {p0}, Lcom/netease/mrzhna/WelcomeView;->RestartTimer()V

    .line 112
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onStartEngine(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-boolean p1, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/netease/mrzhna/WelcomeView;->finish()V

    .line 89
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeNotifyWelcomeViewFinished()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_option:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativeRsync(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    :cond_0
    new-instance v0, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/mrzhna/WelcomeView$UpdateHandler;-><init>(Lcom/netease/mrzhna/WelcomeView;Landroid/os/Looper;)V

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/netease/mrzhna/WelcomeView;->m_is_rsync:Z

    return-void
.end method
