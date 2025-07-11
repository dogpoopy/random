.class public Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;
.super Ljava/lang/Object;
.source "CutoutSamsung.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "CutoutSamsung"


# instance fields
.field private mHasDisplayCutout:Z

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getA8sRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 6

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x87

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "window"

    .line 106
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-nez v3, :cond_0

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 111
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 112
    invoke-virtual {p1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 113
    iget p1, v4, Landroid/graphics/Point;->x:I

    .line 114
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 115
    invoke-static {p1, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr p1, v4

    sub-int/2addr p1, v5

    .line 117
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 p1, 0x3

    if-eq v3, p1, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit16 p1, v5, -0x87

    invoke-direct {v0, p1, v1, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 123
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit16 v1, p1, -0x87

    add-int/lit16 v2, v5, -0x87

    invoke-direct {v0, v1, v2, p1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 120
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit16 v3, p1, -0x87

    invoke-direct {v0, v1, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 97
    iget p1, p1, Landroid/graphics/Rect;->left:I

    aput p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aput v1, v0, p1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    aput v1, v0, p1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 99
    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getCutoutWidthHeight(Landroid/app/Activity;)[I
    .locals 3

    .line 85
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 86
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    aput p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 88
    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 6

    const-string v0, "android"

    const-string v1, "CutoutSamsung"

    .line 26
    iget-boolean v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->mHasDisplayCutout:Z

    if-nez v2, :cond_7

    .line 28
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return v4

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_mainBuiltInDisplayCutout"

    const-string v5, "string"

    .line 33
    invoke-virtual {v2, v3, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->mHasDisplayCutout:Z

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, ""

    const-string v5, "dimen"

    .line 39
    invoke-virtual {v2, v3, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 43
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusBarHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windowInsets:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    .line 50
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->mHasDisplayCutout:Z

    return p1

    .line 52
    :cond_4
    const-class v2, Landroid/view/WindowInsets;

    const-string v3, "getDisplayCutout"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 53
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 55
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-G8870"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->getA8sRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    goto :goto_3

    .line 59
    :cond_5
    const-class p1, Landroid/view/WindowInsets;

    const-string v2, "getStableInsetTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 62
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;

    goto :goto_3

    .line 68
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getBoundingRects"

    new-array v3, v4, [Ljava/lang/Class;

    .line 69
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    .line 70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 71
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->rect:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not update hasDisplayCutout. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutSamsung;->mHasDisplayCutout:Z

    return p1
.end method
