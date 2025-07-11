.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/fitness/data/Session;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd:Ljava/util/List;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {p1, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {p1, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    cmp-long v10, v4, v8

    if-eqz v10, :cond_2

    cmp-long v8, v4, v2

    if-lez v8, :cond_0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-static {}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zza()Ljava/util/concurrent/TimeUnit;

    move-result-object v9

    .line 6
    invoke-virtual {v9, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    :cond_0
    move-wide v8, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v10, v6, v0

    if-ltz v10, :cond_1

    cmp-long v10, v8, v2

    if-gtz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    aput-object p1, v12, v5

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v4

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v12, v1

    const-string v0, "Data point %s has start and end times outside session interval [%d, %d]"

    .line 9
    invoke-static {v10, v0, v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-eqz v0, :cond_2

    new-array v0, v11, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zza()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    .line 12
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fitness"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    .line 14
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_2
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {p1, v4}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    :cond_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-static {}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zza()Ljava/util/concurrent/TimeUnit;

    move-result-object v7

    .line 5
    invoke-virtual {v7, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v4, v0

    if-ltz v8, :cond_2

    cmp-long v8, v4, v2

    if-gtz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    aput-object p1, v10, v7

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v6

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v10, v1

    const-string v0, "Data point %s has time stamp outside session interval [%d, %d]"

    .line 8
    invoke-static {v8, v0, v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    new-array v0, v9, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->getTimestamp(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zza()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time"

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fitness"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-virtual {p1, v4, v5, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->setTimestamp(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/data/DataPoint;

    :cond_3
    return-void
.end method


# virtual methods
.method public addAggregateDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Must specify a valid aggregate data point."

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd:Ljava/util/List;

    .line 3
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    xor-int/lit8 v0, v3, 0x1

    const-string v1, "Data set/Aggregate data point for this data source %s is already added."

    .line 4
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->zzc(Lcom/google/android/gms/fitness/data/DataPoint;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd:Ljava/util/List;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Must specify a valid data set."

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd:Ljava/util/List;

    .line 3
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    xor-int/lit8 v0, v3, 0x1

    const-string v3, "Data set for this data source %s is already added."

    .line 4
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "No data points specified in the input data set."

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzd:Ljava/util/List;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzb:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/request/SessionInsertRequest;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must specify a valid session."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Must specify a valid end time, cannot insert a continuing session."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzb:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSet;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 7
    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzc:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzb(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_3

    .line 11
    :cond_4
    new-instance v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzb:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zzc:Ljava/util/List;

    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/data/Session;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/fitness/zzcp;)V

    return-object v0
.end method

.method public setSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/Session;

    return-object p0
.end method
