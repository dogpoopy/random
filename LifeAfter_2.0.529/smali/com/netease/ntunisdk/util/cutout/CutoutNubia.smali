.class public Lcom/netease/ntunisdk/util/cutout/CutoutNubia;
.super Ljava/lang/Object;
.source "CutoutNubia.java"

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

    const/16 v0, 0x1ce

    .line 8
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->left:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->top:I

    const/16 v0, 0x26a

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->right:I

    const/16 v0, 0x4e

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->bottom:I

    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 27
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->top:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->right:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->bottom:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 29
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

    .line 18
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 19
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->right:I

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->left:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->bottom:I

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutNubia;->top:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 21
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 1

    .line 12
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "NX606J"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
