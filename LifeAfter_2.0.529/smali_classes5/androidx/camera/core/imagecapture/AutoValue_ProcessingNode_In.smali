.class final Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;
.super Landroidx/camera/core/imagecapture/ProcessingNode$In;
.source "AutoValue_ProcessingNode_In.java"


# instance fields
.field private final edge:Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            ">;"
        }
    .end annotation
.end field

.field private final inputFormat:I

.field private final outputFormat:I


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/Edge;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            ">;II)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/ProcessingNode$In;-><init>()V

    const-string v0, "Null edge"

    .line 21
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->edge:Landroidx/camera/core/processing/Edge;

    .line 24
    iput p2, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->inputFormat:I

    .line 25
    iput p3, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->outputFormat:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 57
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/imagecapture/ProcessingNode$In;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 58
    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$In;

    .line 59
    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->edge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->inputFormat:I

    .line 60
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getInputFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->outputFormat:I

    .line 61
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingNode$In;->getOutputFormat()I

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

.method getEdge()Landroidx/camera/core/processing/Edge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->edge:Landroidx/camera/core/processing/Edge;

    return-object v0
.end method

.method getInputFormat()I
    .locals 1

    .line 35
    iget v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->inputFormat:I

    return v0
.end method

.method getOutputFormat()I
    .locals 1

    .line 40
    iget v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->outputFormat:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->edge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 72
    iget v2, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->inputFormat:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 74
    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->outputFormat:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In{edge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->edge:Landroidx/camera/core/processing/Edge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->inputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;->outputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
