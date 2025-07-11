.class final Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;
.super Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;
.source "AutoValue_QualityRatioToResolutionsTable_QualityRatio.java"


# instance fields
.field private final aspectRatio:I

.field private final quality:Landroidx/camera/video/Quality;


# direct methods
.method constructor <init>(Landroidx/camera/video/Quality;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;-><init>()V

    const-string v0, "Null quality"

    .line 19
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->quality:Landroidx/camera/video/Quality;

    .line 22
    iput p2, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->aspectRatio:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    check-cast p1, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;

    .line 53
    iget-object v1, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->quality:Landroidx/camera/video/Quality;

    invoke-virtual {p1}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;->getQuality()Landroidx/camera/video/Quality;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->aspectRatio:I

    .line 54
    invoke-virtual {p1}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;->getAspectRatio()I

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

.method getAspectRatio()I
    .locals 1

    .line 35
    iget v0, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->aspectRatio:I

    return v0
.end method

.method getQuality()Landroidx/camera/video/Quality;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->quality:Landroidx/camera/video/Quality;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->quality:Landroidx/camera/video/Quality;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 65
    iget v1, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->aspectRatio:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QualityRatio{quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->quality:Landroidx/camera/video/Quality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AutoValue_QualityRatioToResolutionsTable_QualityRatio;->aspectRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
