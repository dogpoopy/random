.class public Lcom/netease/neox/NeoXView;
.super Landroid/view/View;
.source "NeoXView.java"


# static fields
.field private static final AUTO_HIDE_DELAY_MILLIS:I = 0xbb8

.field static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field private static final KITKAT_UI_OPTION:I = 0xf06

.field private static final OTHER_UI_OPTION:I = 0x505


# instance fields
.field mHideHandler:Landroid/os/Handler;

.field mHideRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netease/neox/NeoXView;->mHideHandler:Landroid/os/Handler;

    .line 57
    new-instance p1, Lcom/netease/neox/NeoXView$2;

    invoke-direct {p1, p0}, Lcom/netease/neox/NeoXView$2;-><init>(Lcom/netease/neox/NeoXView;)V

    iput-object p1, p0, Lcom/netease/neox/NeoXView;->mHideRunnable:Ljava/lang/Runnable;

    .line 26
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setFocusable(Z)V

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    .line 32
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    const/16 p1, 0xf06

    .line 33
    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x505

    .line 36
    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setSystemUiVisibility(I)V

    .line 39
    :goto_0
    new-instance p1, Lcom/netease/neox/NeoXView$1;

    invoke-direct {p1, p0}, Lcom/netease/neox/NeoXView$1;-><init>(Lcom/netease/neox/NeoXView;)V

    invoke-virtual {p0, p1}, Lcom/netease/neox/NeoXView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public delayedHide(I)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/netease/neox/NeoXView;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/neox/NeoXView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/netease/neox/NeoXView;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/neox/NeoXView;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/high16 v0, 0x12000000

    .line 74
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 75
    new-instance p1, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object p1
.end method
