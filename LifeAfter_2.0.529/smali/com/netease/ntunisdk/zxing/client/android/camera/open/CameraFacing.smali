.class public final enum Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;
.super Ljava/lang/Enum;
.source "CameraFacing.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

.field public static final enum BACK:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

.field public static final enum FRONT:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    const/4 v1, 0x0

    const-string v2, "BACK"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->BACK:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    .line 25
    new-instance v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    const/4 v2, 0x1

    const-string v3, "FRONT"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->FRONT:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    .line 22
    sget-object v3, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->BACK:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->FRONT:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->$VALUES:[Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;
    .locals 1

    .line 22
    const-class v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->$VALUES:[Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    return-object v0
.end method
