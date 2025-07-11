.class public Lcom/netease/download/config/ConfigParams$CdnUnit;
.super Ljava/lang/Object;
.source "ConfigParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/config/ConfigParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdnUnit"
.end annotation


# instance fields
.field mCdnChannel:Ljava/lang/String;

.field mCdnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/config/ConfigParams$CdnUrlUnit;",
            ">;"
        }
    .end annotation
.end field

.field mTotalWeight:I

.field final synthetic this$0:Lcom/netease/download/config/ConfigParams;


# direct methods
.method public constructor <init>(Lcom/netease/download/config/ConfigParams;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/config/ConfigParams$CdnUrlUnit;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 586
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->this$0:Lcom/netease/download/config/ConfigParams;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 583
    iput p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mTotalWeight:I

    const/4 p1, 0x0

    .line 584
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnChannel:Ljava/lang/String;

    .line 588
    iput-object p2, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnList:Ljava/util/ArrayList;

    .line 589
    iput p3, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mTotalWeight:I

    .line 590
    iput-object p4, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmCdnList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/config/ConfigParams$CdnUrlUnit;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmChannel()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getmTotalWeight()I
    .locals 1

    .line 600
    iget v0, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mTotalWeight:I

    return v0
.end method

.method public setmCdnList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/config/ConfigParams$CdnUrlUnit;",
            ">;)V"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmChannel(Ljava/lang/String;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnChannel:Ljava/lang/String;

    return-void
.end method

.method public setmTotalWeight(I)V
    .locals 0

    .line 603
    iput p1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mTotalWeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCdnChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mTotalWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/netease/download/config/ConfigParams$CdnUnit;->mCdnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cdnUrlUnit="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/netease/download/config/ConfigParams$CdnUrlUnit;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
