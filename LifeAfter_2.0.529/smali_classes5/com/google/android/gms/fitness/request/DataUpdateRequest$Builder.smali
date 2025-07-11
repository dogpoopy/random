.class public Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:Lcom/google/android/gms/fitness/data/DataSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/DataUpdateRequest;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zza:J

    const-string v3, "Must set a non-zero value for startTimeMillis/startTime"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(JLjava/lang/Object;)J

    iget-wide v1, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzb:J

    const-string v3, "Must set a non-zero value for endTimeMillis/endTime"

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotZero(JLjava/lang/Object;)J

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzc:Lcom/google/android/gms/fitness/data/DataSet;

    const-string v2, "Must set the data set"

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzc:Lcom/google/android/gms/fitness/data/DataSet;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v2, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const/4 v2, 0x1

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-gtz v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-eqz v10, :cond_0

    iget-wide v10, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zza:J

    cmp-long v12, v3, v10

    if-ltz v12, :cond_3

    :cond_0
    cmp-long v10, v3, v8

    if-eqz v10, :cond_1

    iget-wide v8, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzb:J

    cmp-long v10, v3, v8

    if-gtz v10, :cond_3

    :cond_1
    iget-wide v8, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzb:J

    cmp-long v10, v5, v8

    if-gtz v10, :cond_3

    iget-wide v8, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zza:J

    cmp-long v10, v5, v8

    if-gez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v7

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x2

    iget-wide v3, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zza:J

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x3

    iget-wide v3, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzb:J

    .line 10
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const-string v2, "Data Point\'s startTimeMillis %d, endTimeMillis %d should lie between timeRange provided in the request. StartTimeMillis %d, EndTimeMillis: %d"

    .line 11
    invoke-static {v8, v2, v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_4
    new-instance v1, Lcom/google/android/gms/fitness/request/DataUpdateRequest;

    iget-wide v11, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zza:J

    iget-wide v13, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzb:J

    iget-object v15, v0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzc:Lcom/google/android/gms/fitness/data/DataSet;

    const/16 v16, 0x0

    move-object v10, v1

    .line 13
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/fitness/request/DataUpdateRequest;-><init>(JJLcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;)V

    return-object v1
.end method

.method public setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
    .locals 1

    const-string v0, "Must set the data set"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzc:Lcom/google/android/gms/fitness/data/DataSet;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Invalid start time :%d"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v2, p3, p1

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Invalid end time :%d"

    .line 3
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zza:J

    .line 5
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataUpdateRequest$Builder;->zzb:J

    return-object p0
.end method
