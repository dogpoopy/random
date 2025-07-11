.class public abstract Lcom/netease/ntunisdk/core/notches/NotchDevice;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;
    }
.end annotation


# static fields
.field protected static final NOTCH_HEIGHT_NONE:I = 0x0

.field protected static final NOTCH_UNINITIALIZED:I = -0x1

.field public static sInstance:Lcom/netease/ntunisdk/core/notches/NotchDevice;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/netease/ntunisdk/core/notches/NotchDevice;
    .locals 6

    const-class v0, Lcom/netease/ntunisdk/core/notches/NotchDevice;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/notches/NotchDevice;->sInstance:Lcom/netease/ntunisdk/core/notches/NotchDevice;

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    new-instance p0, Lcom/netease/ntunisdk/core/notches/NotchImplNone;

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/notches/NotchImplNone;-><init>()V

    sput-object p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->sInstance:Lcom/netease/ntunisdk/core/notches/NotchDevice;

    goto :goto_1

    :cond_0
    const/4 v1, 0x7

    new-array v2, v1, [Lcom/netease/ntunisdk/core/notches/NotchDevice;

    new-instance v3, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

    invoke-direct {v3}, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;

    invoke-direct {v3}, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    new-instance v5, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;

    invoke-direct {v5}, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;-><init>()V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;

    invoke-direct {v5}, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;-><init>()V

    aput-object v5, v2, v3

    const/4 v3, 0x4

    new-instance v5, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;

    invoke-direct {v5}, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;-><init>()V

    aput-object v5, v2, v3

    const/4 v3, 0x5

    new-instance v5, Lcom/netease/ntunisdk/core/notches/NotchImplVivo;

    invoke-direct {v5}, Lcom/netease/ntunisdk/core/notches/NotchImplVivo;-><init>()V

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v5, Lcom/netease/ntunisdk/core/notches/NotchImplNone;

    invoke-direct {v5}, Lcom/netease/ntunisdk/core/notches/NotchImplNone;-><init>()V

    aput-object v5, v2, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v3, v2, v4

    invoke-virtual {v3, p0}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->checkModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sput-object v3, Lcom/netease/ntunisdk/core/notches/NotchDevice;->sInstance:Lcom/netease/ntunisdk/core/notches/NotchDevice;

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->sInstance:Lcom/netease/ntunisdk/core/notches/NotchDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public abstract addStatusBar(Landroid/content/Context;Landroid/view/Window;)V
.end method

.method protected final addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->getNotchHeightImpl(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected abstract checkModel(Landroid/content/Context;)Z
.end method

.method public final getNotchArray(Landroid/content/Context;Landroid/view/Window;)[Lcom/netease/ntunisdk/core/notches/NotchInfo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->isNotchHeightValidImpl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    return-object p1
.end method

.method public final getNotchHeightImpl(Landroid/content/Context;Landroid/view/Window;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->isNotchHeightValidImpl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->a:I

    :cond_0
    iget p1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->a:I

    return p1
.end method

.method public getScreenSize(Landroid/content/Context;)[I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-array p1, v0, [I

    const/4 v2, 0x0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, p1, v2

    const/4 v2, 0x1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v1, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v0, [I

    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected abstract initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
.end method

.method protected final isNotchHeightValidImpl(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->b:I

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
.end method

.method protected final justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchDevice;->getNotchHeightImpl(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    if-lez p1, :cond_1

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p3, p2

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/notches/NotchDevice;->c:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;->a(Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;[Lcom/netease/ntunisdk/core/notches/NotchInfo;Ljava/util/HashMap;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
