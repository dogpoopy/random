.class public Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;
.super Ljava/lang/Object;
.source "CutoutOneplus.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# instance fields
.field private bottom:I

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17a

    .line 8
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->left:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->top:I

    const/16 v0, 0x2be

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->right:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->bottom:I

    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 28
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->top:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->right:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->bottom:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 30
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
    .locals 3

    .line 19
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 20
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->right:I

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->left:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->bottom:I

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutOneplus;->top:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 22
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 2

    .line 12
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A6000"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "A6003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oneplus.screen.cameranotch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

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
