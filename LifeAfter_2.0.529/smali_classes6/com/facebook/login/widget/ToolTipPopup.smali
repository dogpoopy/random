.class public Lcom/facebook/login/widget/ToolTipPopup;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;,
        Lcom/facebook/login/widget/ToolTipPopup$Style;
    }
.end annotation


# static fields
.field public static final DEFAULT_POPUP_DISPLAY_TIME:J = 0x1770L


# instance fields
.field private final mAnchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mNuxDisplayTime:J

.field private mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    const-wide/16 v0, 0x1770

    .line 51
    iput-wide v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 53
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$1;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/ToolTipPopup$1;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 74
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mText:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
    .locals 3

    const-class v0, Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 27
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$100(Lcom/facebook/login/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
    .locals 3

    const-class v0, Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 27
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$200(Lcom/facebook/login/widget/ToolTipPopup;)Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
    .locals 3

    const-class v0, Lcom/facebook/login/widget/ToolTipPopup;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 27
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private registerObserver()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->unregisterObserver()V

    .line 173
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 176
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 182
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private updateArrows()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->showTopArrow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 161
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->unregisterObserver()V

    .line 166
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 169
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setNuxDisplayTime(J)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 151
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 86
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public show()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;-><init>(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 92
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    sget v1, Lcom/facebook/login/R$id;->com_facebook_tooltip_bubble_view_text_body:I

    .line 93
    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    sget-object v1, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_blue_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_blue_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_blue_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_blue_xout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$300(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_black_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$400(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_black_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$500(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_black_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-static {v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->access$600(Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_tooltip_black_xout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 113
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->registerObserver()V

    .line 114
    iget-object v2, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    const/high16 v3, -0x80000000

    .line 115
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 116
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 114
    invoke-virtual {v2, v1, v0}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->measure(II)V

    .line 117
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    iget-object v2, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    .line 119
    invoke-virtual {v2}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v3}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 120
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/login/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 121
    invoke-direct {p0}, Lcom/facebook/login/widget/ToolTipPopup;->updateArrows()V

    .line 122
    iget-wide v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 123
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    new-instance v1, Lcom/facebook/login/widget/ToolTipPopup$2;

    invoke-direct {v1, p0}, Lcom/facebook/login/widget/ToolTipPopup$2;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    iget-wide v2, p0, Lcom/facebook/login/widget/ToolTipPopup;->mNuxDisplayTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 133
    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;

    new-instance v1, Lcom/facebook/login/widget/ToolTipPopup$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/widget/ToolTipPopup$3;-><init>(Lcom/facebook/login/widget/ToolTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 141
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
