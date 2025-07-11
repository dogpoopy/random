.class public Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;
.super Ljava/lang/Object;
.source "WaterfallAndroidR.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/WaterfallInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterfallAndroidR"


# instance fields
.field private hasWaterfall:Z

.field private safeInset:[I

.field private windowInsets:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->hasWaterfall:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->safeInset:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private checkAndInit(Landroid/app/Activity;)Z
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->windowInsets:Landroid/view/WindowInsets;

    if-nez v0, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decorView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaterfallAndroidR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->windowInsets:Landroid/view/WindowInsets;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "windowInsets:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->windowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->windowInsets:Landroid/view/WindowInsets;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 27
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->hasWaterfall:Z

    return v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCutout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 35
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne v2, v1, :cond_1

    .line 36
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->hasWaterfall:Z

    return v0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 41
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    aput v2, v1, v0

    .line 42
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 43
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x3

    .line 44
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    aput p1, v1, v2

    iput-object v1, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->safeInset:[I

    .line 47
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->safeInset:[I

    aget v1, p1, v0

    if-nez v1, :cond_2

    aget p1, p1, v4

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->hasWaterfall:Z

    .line 53
    :cond_4
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->hasWaterfall:Z

    return p1
.end method


# virtual methods
.method public getSafeInset(Landroid/app/Activity;)[I
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->checkAndInit(Landroid/app/Activity;)Z

    .line 64
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->safeInset:[I

    return-object p1
.end method

.method public hasWaterfall(Landroid/app/Activity;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/WaterfallAndroidR;->checkAndInit(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
