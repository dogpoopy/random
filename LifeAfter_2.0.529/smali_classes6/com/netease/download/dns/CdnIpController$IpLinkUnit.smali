.class public Lcom/netease/download/dns/CdnIpController$IpLinkUnit;
.super Ljava/lang/Object;
.source "CdnIpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/dns/CdnIpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IpLinkUnit"
.end annotation


# instance fields
.field public mIp:Ljava/lang/String;

.field public mLinkCount:I

.field final synthetic this$0:Lcom/netease/download/dns/CdnIpController;


# direct methods
.method public constructor <init>(Lcom/netease/download/dns/CdnIpController;Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->this$0:Lcom/netease/download/dns/CdnIpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    const/4 p1, 0x0

    .line 446
    iput p1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    .line 449
    iput-object p2, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLinkCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/dns/CdnIpController$IpLinkUnit;->mLinkCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
