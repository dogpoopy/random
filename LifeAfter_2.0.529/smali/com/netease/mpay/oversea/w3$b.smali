.class public abstract Lcom/netease/mpay/oversea/w3$b;
.super Ljava/lang/Object;
.source "GrowthyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/w3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field final synthetic d:Lcom/netease/mpay/oversea/w3;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/w3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/w3$b;->d:Lcom/netease/mpay/oversea/w3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/w3$b;->a:I

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/w3$b;->b:I

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/w3$b$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/w3$b$a;-><init>(Lcom/netease/mpay/oversea/w3$b;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/w3$b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/w3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/w3$b;->b:I

    return p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/w3$b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/w3$b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/mpay/oversea/w3$b;->b:I

    return v0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/w3$b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/w3$b;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/mpay/oversea/w3$b;->b:I

    return v0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/w3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/w3$b;->a:I

    return p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/w3$b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/w3$b;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/mpay/oversea/w3$b;->a:I

    return v0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/w3$b;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/w3$b;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/mpay/oversea/w3$b;->a:I

    return v0
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/app/Activity;)V
.end method

.method a(Landroid/app/Application;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method abstract b()V
.end method

.method b(Landroid/app/Application;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$b;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
