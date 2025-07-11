.class public Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;
.super Ljava/lang/Object;
.source "CutoutSmartisan.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSizes(Landroid/app/Activity;)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutHeight:I

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x52

    .line 21
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutWidth:I

    .line 22
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutHeight:I

    .line 24
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->screenHeight:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->screenWidth:I

    if-nez v0, :cond_3

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 28
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->screenWidth:I

    .line 29
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->screenHeight:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 5

    .line 64
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 65
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->screenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutWidth:I

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

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 67
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

    .line 55
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->getSizes(Landroid/app/Activity;)V

    new-array p1, v1, [I

    const/4 v0, 0x0

    .line 57
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutWidth:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v1, [I

    .line 59
    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 6

    const-string v0, "cutout"

    .line 35
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->get:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "smartisanos.api.DisplayUtilsSmt"

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 39
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->get:Ljava/lang/reflect/Method;

    .line 40
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->get:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->hasCutout:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "hasCutout Exception"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "hasCutout NoSuchMethodException"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "hasCutout ClassNotFoundException"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSmartisan;->hasCutout:Z

    return p1
.end method
