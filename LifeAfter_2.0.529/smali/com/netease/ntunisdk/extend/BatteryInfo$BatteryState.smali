.class final enum Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;
.super Ljava/lang/Enum;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/extend/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BatteryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

.field public static final enum CHARGING:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

.field public static final enum FULL:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

.field public static final enum UNKNOWN:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

.field public static final enum UNPLUGGED:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;


# instance fields
.field public code:Ljava/lang/String;

.field public describe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const-string v3, "0"

    const-string v4, "unknown"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->UNKNOWN:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    .line 22
    new-instance v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    const/4 v2, 0x1

    const-string v3, "UNPLUGGED"

    const-string v4, "1"

    const-string v5, "unplugged"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->UNPLUGGED:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    const/4 v3, 0x2

    const-string v4, "CHARGING"

    const-string v5, "2"

    const-string v6, "charging"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->CHARGING:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    .line 24
    new-instance v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    const/4 v4, 0x3

    const-string v5, "FULL"

    const-string v6, "3"

    const-string v7, "full"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->FULL:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    .line 20
    sget-object v5, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->UNKNOWN:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->UNPLUGGED:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->CHARGING:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->FULL:Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->$VALUES:[Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->code:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->describe:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;
    .locals 1

    .line 20
    const-class v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->$VALUES:[Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/extend/BatteryInfo$BatteryState;

    return-object v0
.end method
