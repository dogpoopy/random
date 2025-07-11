.class public Lcom/netease/mpay/oversea/ui/z;
.super Ljava/lang/Object;
.source "WebViewInputPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/z$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:Landroid/widget/FrameLayout$LayoutParams;

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private f:Z

.field private g:Lcom/netease/mpay/oversea/ui/z$b;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z;->f:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/z;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "enter"

    .line 7
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ui/z;->f:Z

    const v1, 0x1020002

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z;->g:Lcom/netease/mpay/oversea/ui/z$b;

    .line 13
    new-instance p1, Lcom/netease/mpay/oversea/ui/z$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/z$a;-><init>(Lcom/netease/mpay/oversea/ui/z;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, p0, Lcom/netease/mpay/oversea/ui/z;->b:I

    .line 23
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z;->a()I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ui/z;->c:I

    return-void
.end method

.method private a()I
    .locals 2

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)Lcom/netease/mpay/oversea/ui/z;
    .locals 1

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/ui/z;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/ui/z;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)V

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z;->c()V

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 0

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 7
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, 0x400

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()V
    .locals 4

    const-string v0, "possiblyResizeChildOfContent Enter"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z;->a()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/netease/mpay/oversea/ui/z;->c:I

    if-eq v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 5
    iget v2, p0, Lcom/netease/mpay/oversea/ui/z;->c:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 7
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 9
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 13
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/netease/mpay/oversea/ui/z;->b:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nheightDifference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nview Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/netease/mpay/oversea/ui/z;->c:I

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z;->g:Lcom/netease/mpay/oversea/ui/z$b;

    if-eqz v1, :cond_3

    .line 24
    iget v2, p0, Lcom/netease/mpay/oversea/ui/z;->b:I

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0}, Lcom/netease/mpay/oversea/ui/z$b;->a(Z)V

    :cond_3
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/ui/z;->c:I

    iget v1, p0, Lcom/netease/mpay/oversea/ui/z;->b:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/z;->f:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const-string v0, "onDestroy"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z;->d()V

    return-void
.end method
