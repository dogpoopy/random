.class public Lcom/google/android/gms/fitness/request/DataDeleteRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataDeleteRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/DataDeleteRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/List;

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/fitness/zzcp;

.field private final zzi:Z

.field private final zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZLandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    .line 2
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    .line 3
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    iput-boolean p11, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzj:Z

    if-nez p12, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p12}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p1

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzh:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZLcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    .line 6
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    .line 7
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    iput-boolean p11, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzj:Z

    iput-object p12, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzh:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 13

    .line 8
    iget-wide v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    iget-wide v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    iget-object v5, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    iget-object v6, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    iget-boolean v8, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    iget-boolean v9, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    iget-boolean v10, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    iget-boolean v11, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzj:Z

    move-object v0, p0

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(JJLjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZLcom/google/android/gms/internal/fitness/zzcp;)V

    return-void
.end method


# virtual methods
.method public deleteAllData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    return v0
.end method

.method public deleteAllSessions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    .line 3
    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzj:Z

    iget-boolean p1, p1, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzj:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startTimeMillis"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endTimeMillis"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzc:Ljava/util/List;

    const-string v2, "dataSources"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzd:Ljava/util/List;

    const-string v2, "dateTypes"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zze:Ljava/util/List;

    const-string v2, "sessions"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzf:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "deleteAllData"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzg:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "deleteAllSessions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "deleteByTimeRange"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zza:J

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzb:J

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->getDataSources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->getSessions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    .line 9
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->deleteAllData()Z

    move-result v0

    const/4 v1, 0x6

    .line 11
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->deleteAllSessions()Z

    move-result v0

    const/4 v1, 0x7

    .line 13
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzh:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/16 v1, 0x8

    .line 14
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzi:Z

    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->zzj:Z

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
