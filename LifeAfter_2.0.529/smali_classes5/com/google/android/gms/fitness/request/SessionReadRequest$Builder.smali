.class public Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SessionReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:J

.field private zzd:J

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/List;

.field private zzg:Z

.field private zzh:Z

.field private final zzi:Ljava/util/List;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzd:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zze:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzf:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzh:Z

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzi:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzl:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SessionReadRequest;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzc:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v6

    const-string v1, "Invalid start time: %s"

    invoke-static {v7, v1, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v1, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzd:J

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    iget-wide v3, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzc:J

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array v4, v5, [Ljava/lang/Object;

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v6

    const-string v1, "Invalid end time: %s"

    .line 3
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzl:Z

    if-nez v1, :cond_2

    iput-boolean v5, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzj:Z

    .line 4
    :cond_2
    new-instance v1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iget-object v7, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zza:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzb:Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzc:J

    iget-wide v11, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzd:J

    iget-object v13, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zze:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzf:Ljava/util/List;

    iget-boolean v15, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzg:Z

    iget-boolean v2, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzh:Z

    iget-object v3, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzi:Ljava/util/List;

    const/16 v18, 0x0

    iget-boolean v4, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzj:Z

    iget-boolean v5, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzk:Z

    move-object v6, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v5

    .line 5
    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Landroid/os/IBinder;ZZ)V

    return-object v1
.end method

.method public enableServerQueries()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzh:Z

    return-object p0
.end method

.method public excludePackage(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to use a null package name"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzi:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzi:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public includeActivitySessions()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzl:Z

    return-object p0
.end method

.method public includeSleepSessions()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzl:Z

    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to add a null data source"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzf:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzf:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public read(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to use a null data type"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zze:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zze:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public readSessionsFromAllApps()Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzg:Z

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeInterval(JJLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzc:J

    .line 2
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;->zzd:J

    return-object p0
.end method
