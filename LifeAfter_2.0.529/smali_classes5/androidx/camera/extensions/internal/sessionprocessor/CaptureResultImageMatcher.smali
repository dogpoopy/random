.class Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;
.super Ljava/lang/Object;
.source "CaptureResultImageMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;
    }
.end annotation


# static fields
.field private static final INVALID_TIMESTAMP:I = -0x1


# instance fields
.field mCaptureStageIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mImageReferenceListener:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingCaptureResults:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingImages:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mCaptureStageIdMap:Ljava/util/Map;

    .line 49
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    return-void
.end method

.method private getTimeStampFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)J
    .locals 2

    .line 110
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private matchImages()V
    .locals 8

    .line 182
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 185
    iget-object v4, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/TotalCaptureResult;

    .line 186
    invoke-direct {p0, v4}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->getTimeStampFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide v5

    .line 188
    iget-object v7, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    if-eqz v7, :cond_0

    .line 191
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 192
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    move-object v3, v4

    move-object v2, v7

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->removeStaleData()V

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 201
    invoke-direct {p0, v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->notifyImage(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 198
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyImage(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 124
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mImageReferenceListener:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mCaptureStageIdMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->decrement()Z

    move-object v1, v2

    .line 131
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    invoke-interface {v1, p1, p2, v0}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;->onImageReferenceIncoming(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;Landroid/hardware/camera2/TotalCaptureResult;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private removeStaleData()V
    .locals 10

    .line 148
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 154
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 155
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 159
    invoke-virtual {v3, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 161
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_3

    .line 162
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_0
    if-ltz v1, :cond_5

    .line 163
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 164
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    .line 165
    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->decrement()Z

    .line 166
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 170
    :cond_3
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_5

    .line 171
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    .line 172
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 176
    :cond_5
    monitor-exit v0

    return-void

    .line 151
    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method captureResultIncoming(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->captureResultIncoming(Landroid/hardware/camera2/TotalCaptureResult;I)V

    return-void
.end method

.method captureResultIncoming(Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 6

    .line 97
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->getTimeStampFromCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 100
    monitor-exit v0

    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 104
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mCaptureStageIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->matchImages()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method clear()V
    .locals 5

    .line 59
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingCaptureResults:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 62
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 63
    iget-object v4, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    invoke-interface {v2}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->decrement()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 66
    iget-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mCaptureStageIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearImageReferenceListener()V
    .locals 2

    .line 78
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    iput-object v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mImageReferenceListener:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method imageIncoming(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V
    .locals 5

    .line 84
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->get()Landroid/media/Image;

    move-result-object v1

    .line 86
    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mPendingImages:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-direct {p0}, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->matchImages()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method setImageReferenceListener(Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;)V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher;->mImageReferenceListener:Landroidx/camera/extensions/internal/sessionprocessor/CaptureResultImageMatcher$ImageReferenceListener;

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
