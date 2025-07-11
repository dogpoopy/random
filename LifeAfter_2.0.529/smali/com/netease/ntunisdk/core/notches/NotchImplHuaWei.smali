.class public Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;
.super Lcom/netease/ntunisdk/core/notches/NotchDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/notches/NotchDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public addStatusBar(Landroid/content/Context;Landroid/view/Window;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v0
.end method

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 8

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNotchSize"

    new-array v2, p2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v1, :cond_0

    new-instance v2, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v5, v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    new-array v4, v4, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v6, v4, p2

    aput-object v2, v4, v1

    aput-object v6, v4, v5

    aput-object v6, v4, v3

    iput-object v4, p0, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v5, v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v2, v7, p2

    new-array v4, v4, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v2, v4, p2

    aput-object v6, v4, v1

    aput-object v6, v4, v5

    aput-object v6, v4, v3

    iput-object v4, p0, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/core/others/Utils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/core/notches/NotchImplHuaWei;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V

    return-void
.end method
