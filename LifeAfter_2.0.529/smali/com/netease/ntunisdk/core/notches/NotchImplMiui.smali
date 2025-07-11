.class public Lcom/netease/ntunisdk/core/notches/NotchImplMiui;
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

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const-string v0, "ro.miui.notch"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/core/notches/SystemPropProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return v1

    :catchall_0
    :cond_0
    return p1
.end method

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 8

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v1, v4, :cond_1

    new-instance v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v5, v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    new-array v3, v3, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v6, v3, p2

    aput-object v1, v3, v4

    aput-object v6, v3, v5

    aput-object v6, v3, v2

    iput-object v3, p0, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v5, v7}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v1, v7, p2

    new-array v3, v3, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v1, v3, p2

    aput-object v6, v3, v4

    aput-object v6, v3, v5

    aput-object v6, v3, v2

    iput-object v3, p0, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    goto :goto_1

    :catchall_1
    const/4 v0, 0x0

    :goto_1
    if-lez v0, :cond_2

    return v0

    :cond_2
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/core/others/Utils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/core/notches/NotchImplMiui;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V

    return-void
.end method
