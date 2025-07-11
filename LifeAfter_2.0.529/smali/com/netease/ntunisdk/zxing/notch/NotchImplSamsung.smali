.class public Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;
.super Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
.source "NotchImplSamsung.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netease/ntunisdk/zxing/notch/NotchDevice;-><init>()V

    return-void
.end method

.method private getDecorView(Landroid/view/Window;)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public addStatusBar(Landroid/content/Context;Landroid/view/Window;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "config_mainBuiltInDisplayCutout"

    const-string v2, "string"

    const-string v3, "android"

    .line 22
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 24
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

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 9

    const/4 v0, 0x0

    .line 34
    :try_start_0
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->getDecorView(Landroid/view/Window;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    .line 37
    const-class v1, Landroid/view/WindowInsets;

    const-string v2, "getDisplayCutout"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSafeInsetTop"

    new-array v5, v0, [Ljava/lang/Class;

    .line 42
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    .line 43
    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "getSafeInsetBottom"

    new-array v6, v0, [Ljava/lang/Class;

    .line 44
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "getSafeInsetLeft"

    new-array v7, v0, [Ljava/lang/Class;

    .line 46
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 46
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "getSafeInsetRight"

    new-array v8, v0, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 50
    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    const-string v1, "getBoundingRects"

    new-array v4, v0, [Ljava/lang/Class;

    .line 51
    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 51
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return v0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p1

    .line 55
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 56
    new-instance p2, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 57
    aget v4, p1, v0

    aget v5, p1, v3

    invoke-virtual {p2, v4, v5}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setScreenInfo(II)V

    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 59
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v3, v5}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    .line 60
    iget-object v5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object p2, v5, v0

    goto :goto_0

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, p2, v0

    const/4 v4, 0x0

    .line 64
    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 65
    new-instance p2, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 66
    aget v4, p1, v0

    aget v5, p1, v3

    invoke-virtual {p2, v4, v5}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setScreenInfo(II)V

    .line 67
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 68
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v3, v5}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    .line 69
    iget-object v5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object p2, v5, v3

    goto :goto_1

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, p2, v3

    :goto_1
    const/4 p2, 0x2

    .line 74
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 75
    new-instance v4, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {v4}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 76
    aget v5, p1, v0

    aget v6, p1, v3

    invoke-virtual {v4, v5, v6}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setScreenInfo(II)V

    .line 77
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    .line 78
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v3, v6}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    .line 79
    iget-object v6, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v4, v6, p2

    move v4, v5

    goto :goto_2

    .line 81
    :cond_3
    iget-object v5, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, v5, p2

    :goto_2
    const/4 p2, 0x3

    .line 83
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 84
    new-instance v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 85
    aget v4, p1, v0

    aget p1, p1, v3

    invoke-virtual {v1, v4, p1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setScreenInfo(II)V

    .line 86
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, p1, v4

    .line 87
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v3, p1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    .line 88
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, p1, p2

    goto :goto_3

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v4

    :catch_0
    :cond_5
    return v0
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/zxing/notch/NotchImplSamsung;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V

    return-void
.end method
