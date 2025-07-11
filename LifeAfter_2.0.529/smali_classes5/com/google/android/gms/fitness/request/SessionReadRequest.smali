.class public Lcom/google/android/gms/fitness/request/SessionReadRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/SessionReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/SessionReadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:J

.field private final zzd:J

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/List;

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Ljava/util/List;

.field private final zzj:Lcom/google/android/gms/internal/fitness/zzcj;

.field private final zzk:Z

.field private final zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzaq;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/internal/fitness/zzcj;)V
    .locals 15

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    iget-wide v3, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    iget-wide v5, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    iget-object v7, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zze:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzf:Ljava/util/List;

    iget-boolean v9, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzg:Z

    iget-boolean v10, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzh:Z

    iget-object v11, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzi:Ljava/util/List;

    .line 2
    iget-boolean v13, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzk:Z

    iget-boolean v14, v0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzl:Z

    move-object v0, p0

    move-object/from16 v12, p2

    .line 1
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;ZZLjava/util/List;Landroid/os/IBinder;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    iput-object p7, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zze:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzf:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzg:Z

    iput-boolean p10, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzh:Z

    iput-object p11, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzi:Ljava/util/List;

    if-nez p12, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p12}, Lcom/google/android/gms/internal/fitness/zzci;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcj;

    move-result-object p1

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzj:Lcom/google/android/gms/internal/fitness/zzcj;

    iput-boolean p13, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzk:Z

    iput-boolean p14, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzl:Z

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
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zze:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zze:Ljava/util/List;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzf:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzf:Ljava/util/List;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzg:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzg:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzi:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzi:Ljava/util/List;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzh:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzk:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzk:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzl:Z

    iget-boolean p1, p1, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzl:Z

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzf:Ljava/util/List;

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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExcludedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzi:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public includeSessionsFromAllApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzg:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zza:Ljava/lang/String;

    const-string v2, "sessionName"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzb:Ljava/lang/String;

    const-string v2, "sessionId"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startTimeMillis"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endTimeMillis"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zze:Ljava/util/List;

    const-string v2, "dataTypes"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzf:Ljava/util/List;

    const-string v2, "dataSources"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzg:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sessionsFromAllApps"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzi:Ljava/util/List;

    const-string v2, "excludedPackages"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzh:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "useServer"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzk:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "activitySessionsIncluded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzl:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sleepSessionsIncluded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->getSessionName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzc:J

    const/4 v3, 0x3

    .line 6
    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzd:J

    const/4 v3, 0x4

    .line 7
    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    .line 9
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->getDataSources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    .line 11
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->includeSessionsFromAllApps()Z

    move-result v0

    const/4 v1, 0x7

    .line 13
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzh:Z

    const/16 v1, 0x8

    .line 14
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionReadRequest;->getExcludedPackages()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    .line 16
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzj:Lcom/google/android/gms/internal/fitness/zzcj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzcj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/16 v1, 0xa

    .line 17
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzk:Z

    .line 18
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/SessionReadRequest;->zzl:Z

    .line 19
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 20
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
