.class abstract Landroidx/camera/video/OutputOptions$Builder;
.super Ljava/lang/Object;
.source "OutputOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/OutputOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/camera/video/OutputOptions;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mRootInternalBuilder:Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroidx/camera/video/OutputOptions$Builder;->mRootInternalBuilder:Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;

    const-wide/16 v0, 0x0

    .line 96
    invoke-virtual {p1, v0, v1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;->setFileSizeLimit(J)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1, v0, v1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;->setDurationLimitMillis(J)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract build()Landroidx/camera/video/OutputOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setDurationLimitMillis(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The specified duration limit can\'t be negative."

    .line 140
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Landroidx/camera/video/OutputOptions$Builder;->mRootInternalBuilder:Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;->setDurationLimitMillis(J)Ljava/lang/Object;

    return-object p0
.end method

.method public setFileSizeLimit(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The specified file size limit can\'t be negative."

    .line 117
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Landroidx/camera/video/OutputOptions$Builder;->mRootInternalBuilder:Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;->setFileSizeLimit(J)Ljava/lang/Object;

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")TB;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Latitude must be in the range [-90, 90]"

    .line 164
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 168
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v0, "Longitude must be in the range [-180, 180]"

    .line 167
    invoke-static {v4, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 171
    :cond_2
    iget-object v0, p0, Landroidx/camera/video/OutputOptions$Builder;->mRootInternalBuilder:Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/video/OutputOptions$OutputOptionsInternal$Builder;->setLocation(Landroid/location/Location;)Ljava/lang/Object;

    return-object p0
.end method
