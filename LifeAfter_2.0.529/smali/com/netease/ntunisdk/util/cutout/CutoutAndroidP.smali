.class public Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;
.super Ljava/lang/Object;
.source "CutoutAndroidP.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "CutoutAndroidP"


# instance fields
.field private rect:Landroid/graphics/Rect;

.field private windowInsets:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndInit(Landroid/app/Activity;)Z
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->windowInsets:Landroid/view/WindowInsets;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CutoutAndroidP"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->windowInsets:Landroid/view/WindowInsets;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowInsets:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->windowInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->windowInsets:Landroid/view/WindowInsets;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayCutout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 35
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLAG_FULLSCREEN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 40
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    goto :goto_2

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-nez p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 48
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_4
    return v2

    .line 56
    :cond_5
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    :cond_6
    :goto_2
    return v1
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    aput v1, p1, v0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 93
    fill-array-data p1, :array_0

    :goto_0
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
    .locals 3

    .line 79
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 82
    fill-array-data p1, :array_0

    :goto_0
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 3

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    return v1

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->checkAndInit(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutAndroidP;->rect:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
