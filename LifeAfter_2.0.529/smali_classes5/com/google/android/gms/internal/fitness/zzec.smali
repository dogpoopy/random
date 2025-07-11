.class final Lcom/google/android/gms/internal/fitness/zzec;
.super Lcom/google/android/gms/internal/fitness/zzax;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/request/SensorRequest;

.field final synthetic zzb:Lcom/google/android/gms/fitness/data/zzv;

.field final synthetic zzc:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzee;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzec;->zza:Lcom/google/android/gms/fitness/request/SensorRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/fitness/zzec;->zzb:Lcom/google/android/gms/fitness/data/zzv;

    iput-object p5, p0, Lcom/google/android/gms/internal/fitness/zzec;->zzc:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzax;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaz;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzcc;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzak;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzec;->zza:Lcom/google/android/gms/fitness/request/SensorRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzec;->zzb:Lcom/google/android/gms/fitness/data/zzv;

    iget-object v4, p0, Lcom/google/android/gms/internal/fitness/zzec;->zzc:Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/fitness/request/zzak;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/fitness/zzcp;)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzcc;->zze(Lcom/google/android/gms/fitness/request/zzak;)V

    return-void
.end method
