.class final Lcom/google/android/gms/internal/fitness/zzdu;
.super Lcom/google/android/gms/internal/fitness/zzam;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzea;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdu;->zza:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzam;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzar;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzdz;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fitness/zzdz;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzdy;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzar;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzcb;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzae;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzdu;->zza:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/zzae;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/fitness/zzcg;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzcb;->zzd(Lcom/google/android/gms/fitness/request/zzae;)V

    return-void
.end method
