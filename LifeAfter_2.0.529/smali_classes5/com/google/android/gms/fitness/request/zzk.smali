.class public final Lcom/google/android/gms/fitness/request/zzk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/DataSet;

.field private final zzb:Lcom/google/android/gms/internal/fitness/zzcp;

.field private final zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p1

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzk;->zzb:Lcom/google/android/gms/internal/fitness/zzcp;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzk;->zzc:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/fitness/zzcp;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzk;->zzb:Lcom/google/android/gms/internal/fitness/zzcp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/fitness/request/zzk;->zzc:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v2, p1, Lcom/google/android/gms/fitness/request/zzk;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    check-cast p1, Lcom/google/android/gms/fitness/request/zzk;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    .line 2
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    const-string v2, "dataSet"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzk;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzk;->zzb:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/zzk;->zzc:Z

    .line 4
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
