.class public final Lcom/google/android/gms/fitness/request/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fitness/zzbk;

.field private final zzb:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzbj;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzbk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzh;->zza:Lcom/google/android/gms/internal/fitness/zzbk;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzh;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzh;->zzc:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fitness/zzbk;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzh;->zza:Lcom/google/android/gms/internal/fitness/zzbk;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzh;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzh;->zzc:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzh;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataType;->zzc()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DailyTotalRequest{%s}"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzh;->zza:Lcom/google/android/gms/internal/fitness/zzbk;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/fitness/zzbk;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzh;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/fitness/request/zzh;->zzc:Z

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
