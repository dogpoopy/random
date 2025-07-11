.class public Lcom/netease/mrzhna/MovieDialog;
.super Landroid/app/Dialog;
.source "MovieDialog.java"


# static fields
.field private static final AUTO_HIDE_DELAY_MILLIS:I = 0xbb8

.field private static final KITKAT_UI_OPTION:I = 0xf06

.field private static final OTHER_UI_OPTION:I = 0x505


# instance fields
.field mHideHandler:Landroid/os/Handler;

.field mHideRunnable:Ljava/lang/Runnable;

.field private m_movie_view:Lcom/netease/mrzhna/MovieView;

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/mrzhna/MovieView;)V
    .locals 1

    const v0, 0x1030005

    .line 38
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/MovieDialog;->mHideHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/netease/mrzhna/MovieDialog;->m_view:Landroid/view/View;

    .line 32
    iput-object p1, p0, Lcom/netease/mrzhna/MovieDialog;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    .line 34
    iput-object p1, p0, Lcom/netease/mrzhna/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    const-string p1, "yuxin"

    const-string v0, "init movie dialog"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/MovieDialog;->setCancelable(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/MovieDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "set cancel event"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/MovieDialog;->requestWindowFeature(I)Z

    const-string v0, "movie dialog init down"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p2, p0, Lcom/netease/mrzhna/MovieDialog;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/MovieDialog;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/netease/mrzhna/MovieDialog;->m_view:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public delayedHide(I)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/netease/mrzhna/MovieDialog;->mHideHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mrzhna/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieView;->pauseVideo()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->m_movie_view:Lcom/netease/mrzhna/MovieView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieView;->resumeVideo()V

    :cond_1
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/netease/mrzhna/MovieDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 137
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 138
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 139
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 140
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 141
    invoke-virtual {p0}, Lcom/netease/mrzhna/MovieDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3

    .line 61
    iput-object p1, p0, Lcom/netease/mrzhna/MovieDialog;->m_view:Landroid/view/View;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->m_view:Landroid/view/View;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->m_view:Landroid/view/View;

    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->m_view:Landroid/view/View;

    new-instance v1, Lcom/netease/mrzhna/MovieDialog$1;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/MovieDialog$1;-><init>(Lcom/netease/mrzhna/MovieDialog;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 85
    :cond_1
    new-instance v0, Lcom/netease/mrzhna/MovieDialog$2;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/MovieDialog$2;-><init>(Lcom/netease/mrzhna/MovieDialog;)V

    iput-object v0, p0, Lcom/netease/mrzhna/MovieDialog;->mHideRunnable:Ljava/lang/Runnable;

    .line 107
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/MovieDialog;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/netease/mrzhna/MovieDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 110
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    .line 111
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x33

    .line 112
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 113
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 116
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
