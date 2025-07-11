.class public Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;
.super Lcom/netease/ntunisdk/zxing/notch/NotchDevice;
.source "NotchImplMiui.java"


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

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 3

    const/4 p1, 0x0

    .line 15
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "ro.miui.notch"

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/zxing/notch/SystemPropProxy;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    const/4 p1, 0x1

    :catchall_0
    :cond_0
    return p1
.end method

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 8

    const/4 p2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
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

    .line 32
    new-instance v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 33
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v5, v7}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    new-array v3, v3, [Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v6, v3, p2

    aput-object v1, v3, v4

    aput-object v6, v3, v5

    aput-object v6, v3, v2

    .line 34
    iput-object v3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    goto :goto_1

    .line 36
    :cond_1
    new-instance v1, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;-><init>()V

    .line 37
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2, p2, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v5, v7}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    .line 38
    iget-object v7, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, v7, p2

    new-array v3, v3, [Lcom/netease/ntunisdk/zxing/notch/NotchInfo;

    aput-object v1, v3, p2

    aput-object v6, v3, v4

    aput-object v6, v3, v5

    aput-object v6, v3, v2

    .line 39
    iput-object v3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;->mNotchs:[Lcom/netease/ntunisdk/zxing/notch/NotchInfo;
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

    goto :goto_2

    .line 44
    :cond_2
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/zxing/notch/Utils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result v0

    :goto_2
    return v0
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/zxing/notch/NotchImplMiui;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V

    return-void
.end method
