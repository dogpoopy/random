.class Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;
.super Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;
.source "VideoFrameDropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dropper2"
.end annotation


# instance fields
.field private mAvgStep:F

.field private mLastRenderedUs:J

.field private mLastStep:J

.field private mRenderedSteps:I

.field private mTargetAvgStep:F


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;-><init>(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$1;)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    .line 74
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mTargetAvgStep:F

    return-void
.end method


# virtual methods
.method public shouldRenderFrame(J)Z
    .locals 6

    .line 87
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    const-string v1, " target:"

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    iget v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mTargetAvgStep:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROPPING - avg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mTargetAvgStep:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mLastRenderedUs:J

    sub-long/2addr p1, v0

    .line 92
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    int-to-float v2, v1

    mul-float v0, v0, v2

    iget-wide v2, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mLastStep:J

    long-to-float v2, v2

    sub-float/2addr v0, v2

    long-to-float v2, p1

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 93
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    .line 94
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mLastStep:J

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RENDERING - avg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mTargetAvgStep:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " newStepCount:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    if-ltz v0, :cond_1

    .line 101
    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mLastRenderedUs:J

    sub-long v1, p1, v1

    .line 102
    iget v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    int-to-float v5, v0

    mul-float v4, v4, v5

    long-to-float v5, v1

    add-float/2addr v4, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 103
    iput v4, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mAvgStep:F

    .line 104
    iput-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mLastStep:J

    .line 107
    :cond_1
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mRenderedSteps:I

    .line 108
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;->mLastRenderedUs:J

    return v3
.end method
