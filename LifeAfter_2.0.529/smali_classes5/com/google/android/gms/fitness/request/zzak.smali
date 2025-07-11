.class public final Lcom/google/android/gms/fitness/request/zzak;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzb:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzc:Lcom/google/android/gms/fitness/data/zzv;

.field private final zzd:J

.field private final zze:J

.field private final zzf:Landroid/app/PendingIntent;

.field private final zzg:J

.field private final zzh:I

.field private final zzi:J

.field private final zzj:Ljava/util/List;

.field private final zzk:Lcom/google/android/gms/internal/fitness/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;JJLandroid/app/PendingIntent;JIJLandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/fitness/data/zzu;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzv;

    move-result-object p2

    .line 1
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzak;->zzc:Lcom/google/android/gms/fitness/data/zzv;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/zzak;->zzf:Landroid/app/PendingIntent;

    iput p11, p0, Lcom/google/android/gms/fitness/request/zzak;->zzh:I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzak;->zzj:Ljava/util/List;

    iput-wide p12, p0, Lcom/google/android/gms/fitness/request/zzak;->zzi:J

    if-nez p14, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p14}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p1

    .line 3
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzk:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {p1, v4}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-virtual {p1, v6}, Lcom/google/android/gms/fitness/request/SensorRequest;->getFastestRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {p1, v8}, Lcom/google/android/gms/fitness/request/SensorRequest;->getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getAccuracyMode()I

    move-result v10

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->zza()J

    move-result-wide v12

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v3, v0, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzak;->zzc:Lcom/google/android/gms/fitness/data/zzv;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzak;->zzf:Landroid/app/PendingIntent;

    iput-wide v4, v0, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    iput-wide v6, v0, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    iput-wide v8, v0, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    iput v10, v0, Lcom/google/android/gms/fitness/request/zzak;->zzh:I

    iput-object v11, v0, Lcom/google/android/gms/fitness/request/zzak;->zzj:Ljava/util/List;

    iput-wide v12, v0, Lcom/google/android/gms/fitness/request/zzak;->zzi:J

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzak;->zzk:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/zzak;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/request/zzak;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzc:Lcom/google/android/gms/fitness/data/zzv;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzak;->zzc:Lcom/google/android/gms/fitness/data/zzv;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzh:I

    iget p1, p1, Lcom/google/android/gms/fitness/request/zzak;->zzh:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzc:Lcom/google/android/gms/fitness/data/zzv;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzh:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzc:Lcom/google/android/gms/fitness/data/zzv;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/fitness/data/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    .line 4
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzak;->zzd:J

    .line 5
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzak;->zze:J

    .line 6
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/google/android/gms/fitness/request/zzak;->zzf:Landroid/app/PendingIntent;

    .line 7
    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzak;->zzg:J

    .line 8
    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xa

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzak;->zzh:I

    .line 9
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xc

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzak;->zzi:J

    .line 10
    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzak;->zzk:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez p2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    const/16 p2, 0xd

    .line 11
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
