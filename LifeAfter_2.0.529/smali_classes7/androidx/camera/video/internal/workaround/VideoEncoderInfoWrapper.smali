.class public Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;
.super Ljava/lang/Object;
.source "VideoEncoderInfoWrapper.java"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# static fields
.field private static final HEIGHT_4KDCI:I = 0x870

.field private static final TAG:Ljava/lang/String; = "VideoEncoderInfoWrapper"

.field private static final WIDTH_4KDCI:I = 0x1000


# instance fields
.field private final mExtraSupportedSizes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedHeights:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedWidths:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# direct methods
.method constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)V
    .locals 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mExtraSupportedSizes:Ljava/util/Set;

    .line 104
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 109
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x40b0000000000000L    # 4096.0

    div-double/2addr v4, v2

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int v2, v2, v1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedWidths:Landroid/util/Range;

    .line 112
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result p1

    int-to-double v1, p1

    const-wide v3, 0x40a0e00000000000L    # 2160.0

    div-double/2addr v3, v1

    .line 113
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int v1, v1, p1

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedHeights:Landroid/util/Range;

    if-eqz p2, :cond_0

    .line 117
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;->getExtraSupportedSizes()Ljava/util/Set;

    move-result-object p1

    .line 119
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 4

    .line 81
    instance-of v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :cond_1
    const-class v0, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;

    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 85
    invoke-interface {p0, v0, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 93
    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    .line 94
    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Detected that the device does not support a size %s that should be valid in widths/heights = %s/%s"

    .line 90
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoEncoderInfoWrapper"

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 99
    new-instance v0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)V

    move-object p0, v0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public getHeightAlignment()I
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedHeights:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedWidths:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 168
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedWidths:Landroid/util/Range;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or can not be divided by alignment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 171
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 172
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedHeights:Landroid/util/Range;

    return-object p1
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedWidths:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedHeights:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 157
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedHeights:Landroid/util/Range;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or can not be divided by alignment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 160
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {v0, p1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 161
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedWidths:Landroid/util/Range;

    return-object p1
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    return v0
.end method

.method public isSizeSupported(II)Z
    .locals 3

    .line 131
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mExtraSupportedSizes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mExtraSupportedSizes:Ljava/util/Set;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedWidths:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mSupportedHeights:Landroid/util/Range;

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 137
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 138
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result p1

    rem-int/2addr p2, p1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
