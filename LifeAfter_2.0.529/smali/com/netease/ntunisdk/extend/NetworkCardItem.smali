.class public Lcom/netease/ntunisdk/extend/NetworkCardItem;
.super Ljava/lang/Object;
.source "NetworkCardItem.java"


# instance fields
.field private ipv4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipv6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->ipv4:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->ipv6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getIpv4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->ipv4:Ljava/util/List;

    return-object v0
.end method

.method public getIpv6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->ipv6:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setIpv4(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->ipv4:Ljava/util/List;

    return-void
.end method

.method public setIpv6(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->ipv6:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/netease/ntunisdk/extend/NetworkCardItem;->type:Ljava/lang/String;

    return-void
.end method
