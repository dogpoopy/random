.class final Landroidx/camera/core/AutoValue_SurfaceOutput_Event;
.super Landroidx/camera/core/SurfaceOutput$Event;
.source "AutoValue_SurfaceOutput_Event.java"


# instance fields
.field private final eventCode:I

.field private final surfaceOutput:Landroidx/camera/core/SurfaceOutput;


# direct methods
.method constructor <init>(ILandroidx/camera/core/SurfaceOutput;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/camera/core/SurfaceOutput$Event;-><init>()V

    .line 17
    iput p1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->eventCode:I

    const-string p1, "Null surfaceOutput"

    .line 19
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->surfaceOutput:Landroidx/camera/core/SurfaceOutput;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/SurfaceOutput$Event;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 50
    check-cast p1, Landroidx/camera/core/SurfaceOutput$Event;

    .line 51
    iget v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->eventCode:I

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$Event;->getEventCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->surfaceOutput:Landroidx/camera/core/SurfaceOutput;

    .line 52
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$Event;->getSurfaceOutput()Landroidx/camera/core/SurfaceOutput;

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

.method public getEventCode()I
    .locals 1

    .line 27
    iget v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->eventCode:I

    return v0
.end method

.method public getSurfaceOutput()Landroidx/camera/core/SurfaceOutput;
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->surfaceOutput:Landroidx/camera/core/SurfaceOutput;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 61
    iget v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->eventCode:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 63
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->surfaceOutput:Landroidx/camera/core/SurfaceOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{eventCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;->surfaceOutput:Landroidx/camera/core/SurfaceOutput;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
