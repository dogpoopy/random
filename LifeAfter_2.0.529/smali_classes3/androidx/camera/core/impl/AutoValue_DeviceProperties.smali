.class final Landroidx/camera/core/impl/AutoValue_DeviceProperties;
.super Landroidx/camera/core/impl/DeviceProperties;
.source "AutoValue_DeviceProperties.java"


# instance fields
.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final sdkVersion:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/camera/core/impl/DeviceProperties;-><init>()V

    const-string v0, "Null manufacturer"

    .line 21
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    const-string p1, "Null model"

    .line 25
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    .line 28
    iput p3, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 62
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/DeviceProperties;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 63
    check-cast p1, Landroidx/camera/core/impl/DeviceProperties;

    .line 64
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeviceProperties;->manufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeviceProperties;->model()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    .line 66
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeviceProperties;->sdkVersion()I

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

.method public hashCode()I
    .locals 3

    .line 75
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 77
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 79
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public manufacturer()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public model()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    return-object v0
.end method

.method public sdkVersion()I
    .locals 1

    .line 45
    iget v0, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProperties{manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_DeviceProperties;->sdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
