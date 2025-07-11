.class public Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;
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

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "config_mainBuiltInDisplayCutout"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    const-class v2, Landroid/view/WindowInsets;

    const-string v3, "getDisplayCutout"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getSafeInsetTop"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "getSafeInsetBottom"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "getSafeInsetLeft"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "getSafeInsetRight"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v7, v5, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    const-string v2, "getBoundingRects"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x1

    if-ne p2, v9, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-lez v5, :cond_2

    new-instance v0, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v2, p1, v1

    aget p1, p1, v9

    invoke-virtual {v0, v2, p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v4, p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v9

    goto :goto_1

    :cond_2
    if-lez v7, :cond_3

    new-instance v0, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v2, p1, v1

    aget p1, p1, v9

    invoke-virtual {v0, v2, p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    iget p1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p1, v9, p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v1

    goto :goto_1

    :cond_3
    if-lez v8, :cond_4

    new-instance v0, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v2, p1, v1

    aget p1, p1, v9

    invoke-virtual {v0, v2, p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v4

    goto :goto_1

    :cond_4
    if-lez v6, :cond_5

    new-instance v0, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v3, p1, v1

    aget p1, p1, v9

    invoke-virtual {v0, v3, p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3, p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return p1

    :cond_6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v5, p1, v1

    aget v6, p1, v9

    invoke-virtual {p2, v5, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v9, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object p2, v6, v1

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v1

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    new-instance p2, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v5, p1, v1

    aget v6, p1, v9

    invoke-virtual {p2, v5, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v9, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object p2, v6, v9

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v9

    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    new-instance p2, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v5, p1, v1

    aget v6, p1, v9

    invoke-virtual {p2, v5, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v9, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object p2, v6, v4

    goto :goto_4

    :cond_9
    iget-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p2, v4

    :goto_4
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    new-instance p2, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    aget v0, p1, v1

    aget p1, p1, v9

    invoke-virtual {p2, v0, p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setScreenInfo(II)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, p1, v0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v9, p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object p2, p1, v2

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v0, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return v5

    :catch_0
    :cond_b
    return v1
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/core/notches/NotchImplSamsung;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V

    return-void
.end method
