.class public final enum Lcom/netease/ntunisdk/external/protocol/Scene;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/external/protocol/Scene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/external/protocol/Scene;

.field public static final enum LAUNCHER:Lcom/netease/ntunisdk/external/protocol/Scene;

.field public static final enum LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

.field public static final enum REVIEW:Lcom/netease/ntunisdk/external/protocol/Scene;

.field public static final enum SWITCH_ACCOUNT:Lcom/netease/ntunisdk/external/protocol/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v1, 0x0

    const-string v2, "LAUNCHER"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/Scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->LAUNCHER:Lcom/netease/ntunisdk/external/protocol/Scene;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v2, 0x1

    const-string v3, "LOGIN"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/external/protocol/Scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v3, 0x2

    const-string v4, "SWITCH_ACCOUNT"

    invoke-direct {v0, v4, v3}, Lcom/netease/ntunisdk/external/protocol/Scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->SWITCH_ACCOUNT:Lcom/netease/ntunisdk/external/protocol/Scene;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v4, 0x3

    const-string v5, "REVIEW"

    invoke-direct {v0, v5, v4}, Lcom/netease/ntunisdk/external/protocol/Scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->REVIEW:Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 9
    sget-object v5, Lcom/netease/ntunisdk/external/protocol/Scene;->LAUNCHER:Lcom/netease/ntunisdk/external/protocol/Scene;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->SWITCH_ACCOUNT:Lcom/netease/ntunisdk/external/protocol/Scene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->REVIEW:Lcom/netease/ntunisdk/external/protocol/Scene;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->$VALUES:[Lcom/netease/ntunisdk/external/protocol/Scene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/external/protocol/Scene;
    .locals 1

    .line 9
    const-class v0, Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/external/protocol/Scene;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/external/protocol/Scene;
    .locals 1

    .line 9
    sget-object v0, Lcom/netease/ntunisdk/external/protocol/Scene;->$VALUES:[Lcom/netease/ntunisdk/external/protocol/Scene;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/external/protocol/Scene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/external/protocol/Scene;

    return-object v0
.end method
