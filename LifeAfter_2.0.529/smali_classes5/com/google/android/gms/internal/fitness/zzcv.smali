.class final Lcom/google/android/gms/internal/fitness/zzcv;
.super Lcom/google/android/gms/internal/fitness/zzh;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzcy;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzm;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzcx;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fitness/zzcx;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzcw;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzm;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbx;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/request/zzac;-><init>(Lcom/google/android/gms/internal/fitness/zzew;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbx;->zze(Lcom/google/android/gms/fitness/request/zzac;)V

    return-void
.end method
