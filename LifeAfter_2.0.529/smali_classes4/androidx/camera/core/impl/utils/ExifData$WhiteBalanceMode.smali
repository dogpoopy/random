.class public final enum Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
.super Ljava/lang/Enum;
.source "ExifData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/ExifData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhiteBalanceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

.field public static final enum AUTO:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

.field public static final enum MANUAL:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;


# direct methods
.method private static synthetic $values()[Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    .line 156
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->AUTO:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->MANUAL:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 158
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->AUTO:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    .line 160
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    const-string v1, "MANUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->MANUAL:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    .line 156
    invoke-static {}, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->$values()[Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->$VALUES:[Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    .locals 1

    .line 156
    const-class v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    .locals 1

    .line 156
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->$VALUES:[Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    return-object v0
.end method
