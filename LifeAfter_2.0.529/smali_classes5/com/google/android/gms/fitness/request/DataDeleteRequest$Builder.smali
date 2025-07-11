.class public Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/DataDeleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:J

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/List;

.field private zzf:Z

.field private zzg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzg:Z

    return-void
.end method


# virtual methods
.method public addDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "All data is already marked for deletion.  addDataSource() cannot be combined with deleteAllData()"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Must specify a valid data source"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "All data is already marked for deletion.  addDataType() cannot be combined with deleteAllData()"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Must specify a valid data type"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addSession(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzg:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "All sessions already marked for deletion.  addSession() cannot be combined with deleteAllSessions()"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Must specify a valid session"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Cannot delete an ongoing session. Please stop the session prior to deleting it"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/request/DataDeleteRequest;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zza:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    iget-wide v5, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzb:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Must specify a valid time interval"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-boolean v2, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzg:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v1, 0x1

    :goto_6
    const-string v2, "No data or session marked for deletion"

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_9

    .line 13
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/Session;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v2, v5}, Lcom/google/android/gms/fitness/data/Session;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zza:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {v2, v5}, Lcom/google/android/gms/fitness/data/Session;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzb:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    iget-wide v7, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zza:J

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v4

    const/4 v2, 0x2

    iget-wide v7, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzb:J

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v2, "Session %s is outside the time interval [%d, %d]"

    .line 11
    invoke-static {v5, v2, v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 12
    :cond_9
    :goto_9
    new-instance v1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-wide v8, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zza:J

    iget-wide v10, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzb:J

    iget-object v12, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    iget-boolean v15, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf:Z

    iget-boolean v2, v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzg:Z

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v7, v1

    move/from16 v16, v2

    .line 13
    invoke-direct/range {v7 .. v19}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZLcom/google/android/gms/internal/fitness/zzcp;)V

    return-object v1
.end method

.method public deleteAllData()Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Specific data type already added for deletion. deleteAllData() will delete all data types and cannot be combined with addDataType()"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Specific data source already added for deletion. deleteAllData() will delete all data sources and cannot be combined with addDataSource()"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzf:Z

    return-object p0
.end method

.method public deleteAllSessions()Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Specific session already added for deletion. deleteAllData() will delete all sessions and cannot be combined with addSession()"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzg:Z

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
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

    const-string v4, "Invalid start time: %d"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v2, p3, p1

    if-lez v2, :cond_1

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

    const-string v1, "Invalid end time: %d"

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zza:J

    .line 4
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;->zzb:J

    return-object p0
.end method
