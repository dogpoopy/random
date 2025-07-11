.class public final Lcom/google/android/gms/fitness/request/zzan;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/zzv;

.field private final zzb:Landroid/app/PendingIntent;

.field private final zzc:Lcom/google/android/gms/internal/fitness/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzu;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzv;

    move-result-object p1

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzan;->zza:Lcom/google/android/gms/fitness/data/zzv;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzb:Landroid/app/PendingIntent;

    if-nez p3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object v0

    .line 1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzc:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzan;->zza:Lcom/google/android/gms/fitness/data/zzv;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzb:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzc:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zza:Lcom/google/android/gms/fitness/data/zzv;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SensorUnregistrationRequest{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zza:Lcom/google/android/gms/fitness/data/zzv;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/fitness/data/zzv;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzb:Landroid/app/PendingIntent;

    .line 3
    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzc:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    const/4 p2, 0x3

    .line 4
    invoke-static {p1, p2, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
