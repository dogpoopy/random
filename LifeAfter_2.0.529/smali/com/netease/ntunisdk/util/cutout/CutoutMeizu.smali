.class public Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;
.super Ljava/lang/Object;
.source "CutoutMeizu.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# instance fields
.field private cutoutHeight:I

.field private cutoutWidth:I

.field private field:Ljava/lang/reflect/Field;

.field private hasCutout:Z

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 5

    .line 67
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    .line 68
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->screenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutWidth:I

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

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 70
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
    .locals 4

    .line 52
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutHeight:I

    if-nez v0, :cond_2

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "dimen"

    const-string v3, "fringe_height"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutHeight:I

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "fringe_width"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutWidth:I

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 62
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutWidth:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->cutoutHeight:I

    aput v1, p1, v0

    return-object p1
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "cutout"

    .line 20
    iget-boolean v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout:Z

    if-nez v1, :cond_5

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->field:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-string v1, "flyme.config.FlymeFeature"

    .line 23
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IS_FRINGE_DEVICE"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->field:Ljava/lang/reflect/Field;

    .line 25
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "hasCutout IllegalAccessException"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "hasCutout NoSuchFieldException"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string v1, "hasCutout ClassNotFoundException"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout:Z

    if-nez v0, :cond_3

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 37
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout:Z

    .line 39
    :cond_3
    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->screenHeight:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->screenWidth:I

    if-nez v0, :cond_5

    .line 40
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 43
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->screenWidth:I

    .line 44
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->screenHeight:I

    .line 47
    :cond_5
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutMeizu;->hasCutout:Z

    return p1
.end method
