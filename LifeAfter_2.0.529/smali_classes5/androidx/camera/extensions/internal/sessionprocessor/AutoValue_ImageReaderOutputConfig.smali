.class final Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;
.super Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;
.source "AutoValue_ImageReaderOutputConfig.java"


# instance fields
.field private final id:I

.field private final imageFormat:I

.field private final maxImages:I

.field private final physicalCameraId:Ljava/lang/String;

.field private final size:Landroid/util/Size;

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
.method constructor <init>(IILjava/lang/String;Ljava/util/List;Landroid/util/Size;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;",
            "Landroid/util/Size;",
            "II)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;-><init>()V

    .line 35
    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->id:I

    .line 36
    iput p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceGroupId:I

    .line 37
    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    const-string p1, "Null surfaceSharingOutputConfigs"

    .line 39
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput-object p4, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    const-string p1, "Null size"

    .line 43
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p5, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->size:Landroid/util/Size;

    .line 46
    iput p6, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->imageFormat:I

    .line 47
    iput p7, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->maxImages:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 107
    check-cast p1, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;

    .line 108
    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->id:I

    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceGroupId:I

    .line 109
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSurfaceGroupId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    .line 111
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSurfaceSharingOutputConfigs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->size:Landroid/util/Size;

    .line 112
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->imageFormat:I

    .line 113
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getImageFormat()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->maxImages:I

    .line 114
    invoke-virtual {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;->getMaxImages()I

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

    .line 52
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->id:I

    return v0
.end method

.method getImageFormat()I
    .locals 1

    .line 80
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->imageFormat:I

    return v0
.end method

.method getMaxImages()I
    .locals 1

    .line 85
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->maxImages:I

    return v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getSize()Landroid/util/Size;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getSurfaceGroupId()I
    .locals 1

    .line 57
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceGroupId:I

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

    .line 69
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->id:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 125
    iget v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceGroupId:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 127
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 129
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 131
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 133
    iget v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->imageFormat:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 135
    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->maxImages:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageReaderOutputConfig{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", physicalCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceSharingOutputConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->surfaceSharingOutputConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->imageFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;->maxImages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
