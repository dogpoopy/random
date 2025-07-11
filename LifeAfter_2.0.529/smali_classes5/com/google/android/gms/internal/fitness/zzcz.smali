.class final Lcom/google/android/gms/internal/fitness/zzcz;
.super Lcom/google/android/gms/internal/fitness/zzp;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzde;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzcz;->zza:Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/result/DataTypeResult;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/DataTypeResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)V

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
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzu;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzdd;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fitness/zzdd;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzdc;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzu;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzby;

    new-instance v1, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzcz;->zza:Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;-><init>(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Lcom/google/android/gms/internal/fitness/zzbt;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzby;->zzd(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;)V

    return-void
.end method
