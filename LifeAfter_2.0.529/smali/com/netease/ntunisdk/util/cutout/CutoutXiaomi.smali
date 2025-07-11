.class public Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;
.super Ljava/lang/Object;
.source "CutoutXiaomi.java"

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
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    .line 14
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    .line 16
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenWidth:I

    .line 17
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenHeight:I

    return-void
.end method

.method private getSizes(Landroid/app/Activity;)V
    .locals 4

    .line 23
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    const-string v1, "android"

    const-string v2, "dimen"

    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "notch_height"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x59

    .line 31
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    .line 34
    :cond_2
    :goto_0
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    if-nez v0, :cond_5

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "notch_width"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "status_bar_width"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-lez v0, :cond_4

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    goto :goto_1

    .line 42
    :cond_4
    invoke-direct {p0}, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->resetCutoutSize()V

    .line 45
    :cond_5
    :goto_1
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenHeight:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenWidth:I

    if-nez v0, :cond_7

    .line 46
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 49
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenWidth:I

    .line 50
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenHeight:I

    .line 52
    :cond_7
    iget p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenWidth:I

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenHeight:I

    if-le p1, v0, :cond_8

    .line 54
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenWidth:I

    .line 55
    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenHeight:I

    :cond_8
    return-void
.end method

.method private resetCutoutSize()V
    .locals 4

    .line 99
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "dipper"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x230

    const/16 v3, 0x59

    if-eqz v1, :cond_0

    .line 101
    iput v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    .line 102
    iput v3, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    goto :goto_0

    :cond_0
    const-string v1, "sirius"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x21c

    .line 104
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    const/16 v0, 0x55

    .line 105
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    goto :goto_0

    :cond_1
    const-string v1, "ursa"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iput v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    .line 108
    iput v3, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    goto :goto_0

    :cond_2
    const-string v1, "sakura"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x160

    .line 110
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    .line 111
    iput v3, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 5

    .line 91
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->getSizes(Landroid/app/Activity;)V

    new-array p1, v1, [I

    .line 93
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->screenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

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

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v1, [I

    .line 95
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

    .line 82
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->getSizes(Landroid/app/Activity;)V

    new-array p1, v1, [I

    const/4 v0, 0x0

    .line 84
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutWidth:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v1, [I

    .line 86
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
    .locals 7

    const-string v0, "cutout"

    .line 61
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->get:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "android.os.SystemProperties"

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 65
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->get:Ljava/lang/reflect/Method;

    .line 66
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->get:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->get:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.miui.notch"

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v6, p1, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->hasCutout:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "hasCutout Exception"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "hasCutout NoSuchMethodException"

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "hasCutout ClassNotFoundException"

    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutXiaomi;->hasCutout:Z

    return p1
.end method
