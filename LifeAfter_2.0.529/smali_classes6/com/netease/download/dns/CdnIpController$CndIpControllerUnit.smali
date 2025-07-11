.class public Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
.super Ljava/lang/Object;
.source "CdnIpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/dns/CdnIpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CndIpControllerUnit"
.end annotation


# instance fields
.field public mDomain:Ljava/lang/String;

.field public mIpLinkUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/dns/CdnIpController$IpLinkUnit;",
            ">;"
        }
    .end annotation
.end field

.field public mPort:Ljava/lang/String;

.field public mWeight:I

.field final synthetic this$0:Lcom/netease/download/dns/CdnIpController;


# direct methods
.method public constructor <init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->this$0:Lcom/netease/download/dns/CdnIpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    .line 425
    iput-object p2, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    .line 428
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 429
    new-instance v0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;

    invoke-direct {v0, p1, p3}, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;-><init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;)V

    .line 430
    iget-object p3, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_0
    iput p4, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    .line 434
    iput-object p5, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mPort:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIpArrayList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mIpLinkUnitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
