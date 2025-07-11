.class public Lcom/netease/download/dns/DnsParams;
.super Ljava/lang/Object;
.source "DnsParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/dns/DnsParams$Unit;
    }
.end annotation


# instance fields
.field private mDnsIpNodeUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/dns/DnsParams$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/dns/DnsParams;->mDnsIpNodeUnitList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/netease/download/dns/DnsParams$Unit;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/download/dns/DnsParams$Unit;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/netease/download/dns/DnsParams;->mDnsIpNodeUnitList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDnsIpNodeUnitList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/dns/DnsParams$Unit;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/netease/download/dns/DnsParams;->mDnsIpNodeUnitList:Ljava/util/ArrayList;

    return-object v0
.end method
