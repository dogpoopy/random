.class public final enum Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

.field public static final enum IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

.field public static final enum VIDEO:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 139
    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 138
    sput-object v3, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->$VALUES:[Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 138
    const-class v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;
    .locals 1

    .line 138
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->$VALUES:[Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    return-object v0
.end method
