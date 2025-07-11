.class final enum Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;
.super Ljava/lang/Enum;
.source "HotspotInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/extend/HotspotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HotspotState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

.field public static final enum WIFI_AP_STATE_DISABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

.field public static final enum WIFI_AP_STATE_ENABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

.field public static final enum WIFI_AP_STATE_UNKNOWN:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;


# instance fields
.field public code:I

.field public describe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const/4 v1, 0x0

    const-string v2, "WIFI_AP_STATE_DISABLED"

    const/16 v3, 0xb

    const-string v4, "close"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_DISABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    .line 42
    new-instance v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const/4 v2, 0x1

    const-string v3, "WIFI_AP_STATE_ENABLED"

    const/16 v4, 0xd

    const-string v5, "open"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_ENABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    .line 43
    new-instance v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const/4 v3, 0x2

    const-string v4, "WIFI_AP_STATE_UNKNOWN"

    const/16 v5, 0xe

    const-string v6, "unknown"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_UNKNOWN:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    .line 40
    sget-object v4, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_DISABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_ENABLED:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->WIFI_AP_STATE_UNKNOWN:Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->$VALUES:[Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->code:I

    .line 49
    iput-object p4, p0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->describe:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;
    .locals 1

    .line 40
    const-class v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->$VALUES:[Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/extend/HotspotInfo$HotspotState;

    return-object v0
.end method
