.class final Lcom/google/android/gms/fitness/service/zzb;
.super Lcom/google/android/gms/internal/fitness/zzfb;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/fitness/service/FitnessSensorService;Lcom/google/android/gms/fitness/service/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzfb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/fitness/zzex;Lcom/google/android/gms/internal/fitness/zzbq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzex;->zza()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->onFindDataSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/fitness/zzbq;->zzb(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->onRegister(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/fitness/zzcp;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/fitness/zzcp;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/fitness/zzez;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzb;->zza:Lcom/google/android/gms/fitness/service/FitnessSensorService;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzez;->zza()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/service/FitnessSensorService;->onUnregister(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/fitness/zzcp;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/fitness/zzcp;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
