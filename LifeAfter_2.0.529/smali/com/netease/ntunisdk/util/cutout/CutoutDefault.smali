.class public Lcom/netease/ntunisdk/util/cutout/CutoutDefault;
.super Ljava/lang/Object;
.source "CutoutDefault.java"

# interfaces
.implements Lcom/netease/ntunisdk/util/cutout/CutoutInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCutoutPosition(Landroid/app/Activity;)[I
    .locals 0

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 18
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
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 13
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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
