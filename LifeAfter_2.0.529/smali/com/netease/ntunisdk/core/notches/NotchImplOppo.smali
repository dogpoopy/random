.class public Lcom/netease/ntunisdk/core/notches/NotchImplOppo;
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

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method protected checkModel(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method protected initNotchHeight(Landroid/content/Context;Landroid/view/Window;)I
    .locals 7

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/core/others/Utils;->getStatusBarHeight(Landroid/content/Context;I)I

    move-result v0

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

    new-instance p1, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v4, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    new-array v2, v2, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object v5, v2, p2

    aput-object p1, v2, v3

    aput-object v5, v2, v4

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/core/notches/NotchInfo;

    invoke-direct {p1}, Lcom/netease/ntunisdk/core/notches/NotchInfo;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p2, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v4, v6}, Lcom/netease/ntunisdk/core/notches/NotchInfo;->setNotchPosition(IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object p1, v6, p2

    new-array v2, v2, [Lcom/netease/ntunisdk/core/notches/NotchInfo;

    aput-object p1, v2, p2

    aput-object v5, v2, v3

    aput-object v5, v2, v4

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;->mNotchs:[Lcom/netease/ntunisdk/core/notches/NotchInfo;

    :goto_0
    return v0
.end method

.method public justify(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/core/notches/NotchImplOppo;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V

    return-void
.end method
