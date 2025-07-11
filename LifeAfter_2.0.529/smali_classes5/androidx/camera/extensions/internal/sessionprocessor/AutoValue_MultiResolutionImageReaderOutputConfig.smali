.class final Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;
.super Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;
.source "AutoValue_MultiResolutionImageReaderOutputConfig.java"


# instance fields
.field private final id:I

.field private final imageFormat:I

.field private final maxImages:I

.field private final physicalCameraId:Ljava/lang/String;

.field private final surfaceGroupId:I

.field private final surfaceSharingOutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;II)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;-><init>()V

    .line 31
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->id:I

    .line 32
    iput p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceGroupId:I

    .line 33
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    const-string p1, "Null surfaceSharingOutputConfigs"

    .line 35
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    .line 38
    iput p5, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->imageFormat:I

    .line 39
    iput p6, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->maxImages:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 92
    check-cast p1, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;

    .line 93
    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->id:I

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceGroupId:I

    .line 94
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getSurfaceGroupId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->imageFormat:I

    .line 97
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getImageFormat()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->maxImages:I

    .line 98
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;->getMaxImages()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getId()I
    .locals 1

    .line 44
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->id:I

    return v0
.end method

.method getImageFormat()I
    .locals 1

    .line 66
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->imageFormat:I

    return v0
.end method

.method getMaxImages()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->maxImages:I

    return v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    .line 49
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceGroupId:I

    return v0
.end method

.method public getSurfaceSharingOutputConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 107
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->id:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 109
    iget v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceGroupId:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 111
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 113
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 115
    iget v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->imageFormat:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 117
    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->maxImages:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiResolutionImageReaderOutputConfig{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", physicalCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceSharingOutputConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;->maxImages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
