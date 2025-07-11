.class final Lcom/google/android/gms/internal/fitness/zzdg;
.super Lcom/google/android/gms/internal/fitness/zzx;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/request/GoalsReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzdh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdg;->zza:Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/result/GoalsResult;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/GoalsResult;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzab;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzdf;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzdf;-><init>(Lcom/google/android/gms/internal/fitness/zzdg;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzab;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbz;

    new-instance v1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzdg;->zza:Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest;Lcom/google/android/gms/internal/fitness/zzbw;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbz;->zzd(Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V

    return-void
.end method
