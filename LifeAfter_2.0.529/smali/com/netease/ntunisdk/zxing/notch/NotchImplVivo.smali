.class public Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;
.super Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
.source "NotchImplVivo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public addStatusBar(Landroid/content/Context;Landroid/view/Window;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "android.util.FtFeature"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isFeatureSupport"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v7, 0x20

    .line 22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v4, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 7

    const/4 p2, 0x0

    .line 38
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/zxing/notch/Utils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p1, v3, :cond_0

    .line 40
    new-instance p1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {p1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 41
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v4, v6}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    new-array v2, v2, [Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v5, v2, p2

    aput-object p1, v2, v3

    aput-object v5, v2, v4

    aput-object v5, v2, v1

    .line 42
    iput-object v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {p1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 45
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p2, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v4, v6}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    .line 46
    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object p1, v6, p2

    new-array v2, v2, [Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object p1, v2, p2

    aput-object v5, v2, v3

    aput-object v5, v2, v4

    aput-object v5, v2, v1

    .line 47
    iput-object v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    :goto_0
    return v0
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/zxing/notch/NotchImplVivo;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V

    return-void
.end method
