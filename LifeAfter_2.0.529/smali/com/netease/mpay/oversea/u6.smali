.class public Lcom/netease/mpay/oversea/u6;
.super Lcom/netease/mpay/oversea/s6;
.source "NotchImplHuaWei.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/s6;->b(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
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

.method protected b(Landroid/content/Context;Landroid/view/Window;)I
    .locals 8

    const/4 p2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNotchSize"

    new-array v2, p2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    .line 5
    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
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

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v5, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    new-array v4, v4, [Lcom/netease/mpay/oversea/a7;

    aput-object v6, v4, p2

    aput-object v2, v4, v1

    aput-object v6, v4, v5

    aput-object v6, v4, v3

    .line 9
    iput-object v4, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 12
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v5, v7}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 13
    iget-object v7, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v2, v7, p2

    new-array v4, v4, [Lcom/netease/mpay/oversea/a7;

    aput-object v2, v4, p2

    aput-object v6, v4, v1

    aput-object v6, v4, v5

    aput-object v6, v4, v3

    .line 14
    iput-object v4, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;
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

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    return v0
.end method
