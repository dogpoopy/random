.class public Lcom/netease/download/config/ConfigParams$CdnUrlUnit;
.super Ljava/lang/Object;
.source "ConfigParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/config/ConfigParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdnUrlUnit"
.end annotation


# instance fields
.field mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPort:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mUrlWithPort:Ljava/lang/String;

.field mWeight:I

.field final synthetic this$0:Lcom/netease/download/config/ConfigParams;


# direct methods
.method public constructor <init>(Lcom/netease/download/config/ConfigParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->this$0:Lcom/netease/download/config/ConfigParams;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 625
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrlWithPort:Ljava/lang/String;

    .line 626
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrl:Ljava/lang/String;

    .line 627
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mPort:Ljava/lang/String;

    .line 628
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mIpList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 629
    iput p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mWeight:I

    .line 633
    iput-object p2, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrlWithPort:Ljava/lang/String;

    .line 634
    iput-object p3, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrl:Ljava/lang/String;

    .line 635
    iput-object p4, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mPort:Ljava/lang/String;

    .line 636
    iput p5, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mWeight:I

    .line 638
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 641
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/download/dns/DnsParams$Unit;

    iget-object p1, p1, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mIpList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public getmIpList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmPort()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmUrlWithPort()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrlWithPort:Ljava/lang/String;

    return-object v0
.end method

.method public getmWeight()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mWeight:I

    return v0
.end method

.method public setmIpList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 682
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mIpList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmPort(Ljava/lang/String;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mPort:Ljava/lang/String;

    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setmUrlWithPort(Ljava/lang/String;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrlWithPort:Ljava/lang/String;

    return-void
.end method

.method public setmWeight(I)V
    .locals 0

    .line 674
    iput p1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mWeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrlWithPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrlWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIpList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
