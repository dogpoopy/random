.class public final Lcom/google/android/gms/fitness/request/zzae;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzb:Lcom/google/android/gms/internal/fitness/zzcg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzae;->zza:Lcom/google/android/gms/fitness/data/DataType;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzcf;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcg;

    move-result-object p1

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzae;->zzb:Lcom/google/android/gms/internal/fitness/zzcg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/fitness/zzcg;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzae;->zza:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzae;->zzb:Lcom/google/android/gms/internal/fitness/zzcg;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzae;->zza:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzae;->zzb:Lcom/google/android/gms/internal/fitness/zzcg;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcg;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
