.class public Lcom/google/android/gms/fitness/request/SensorRequest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/SensorRequest$Builder;
    }
.end annotation


# static fields
.field public static final ACCURACY_MODE_DEFAULT:I = 0x2

.field public static final ACCURACY_MODE_HIGH:I = 0x3

.field public static final ACCURACY_MODE_LOW:I = 0x1


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzb:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:I

.field private final zzg:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;Lcom/google/android/gms/fitness/request/zzam;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzf(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzg(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzd(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzc:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzd:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zze:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzf:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/SensorRequest$Builder;->zze(Lcom/google/android/gms/fitness/request/SensorRequest$Builder;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzg:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/SensorRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/request/SensorRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzc:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zzc:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzd:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zzd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zze:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zze:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzf:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zzf:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzg:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/SensorRequest;->zzg:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getAccuracyMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzf:I

    return v0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getFastestRate(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzd:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zze:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSamplingRate(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzc:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzd:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zze:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzf:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzg:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const-string v2, "dataSource"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const-string v2, "dataType"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzc:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "samplingRateMicros"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zze:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "deliveryLatencyMicros"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzg:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeOutMicros"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRequest;->zzg:J

    return-wide v0
.end method
