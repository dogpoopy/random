.class Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;
.super Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;
.source "VideoFrameDropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dropper1"
.end annotation


# instance fields
.field private mFrameCount:I

.field private mFrameRateReciprocalSum:D

.field private mInFrameRateReciprocal:D

.field private mOutFrameRateReciprocal:D


# direct methods
.method private constructor <init>(II)V
    .locals 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;-><init>(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$1;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mInFrameRateReciprocal:D

    int-to-double p1, p2

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, p1

    iput-wide v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mOutFrameRateReciprocal:D

    .line 38
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inFrameRateReciprocal:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mInFrameRateReciprocal:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " outFrameRateReciprocal:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mOutFrameRateReciprocal:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(IILcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;-><init>(II)V

    return-void
.end method


# virtual methods
.method public shouldRenderFrame(J)Z
    .locals 4

    .line 43
    iget-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mInFrameRateReciprocal:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    .line 44
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameCount:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 45
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RENDERING (first frame) - frameRateReciprocalSum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    return p2

    .line 47
    :cond_0
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    iget-wide v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mOutFrameRateReciprocal:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    sub-double/2addr v0, v2

    .line 48
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    .line 49
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RENDERING - frameRateReciprocalSum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    return p2

    .line 52
    :cond_1
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DROPPING - frameRateReciprocalSum:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;->mFrameRateReciprocalSum:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
