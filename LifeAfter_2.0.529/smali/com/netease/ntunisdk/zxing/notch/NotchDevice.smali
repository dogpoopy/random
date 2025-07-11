.class public abstract Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
.super Ljava/lang/Object;
.source "NotchDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;
    }
.end annotation


# static fields
.field protected static final NOTCH_HEIGHT_NONE:I = 0x0

.field protected static final NOTCH_UNINITIALIZED:I = -0x1

.field public static sInstance:Lcom/netease/ntunisdk/zxing/notch/NotchDevice;


# instance fields
.field private lastOrientation:I

.field private mNotchHeight:I

.field protected mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 19
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchHeight:I

    .line 21
    iput v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->lastOrientation:I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
    .locals 6

    const-class v0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->sInstance:Lcom/netease/ntunisdk/zxing/notch/NotchDevice;

    if-nez v1, :cond_2

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 26
    new-instance p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplNone;

    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/notch/NotchImplNone;-><init>()V

    sput-object p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->sInstance:Lcom/netease/ntunisdk/zxing/notch/NotchDevice;

    goto :goto_1

    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/netease/ntunisdk/zxing/notch/NotchDevice;

    .line 28
    new-instance v2, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

    invoke-direct {v2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/ntunisdk/zxing/notch/NotchImplHuaWei;

    invoke-direct {v2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplHuaWei;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v4, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;

    invoke-direct {v4}, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;-><init>()V

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-instance v4, Lcom/netease/ntunisdk/zxing/notch/NotchImplOppo;

    invoke-direct {v4}, Lcom/netease/ntunisdk/zxing/notch/NotchImplOppo;-><init>()V

    aput-object v4, v1, v2

    const/4 v2, 0x4

    new-instance v4, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;

    invoke-direct {v4}, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;-><init>()V

    aput-object v4, v1, v2

    const/4 v2, 0x5

    new-instance v4, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;

    invoke-direct {v4}, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;-><init>()V

    aput-object v4, v1, v2

    const/4 v2, 0x6

    new-instance v4, Lcom/netease/ntunisdk/zxing/notch/NotchImplNone;

    invoke-direct {v4}, Lcom/netease/ntunisdk/zxing/notch/NotchImplNone;-><init>()V

    aput-object v4, v1, v2

    .line 37
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 38
    invoke-virtual {v4, p0}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->checkModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    sput-object v4, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->sInstance:Lcom/netease/ntunisdk/zxing/notch/NotchDevice;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    sget-object p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->sInstance:Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
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

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "window"

    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 60
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-array p0, v0, [I

    const/4 v2, 0x0

    .line 62
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, p0, v2

    const/4 v2, 0x1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v1, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v0, [I

    .line 64
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public abstract addStatusBar(Landroid/content/Context;Landroid/view/Window;)V
.end method

.method protected final addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->getNotchHeightImpl(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    if-lez p1, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 80
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected abstract checkModel(Landroid/content/Context;)Z
.end method

.method protected final getNotchHeightImpl(Landroid/content/Context;Landroid/view/Window;)I
    .locals 3

    .line 69
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->isNotchHeightValidImpl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->lastOrientation:I

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 71
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchHeight:I

    .line 74
    :cond_0
    iget p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchHeight:I

    return p1
.end method

.method protected abstract initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
.end method

.method protected final isNotchHeightValidImpl(Landroid/content/Context;)Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->lastOrientation:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V
.end method

.method protected final justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V
    .locals 2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->getNotchHeightImpl(Landroid/content/Context;Landroid/view/Window;)I

    move-result p1

    if-lez p1, :cond_1

    .line 88
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v0, p3, p2

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, v0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->affectView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;->access$000(Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
