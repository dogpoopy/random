.class final enum Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/extend/NetworkCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

.field public static final enum DEFAULT:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

.field public static final enum MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

.field public static final enum WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->DEFAULT:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    .line 45
    new-instance v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    const/4 v2, 0x1

    const-string v3, "MOBILE"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    .line 46
    new-instance v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    const/4 v3, 0x2

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v3}, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    .line 43
    sget-object v4, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->DEFAULT:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->MOBILE:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->WIFI:Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->$VALUES:[Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;
    .locals 1

    .line 43
    const-class v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;
    .locals 1

    .line 43
    sget-object v0, Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->$VALUES:[Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/extend/NetworkCardManager$NetworkType;

    return-object v0
.end method
