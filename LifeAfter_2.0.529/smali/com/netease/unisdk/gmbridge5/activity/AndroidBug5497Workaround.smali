.class public Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyboardListener"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    .line 30
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 31
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround$1;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround$1;-><init>(Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;

    .line 15
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyboardListener"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    .line 21
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V

    .line 22
    return-void
.end method

.method private computeUsableHeight()I
    .locals 3

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 62
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 5

    .line 41
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 42
    .local v0, "usableHeightNow":I
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v0, v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 44
    .local v1, "usableHeightSansKeyboard":I
    sub-int v2, v1, v0

    .line 45
    .local v2, "heightDifference":I
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v1, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 48
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    invoke-interface {v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;->up()V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 52
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    invoke-interface {v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;->down()V

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 55
    iput v0, p0, Lcom/netease/unisdk/gmbridge5/activity/AndroidBug5497Workaround;->usableHeightPrevious:I

    .line 57
    .end local v1    # "usableHeightSansKeyboard":I
    .end local v2    # "heightDifference":I
    :cond_1
    return-void
.end method
