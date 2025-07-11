.class public final Lcom/google/android/gms/fitness/request/zzbb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzbb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/request/zzab;

.field private final zzb:Lcom/google/android/gms/internal/fitness/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.fitness.request.IBleScanCallback"

    .line 2
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/fitness/request/zzab;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/google/android/gms/fitness/request/zzab;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/fitness/request/zzz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/fitness/request/zzz;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/fitness/request/zzbb;->zza:Lcom/google/android/gms/fitness/request/zzab;

    if-nez p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object v0

    .line 1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbb;->zzb:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzab;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbb;->zza:Lcom/google/android/gms/fitness/request/zzab;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbb;->zzb:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbb;->zza:Lcom/google/android/gms/fitness/request/zzab;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzab;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbb;->zzb:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
