.class final Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;
.super Landroidx/camera/camera2/internal/CameraDeviceId;
.source "AutoValue_CameraDeviceId.java"


# instance fields
.field private final brand:Ljava/lang/String;

.field private final cameraId:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private final model:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/camera/camera2/internal/CameraDeviceId;-><init>()V

    const-string v0, "Null brand"

    .line 24
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->brand:Ljava/lang/String;

    const-string p1, "Null device"

    .line 28
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->device:Ljava/lang/String;

    const-string p1, "Null model"

    .line 32
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->model:Ljava/lang/String;

    const-string p1, "Null cameraId"

    .line 36
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iput-object p4, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->cameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/internal/CameraDeviceId;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 81
    check-cast p1, Landroidx/camera/camera2/internal/CameraDeviceId;

    .line 82
    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->brand:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->device:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->model:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->cameraId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/CameraDeviceId;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->model:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 94
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 96
    iget-object v2, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->device:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 98
    iget-object v2, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->model:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 100
    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->cameraId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraDeviceId{brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_CameraDeviceId;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
