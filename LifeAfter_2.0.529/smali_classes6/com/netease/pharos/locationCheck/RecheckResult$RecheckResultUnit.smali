.class public Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;
.super Ljava/lang/Object;
.source "RecheckResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/locationCheck/RecheckResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecheckResultUnit"
.end annotation


# instance fields
.field public mBsetRtt:I

.field public mCount:I

.field public mIp:Ljava/lang/String;

.field public mLoss:I

.field public mSuccessCount:I

.field public mWorstRtt:I

.field final synthetic this$0:Lcom/netease/pharos/locationCheck/RecheckResult;


# direct methods
.method public constructor <init>(Lcom/netease/pharos/locationCheck/RecheckResult;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->this$0:Lcom/netease/pharos/locationCheck/RecheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mCount:I

    .line 84
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mSuccessCount:I

    .line 85
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mLoss:I

    .line 86
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    .line 87
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    return-void
.end method


# virtual methods
.method public setmBsetRtt(I)V
    .locals 1

    .line 110
    iget v0, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    if-ge v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    :cond_0
    return-void
.end method

.method public setmCount(I)V
    .locals 2

    .line 96
    iget v0, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mCount:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 97
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mCount:I

    :cond_0
    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setmLoss(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mLoss:I

    return-void
.end method

.method public setmSuccessCount(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mSuccessCount:I

    return-void
.end method

.method public setmWorstRtt(I)V
    .locals 1

    .line 116
    iget v0, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    if-le p1, v0, :cond_0

    .line 117
    iput p1, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp="

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mCount="

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSuccessCount="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mSuccessCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLoss="

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mLoss:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mBsetRtt="

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mBsetRtt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mWorstRtt="

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/locationCheck/RecheckResult$RecheckResultUnit;->mWorstRtt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
