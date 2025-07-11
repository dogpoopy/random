.class public Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;
.super Ljava/lang/Object;
.source "CutoutHuawei.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;
.implements Lcom/netease/ntunisdk/util/cutout/WaterfallInterface;


# instance fields
.field private cutoutHeight:I

.field private cutoutWidth:I

.field private get:Ljava/lang/reflect/Method;

.field private hasCutout:Z

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNotchSize(Landroid/content/Context;)V
    .locals 5

    const-string v0, "cutout"

    .line 39
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutHeight:I

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNotchSize"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 43
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 45
    aget v2, v1, v3

    iput v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutWidth:I

    const/4 v2, 0x1

    .line 46
    aget v1, v1, v2

    iput v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutHeight:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "getNotchSize Exception"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "getNotchSize NoSuchMethodException"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string v1, "getNotchSize ClassNotFoundException"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    :goto_0
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenHeight:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenWidth:I

    if-nez v0, :cond_3

    .line 57
    :cond_2
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 58
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 60
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenWidth:I

    .line 61
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenHeight:I

    .line 63
    :cond_3
    iget p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenWidth:I

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenHeight:I

    if-le p1, v0, :cond_4

    .line 65
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenWidth:I

    .line 66
    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenHeight:I

    :cond_4
    return-void
.end method

.method private hasNotchInScreen(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "cutout"

    .line 21
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->get:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "hasNotchInScreen"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 25
    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->get:Ljava/lang/reflect/Method;

    .line 26
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->get:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->hasCutout:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "hasNotchInScreen Exception"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "hasNotchInScreen NoSuchMethodException"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "hasNotchInScreen ClassNotFoundException"

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->hasCutout:Z

    return p1
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 5

    .line 83
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->getNotchSize(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 85
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->screenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutWidth:I

    sub-int v2, v0, v1

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    const/4 v4, 0x0

    aput v2, p1, v4

    aput v4, p1, v3

    const/4 v2, 0x2

    add-int/2addr v0, v1

    shr-int/2addr v0, v3

    aput v0, p1, v2

    const/4 v0, 0x3

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 87
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getCutoutWidthHeight(Landroid/app/Activity;)[I
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->getNotchSize(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 78
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutWidth:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->cutoutHeight:I

    const/4 v1, 0x1

    aput v0, p1, v1

    return-object p1
.end method

.method public getSafeInset(Landroid/app/Activity;)[I
    .locals 0

    .line 98
    sget-object p1, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->FALSE_WATERFALL_SAFETY:[I

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutHuawei;->hasNotchInScreen(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public hasWaterfall(Landroid/app/Activity;)Z
    .locals 1

    .line 92
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "LIO"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
