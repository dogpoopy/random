.class public Lcom/netease/ntunisdk/util/cutout/CutoutLg;
.super Ljava/lang/Object;
.source "CutoutLg.java"

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

    const/16 v0, 0x1b0

    .line 7
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->left:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->top:I

    const/16 v0, 0x3f0

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->right:I

    const/16 v0, 0x5e

    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->bottom:I

    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 26
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->top:I

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->right:I

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->bottom:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 28
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 18
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->right:I

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->left:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->bottom:I

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLg;->top:I

    sub-int/2addr v1, v2

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 20
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

    .line 11
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "LM-G710"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
