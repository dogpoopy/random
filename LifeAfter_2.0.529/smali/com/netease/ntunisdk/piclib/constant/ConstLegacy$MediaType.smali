.class public final enum Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;
.super Ljava/lang/Enum;
.source "ConstLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

.field public static final enum GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

.field public static final enum SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

.field public static final enum VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v1, "SINGLE_FRAME_IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    new-instance v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v3, "GIF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    new-instance v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->$VALUES:[Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;
    .locals 1

    .line 14
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->$VALUES:[Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    return-object v0
.end method
