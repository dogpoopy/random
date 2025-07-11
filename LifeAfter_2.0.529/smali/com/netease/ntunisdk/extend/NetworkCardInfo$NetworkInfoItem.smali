.class Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;
.super Ljava/lang/Object;
.source "NetworkCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/extend/NetworkCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkInfoItem"
.end annotation


# instance fields
.field private final ipv4:Ljava/lang/String;

.field private final ipv6:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;->ipv4:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;->ipv6:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;->name:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIpv4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardInfo$NetworkInfoItem;->type:Ljava/lang/String;

    return-object v0
.end method
