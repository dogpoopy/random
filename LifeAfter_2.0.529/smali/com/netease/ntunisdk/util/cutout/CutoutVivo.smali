.class public Lcom/netease/ntunisdk/util/cutout/CutoutVivo;
.super Ljava/lang/Object;
.source "CutoutVivo.java"

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

.method private dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private getSizes(Landroid/app/Activity;)V
    .locals 1

    .line 26
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutHeight:I

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutWidth:I

    const/high16 v0, 0x41d80000    # 27.0f

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutHeight:I

    .line 30
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->screenHeight:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->screenWidth:I

    if-nez v0, :cond_3

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 34
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->screenWidth:I

    .line 35
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->screenHeight:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 5

    .line 70
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 71
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->screenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutWidth:I

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

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 73
    fill-array-data p1, :array_0

    return-object p1

    nop

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

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->getSizes(Landroid/app/Activity;)V

    new-array p1, v1, [I

    const/4 v0, 0x0

    .line 63
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutWidth:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v1, [I

    .line 65
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getSafeInset(Landroid/app/Activity;)[I
    .locals 0

    .line 85
    sget-object p1, Lcom/netease/ntunisdk/util/cutout/CutoutUtil;->FALSE_WATERFALL_SAFETY:[I

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 6

    const-string v0, "cutout"

    .line 41
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->get:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "android.util.FtFeature"

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 45
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->get:Ljava/lang/reflect/Method;

    .line 46
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->get:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->hasCutout:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "hasCutout Exception"

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "hasCutout NoSuchMethodException"

    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "hasCutout ClassNotFoundException"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutVivo;->hasCutout:Z

    return p1
.end method

.method public hasWaterfall(Landroid/app/Activity;)Z
    .locals 1

    .line 78
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "V1923"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V1924"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V1950"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
