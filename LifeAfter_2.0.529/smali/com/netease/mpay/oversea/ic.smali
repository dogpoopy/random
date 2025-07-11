.class public Lcom/netease/mpay/oversea/ic;
.super Ljava/lang/Object;
.source "WelcomeAlerter.java"


# static fields
.field private static j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/netease/mpay/oversea/ic;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private c:Landroid/view/animation/AlphaAnimation;

.field private d:Landroid/view/animation/AlphaAnimation;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/app/Activity;

.field private h:I

.field private i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ic;->j:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ic;->i:Ljava/util/LinkedList;

    .line 19
    iput-object p1, p0, Lcom/netease/mpay/oversea/ic;->g:Landroid/app/Activity;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ic;->h:I

    return-void
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .locals 1

    .line 5
    sget-object v0, Lcom/netease/mpay/oversea/ic;->j:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ic;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ic;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ic;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/ic;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/ic;
    .locals 4

    const-class v0, Lcom/netease/mpay/oversea/ic;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/ic;->j:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ic;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    iget-object v2, v1, Lcom/netease/mpay/oversea/ic;->e:Landroid/view/View;

    if-nez v2, :cond_2

    .line 10
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/ic;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ic;-><init>(Landroid/app/Activity;)V

    .line 11
    sget-object p0, Lcom/netease/mpay/oversea/ic;->j:Landroid/util/SparseArray;

    iget v2, v1, Lcom/netease/mpay/oversea/ic;->h:I

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ic;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ic;->i:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(Landroid/app/Dialog;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/netease/mpay/oversea/ic;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 62
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__message_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ic;->e:Landroid/view/View;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ic;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 66
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__message_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ic;->f:Landroid/widget/TextView;

    .line 68
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ic;->b:Landroid/os/Handler;

    .line 69
    iget-object v0, p0, Lcom/netease/mpay/oversea/ic;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p3, p0, Lcom/netease/mpay/oversea/ic;->c:Landroid/view/animation/AlphaAnimation;

    .line 71
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p3, p0, Lcom/netease/mpay/oversea/ic;->d:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x258

    .line 72
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 73
    iget-object p3, p0, Lcom/netease/mpay/oversea/ic;->d:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Lcom/netease/mpay/oversea/ic$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/ic$a;-><init>(Lcom/netease/mpay/oversea/ic;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    iget-object p1, p0, Lcom/netease/mpay/oversea/ic;->e:Landroid/view/View;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ic;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object p1, p0, Lcom/netease/mpay/oversea/ic;->b:Landroid/os/Handler;

    new-instance p2, Lcom/netease/mpay/oversea/ic$b;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/ic$b;-><init>(Lcom/netease/mpay/oversea/ic;)V

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ic;Landroid/app/Dialog;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ic;->a(Landroid/app/Dialog;Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ic;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ic;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ic;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ic;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ic;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/ic;->h:I

    return p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/ic;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ic;->d:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/CharSequence;)V
    .locals 9

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ic;->a:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/ic;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 17
    :cond_1
    :try_start_2
    new-instance v0, Lcom/netease/mpay/oversea/za;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ic;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/za;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x1

    .line 22
    :try_start_3
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 24
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/ic;->a:Z
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    iget-object v3, p0, Lcom/netease/mpay/oversea/ic;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__welcome_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/netease/mpay/oversea/ic;->g:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__welcome_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 38
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    .line 41
    invoke-static {v3, v6}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    .line 43
    :cond_2
    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/4 v6, 0x0

    .line 46
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 47
    iget-object v6, p0, Lcom/netease/mpay/oversea/ic;->g:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__margin_40:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    invoke-virtual {v2, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v2, v4, v7}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x31

    .line 51
    invoke-virtual {v2, v1}, Landroid/view/Window;->setGravity(I)V

    const/16 v1, 0x8

    .line 52
    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 54
    :cond_3
    invoke-direct {p0, v0, v3, p1}, Lcom/netease/mpay/oversea/ic;->a(Landroid/app/Dialog;Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 57
    :try_start_6
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 58
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ic;->a:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 59
    :try_start_7
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 60
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ic;->a:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
