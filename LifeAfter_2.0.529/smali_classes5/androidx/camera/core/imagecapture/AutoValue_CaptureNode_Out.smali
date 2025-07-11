.class final Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;
.super Landroidx/camera/core/imagecapture/CaptureNode$Out;
.source "AutoValue_CaptureNode_Out.java"


# instance fields
.field private final imageEdge:Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final inputFormat:I

.field private final outputFormat:I

.field private final requestEdge:Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/ImageProxy;",
            ">;",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;II)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/CaptureNode$Out;-><init>()V

    const-string v0, "Null imageEdge"

    .line 25
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->imageEdge:Landroidx/camera/core/processing/Edge;

    const-string p1, "Null requestEdge"

    .line 29
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->requestEdge:Landroidx/camera/core/processing/Edge;

    .line 32
    iput p3, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->inputFormat:I

    .line 33
    iput p4, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->outputFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 71
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/imagecapture/CaptureNode$Out;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 72
    check-cast p1, Landroidx/camera/core/imagecapture/CaptureNode$Out;

    .line 73
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->imageEdge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->getImageEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->requestEdge:Landroidx/camera/core/processing/Edge;

    .line 74
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->getRequestEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->inputFormat:I

    .line 75
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->getInputFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->outputFormat:I

    .line 76
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->getOutputFormat()I

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

.method getImageEdge()Landroidx/camera/core/processing/Edge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->imageEdge:Landroidx/camera/core/processing/Edge;

    return-object v0
.end method

.method getInputFormat()I
    .locals 1

    .line 48
    iget v0, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->inputFormat:I

    return v0
.end method

.method getOutputFormat()I
    .locals 1

    .line 53
    iget v0, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->outputFormat:I

    return v0
.end method

.method getRequestEdge()Landroidx/camera/core/processing/Edge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->requestEdge:Landroidx/camera/core/processing/Edge;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->imageEdge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 87
    iget-object v2, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->requestEdge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 89
    iget v2, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->inputFormat:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 91
    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->outputFormat:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out{imageEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->imageEdge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->requestEdge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->inputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_Out;->outputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
