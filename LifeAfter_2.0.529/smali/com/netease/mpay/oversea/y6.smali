.class public Lcom/netease/mpay/oversea/y6;
.super Lcom/netease/mpay/oversea/s6;
.source "NotchImplSamsung.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s6;-><init>()V

    return-void
.end method

.method private a(Landroid/view/Window;)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/s6;->b(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/mpay/oversea/s6$a;)V

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "config_mainBuiltInDisplayCutout"

    const-string v2, "string"

    const-string v3, "android"

    .line 2
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method protected b(Landroid/content/Context;Landroid/view/Window;)I
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/y6;->a(Landroid/view/Window;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    .line 4
    const-class v1, Landroid/view/WindowInsets;

    const-string v2, "getDisplayCutout"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSafeInsetTop"

    new-array v5, v0, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "getSafeInsetBottom"

    new-array v6, v0, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "getSafeInsetLeft"

    new-array v7, v0, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "getSafeInsetRight"

    new-array v8, v0, [Ljava/lang/Class;

    .line 21
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 25
    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v1, "getBoundingRects"

    new-array v8, v0, [Ljava/lang/Class;

    .line 26
    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 28
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s6;->c(Landroid/content/Context;)[I

    move-result-object p1

    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v8, 0x1

    if-ne p2, v8, :cond_5

    .line 33
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-lez v4, :cond_1

    .line 35
    new-instance v1, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 36
    aget v2, p1, v0

    aget p1, p1, v8

    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 37
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 38
    invoke-virtual {v1, p1, v3, p2}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 39
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, p2, v8

    goto :goto_0

    :cond_1
    if-lez v6, :cond_2

    .line 41
    new-instance v1, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 42
    aget v2, p1, v0

    aget p1, p1, v8

    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 43
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 44
    invoke-virtual {v1, p1, v8, p2}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 45
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, p2, v0

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 47
    new-instance v1, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 48
    aget v2, p1, v0

    aget p1, p1, v8

    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 49
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    const/4 v2, 0x4

    .line 50
    invoke-virtual {v1, p1, v2, p2}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 51
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v1, p2, v3

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    .line 53
    new-instance v2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 54
    aget v3, p1, v0

    aget p1, p1, v8

    invoke-virtual {v2, v3, p1}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 55
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    const/16 v3, 0x8

    .line 56
    invoke-virtual {v2, p1, v3, p2}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 57
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v2, p2, v1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 63
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    const/4 v4, 0x0

    if-nez p2, :cond_6

    .line 64
    new-instance p2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 65
    aget v5, p1, v0

    aget v6, p1, v8

    invoke-virtual {p2, v5, v6}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 66
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 67
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v8, v6}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 68
    iget-object v6, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object p2, v6, v0

    goto :goto_1

    .line 70
    :cond_6
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v4, p2, v0

    const/4 v5, 0x0

    .line 72
    :goto_1
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 73
    new-instance p2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 74
    aget v5, p1, v0

    aget v6, p1, v8

    invoke-virtual {p2, v5, v6}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 75
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 76
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v8, v6}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 77
    iget-object v6, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object p2, v6, v8

    goto :goto_2

    .line 79
    :cond_7
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v4, p2, v8

    .line 82
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 83
    new-instance p2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 84
    aget v5, p1, v0

    aget v6, p1, v8

    invoke-virtual {p2, v5, v6}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 85
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v8, v6}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 87
    iget-object v6, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object p2, v6, v3

    goto :goto_3

    .line 89
    :cond_8
    iget-object p2, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v4, p2, v3

    .line 91
    :goto_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 92
    new-instance p2, Lcom/netease/mpay/oversea/a7;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/a7;-><init>()V

    .line 93
    aget v3, p1, v0

    aget p1, p1, v8

    invoke-virtual {p2, v3, p1}, Lcom/netease/mpay/oversea/a7;->a(II)V

    .line 94
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, p1, v3

    .line 95
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v8, p1}, Lcom/netease/mpay/oversea/a7;->a(IILandroid/graphics/Rect;)V

    .line 96
    iget-object p1, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object p2, p1, v1

    goto :goto_4

    .line 98
    :cond_9
    iget-object p1, p0, Lcom/netease/mpay/oversea/s6;->a:[Lcom/netease/mpay/oversea/a7;

    aput-object v4, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v5

    :catch_0
    :cond_a
    return v0
.end method
