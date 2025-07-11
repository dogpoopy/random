.class final Landroidx/camera/core/AutoValue_CameraState;
.super Landroidx/camera/core/CameraState;
.source "AutoValue_CameraState.java"


# instance fields
.field private final error:Landroidx/camera/core/CameraState$StateError;

.field private final type:Landroidx/camera/core/CameraState$Type;


# direct methods
.method constructor <init>(Landroidx/camera/core/CameraState$Type;Landroidx/camera/core/CameraState$StateError;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/camera/core/CameraState;-><init>()V

    const-string v0, "Null type"

    .line 19
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Landroidx/camera/core/AutoValue_CameraState;->type:Landroidx/camera/core/CameraState$Type;

    .line 22
    iput-object p2, p0, Landroidx/camera/core/AutoValue_CameraState;->error:Landroidx/camera/core/CameraState$StateError;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/CameraState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 51
    check-cast p1, Landroidx/camera/core/CameraState;

    .line 52
    iget-object v1, p0, Landroidx/camera/core/AutoValue_CameraState;->type:Landroidx/camera/core/CameraState$Type;

    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->getType()Landroidx/camera/core/CameraState$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/CameraState$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/core/AutoValue_CameraState;->error:Landroidx/camera/core/CameraState$StateError;

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getError()Landroidx/camera/core/CameraState$StateError;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/AutoValue_CameraState;->error:Landroidx/camera/core/CameraState$StateError;

    return-object v0
.end method

.method public getType()Landroidx/camera/core/CameraState$Type;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/camera/core/AutoValue_CameraState;->type:Landroidx/camera/core/CameraState$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-object v0, p0, Landroidx/camera/core/AutoValue_CameraState;->type:Landroidx/camera/core/CameraState$Type;

    invoke-virtual {v0}, Landroidx/camera/core/CameraState$Type;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 64
    iget-object v1, p0, Landroidx/camera/core/AutoValue_CameraState;->error:Landroidx/camera/core/CameraState$StateError;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraState{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/AutoValue_CameraState;->type:Landroidx/camera/core/CameraState$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/AutoValue_CameraState;->error:Landroidx/camera/core/CameraState$StateError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
