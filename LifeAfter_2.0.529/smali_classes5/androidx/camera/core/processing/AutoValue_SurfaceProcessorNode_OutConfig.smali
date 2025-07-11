.class final Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;
.super Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;
.source "AutoValue_SurfaceProcessorNode_OutConfig.java"


# instance fields
.field private final cropRect:Landroid/graphics/Rect;

.field private final format:I

.field private final mirroring:Z

.field private final rotationDegrees:I

.field private final size:Landroid/util/Size;

.field private final targets:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;IILandroid/graphics/Rect;Landroid/util/Size;IZ)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;-><init>()V

    const-string v0, "Null uuid"

    .line 37
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->uuid:Ljava/util/UUID;

    .line 40
    iput p2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->targets:I

    .line 41
    iput p3, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->format:I

    const-string p1, "Null cropRect"

    .line 43
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p4, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->cropRect:Landroid/graphics/Rect;

    const-string p1, "Null size"

    .line 47
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p5, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->size:Landroid/util/Size;

    .line 50
    iput p6, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->rotationDegrees:I

    .line 51
    iput-boolean p7, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->mirroring:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 113
    check-cast p1, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;

    .line 114
    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->uuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->targets:I

    .line 115
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getTargets()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->format:I

    .line 116
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->cropRect:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->size:Landroid/util/Size;

    .line 118
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->rotationDegrees:I

    .line 119
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getRotationDegrees()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->mirroring:Z

    .line 120
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$OutConfig;->getMirroring()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 69
    iget v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->format:I

    return v0
.end method

.method public getMirroring()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->mirroring:Z

    return v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 86
    iget v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->rotationDegrees:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getTargets()I
    .locals 1

    .line 63
    iget v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->targets:I

    return v0
.end method

.method getUuid()Ljava/util/UUID;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 129
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 131
    iget v2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->targets:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 133
    iget v2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->format:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 135
    iget-object v2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 137
    iget-object v2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 139
    iget v2, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->rotationDegrees:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 141
    iget-boolean v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->mirroring:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutConfig{uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->targets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->rotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mirroring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceProcessorNode_OutConfig;->mirroring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
