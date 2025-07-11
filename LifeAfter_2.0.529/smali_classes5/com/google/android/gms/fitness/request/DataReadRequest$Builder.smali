.class public Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;

.field private zze:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzf:J

.field private zzg:J

.field private final zzh:Ljava/util/List;

.field private final zzi:Ljava/util/List;

.field private zzj:I

.field private zzk:J

.field private zzl:I

.field private zzm:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzh:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzi:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzl:I

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzm:Z

    return-void
.end method


# virtual methods
.method public aggregate(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 4

    const-string v0, "Attempting to add a null data source"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot add the same data source for aggregated and detailed"

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getAggregateType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Unsupported input data type specified for aggregation: %s"

    .line 6
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public aggregate(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Attempting to add a null data source"

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot add the same data source for aggregated and detailed"

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->getAggregateType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v2, p2}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p2, v3, v1

    const-string p2, "Invalid output aggregate data type specified: %s -> %s"

    .line 16
    invoke-static {v2, p2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 18
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unsupported input data type specified for aggregation: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aggregate(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 3

    const-string v0, "Attempting to use a null data type"

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot add the same data type as aggregated and detailed"

    .line 21
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getAggregateType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Unsupported input data type specified for aggregation: %s"

    .line 23
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public aggregate(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Attempting to use a null data type"

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot add the same data type as aggregated and detailed"

    .line 28
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getAggregateType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const-string p2, "Invalid output aggregate data type specified: %s -> %s"

    .line 32
    invoke-static {v0, p2, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    .line 33
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    .line 34
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 29
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported input data type specified for aggregation: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bucketByActivitySegment(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Bucketing strategy already set to %s"

    .line 2
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Must specify a valid minimum duration for an activity segment: %d"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    int-to-long v0, p1

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    return-object p0
.end method

.method public bucketByActivitySegment(ILjava/util/concurrent/TimeUnit;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5

    .line 6
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Bucketing strategy already set to %s"

    .line 7
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "Must specify a valid minimum duration for an activity segment: %d"

    .line 9
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v3, "Invalid activity data source specified"

    .line 10
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    const-string v2, "Invalid activity data source specified: %s"

    .line 12
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zze:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 p3, 0x4

    iput p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    int-to-long v0, p1

    .line 13
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    return-object p0
.end method

.method public bucketByActivityType(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Bucketing strategy already set to %s"

    .line 2
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Must specify a valid minimum duration for an activity segment: %d"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    int-to-long v0, p1

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    return-object p0
.end method

.method public bucketByActivityType(ILjava/util/concurrent/TimeUnit;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5

    .line 6
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Bucketing strategy already set to %s"

    .line 7
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "Must specify a valid minimum duration for an activity segment: %d"

    .line 9
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v3, "Invalid activity data source specified"

    .line 10
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    const-string v2, "Invalid activity data source specified: %s"

    .line 12
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zze:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    int-to-long v0, p1

    .line 13
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    return-object p0
.end method

.method public bucketBySession(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Bucketing strategy already set to %s"

    .line 2
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Must specify a valid minimum duration for a session: %d"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    int-to-long v0, p1

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    return-object p0
.end method

.method public bucketByTime(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "Bucketing strategy already set to %s"

    .line 2
    invoke-static {v3, v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Must specify a valid minimum duration: %d"

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    int-to-long v0, p1

    .line 4
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataReadRequest;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "Must add at least one data source (aggregated or detailed)"

    .line 5
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzf:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    new-array v8, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    const-string v4, "Invalid start time: %s"

    invoke-static {v1, v4, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzg:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    iget-wide v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzf:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    new-array v6, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "Invalid end time: %s"

    .line 8
    invoke-static {v1, v4, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iget v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    const-string v5, "Must specify a valid bucketing strategy while requesting aggregation"

    if-nez v4, :cond_5

    .line 10
    invoke-static {v1, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_5
    if-nez v1, :cond_7

    iget v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 11
    :cond_6
    invoke-static {v2, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 12
    :cond_7
    new-instance v1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    move-object v6, v1

    iget-object v7, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    iget-wide v9, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzf:J

    iget-wide v11, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzg:J

    iget-object v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    iget v15, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj:I

    iget-wide v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk:J

    move-wide/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zze:Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v18, v2

    iget v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzl:I

    move/from16 v19, v2

    const/16 v20, 0x0

    iget-boolean v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzm:Z

    move/from16 v21, v2

    const/16 v22, 0x0

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzh:Ljava/util/List;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzi:Ljava/util/List;

    move-object/from16 v24, v2

    .line 13
    invoke-direct/range {v6 .. v24}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/fitness/zzbn;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzm:Z

    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 2

    const-string v0, "Attempting to add a null data source"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add the same data source as aggregated and detailed"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 2

    const-string v0, "Attempting to use a null data type"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add the same data type as aggregated and detailed"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public setLimit(I)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Invalid limit %d is specified"

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzl:I

    return-object p0
.end method

.method public setTimeRange(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzf:J

    .line 2
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzg:J

    return-object p0
.end method
