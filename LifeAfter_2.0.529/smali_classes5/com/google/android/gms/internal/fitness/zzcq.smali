.class final Lcom/google/android/gms/internal/fitness/zzcq;
.super Lcom/google/android/gms/internal/fitness/zzk;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

.field final synthetic zzb:Lcom/google/android/gms/fitness/request/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzcy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/request/zzab;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zza:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zzb:Lcom/google/android/gms/fitness/request/zzab;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzk;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzm;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzm;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbx;

    new-instance v1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zza:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getDataTypes()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zzb:Lcom/google/android/gms/fitness/request/zzab;

    iget-object v4, p0, Lcom/google/android/gms/internal/fitness/zzcq;->zza:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->getTimeoutSecs()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzab;ILcom/google/android/gms/internal/fitness/zzcp;)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbx;->zzf(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    return-void
.end method
