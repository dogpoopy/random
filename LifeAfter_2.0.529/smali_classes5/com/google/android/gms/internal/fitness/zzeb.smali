.class final Lcom/google/android/gms/internal/fitness/zzeb;
.super Lcom/google/android/gms/internal/fitness/zzau;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/request/DataSourcesRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzee;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzeb;->zza:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzau;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

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
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaz;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzf;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzf;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzcc;

    new-instance v1, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzeb;->zza:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/fitness/zzbq;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzcc;->zzd(Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    return-void
.end method
