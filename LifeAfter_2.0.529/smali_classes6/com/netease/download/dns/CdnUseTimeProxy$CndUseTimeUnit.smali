.class public Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;
.super Ljava/lang/Object;
.source "CdnUseTimeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/dns/CdnUseTimeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CndUseTimeUnit"
.end annotation


# instance fields
.field public mCount:I

.field public mStartTime:J

.field public mUseTime:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    .line 82
    iput p3, p0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    .line 83
    iput-wide p4, p0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/download/dns/CdnUseTimeProxy$CndUseTimeUnit;->mUseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
