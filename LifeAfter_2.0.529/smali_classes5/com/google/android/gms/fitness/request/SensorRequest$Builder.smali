.class public Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/SensorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzb:Lcom/google/android/gms/fitness/data/DataType;

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:Z

.field private zzg:I

.field private zzh:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzc:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zze:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzf:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzg:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzh:J

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzg:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzd:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zze:J

    return-wide v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzc:J

    return-wide v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzh:J

    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/SensorRequest;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v3, :cond_2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Specified data type is incompatible with specified data source"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/SensorRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/SensorRequest;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;Lcom/google/android/gms/fitness/request/zzam;)V

    return-object v0
.end method

.method public setAccuracyMode(I)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    iput p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzg:I

    return-object p0
.end method

.method public setDataSource(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setFastestRate(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Cannot use a negative interval"

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzf:Z

    int-to-long v0, p1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzd:J

    return-object p0
.end method

.method public setMaxDeliveryLatency(ILjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot use a negative delivery interval"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    int-to-long v0, p1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zze:J

    return-object p0
.end method

.method public setSamplingRate(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot use a negative sampling interval"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzc:J

    iget-boolean p3, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzf:Z

    if-nez p3, :cond_1

    const-wide/16 v0, 0x2

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzd:J

    :cond_1
    return-object p0
.end method

.method public setTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
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

    const-string v4, "Invalid time out value specified: %d"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Invalid time unit specified"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzh:J

    return-object p0
.end method
