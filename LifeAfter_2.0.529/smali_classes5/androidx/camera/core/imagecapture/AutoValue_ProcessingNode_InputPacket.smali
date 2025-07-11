.class final Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;
.super Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;
.source "AutoValue_ProcessingNode_InputPacket.java"


# instance fields
.field private final imageProxy:Landroidx/camera/core/ImageProxy;

.field private final processingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;


# direct methods
.method constructor <init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;-><init>()V

    const-string v0, "Null processingRequest"

    .line 19
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->processingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    const-string p1, "Null imageProxy"

    .line 23
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->imageProxy:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 54
    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    .line 55
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->processingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->imageProxy:Landroidx/camera/core/ImageProxy;

    .line 56
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;->getImageProxy()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getImageProxy()Landroidx/camera/core/ImageProxy;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->imageProxy:Landroidx/camera/core/ImageProxy;

    return-object v0
.end method

.method getProcessingRequest()Landroidx/camera/core/imagecapture/ProcessingRequest;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->processingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->processingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 67
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->imageProxy:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputPacket{processingRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->processingRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->imageProxy:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
