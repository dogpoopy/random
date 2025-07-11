.class public Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;
.super Ljava/lang/Object;
.source "CutoutLenovo.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# instance fields
.field private h:I

.field private hasCutout:Z

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->hasCutout:Z

    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 4

    .line 42
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 43
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->x:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->y:I

    aput v2, p1, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->w:I

    add-int/2addr v1, v3

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->h:I

    add-int/2addr v2, v1

    aput v2, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 45
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

    .line 34
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->hasCutout(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    const/4 v0, 0x0

    .line 35
    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->w:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->h:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    .line 37
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hasCutout(Landroid/app/Activity;)Z
    .locals 5

    .line 13
    iget-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->hasCutout:Z

    if-nez v0, :cond_5

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "config_screen_has_notch"

    const-string v3, "bool"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->hasCutout:Z

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "integer"

    const-string v4, "notch_x"

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->x:I

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "notch_y"

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->y:I

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "notch_w"

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->w:I

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "notch_h"

    invoke-virtual {v0, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :cond_4
    iput v2, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->h:I

    .line 29
    :cond_5
    iget-boolean p1, p0, Lcom/netease/ntunisdk/util/cutout/CutoutLenovo;->hasCutout:Z

    return p1
.end method
