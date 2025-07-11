.class final Lcom/google/android/gms/internal/fitness/zzdp;
.super Lcom/google/android/gms/internal/fitness/zzae;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/DataType;

.field final synthetic zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdp;->zza:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/fitness/zzdp;->zzb:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzae;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdp;->zza:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v1, Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;-><init>()V

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->build()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/result/DailyTotalResult;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->builder(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet$Builder;->build()Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/fitness/result/DailyTotalResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataSet;)V

    return-object v1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaj;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzdo;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzdo;-><init>(Lcom/google/android/gms/internal/fitness/zzdp;)V

    .line 3
    new-instance v1, Lcom/google/android/gms/fitness/request/zzh;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzdp;->zza:Lcom/google/android/gms/fitness/data/DataType;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/fitness/zzdp;->zzb:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/fitness/request/zzh;-><init>(Lcom/google/android/gms/internal/fitness/zzbk;Lcom/google/android/gms/fitness/data/DataType;Z)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzca;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzca;->zzf(Lcom/google/android/gms/fitness/request/zzh;)V

    return-void
.end method
