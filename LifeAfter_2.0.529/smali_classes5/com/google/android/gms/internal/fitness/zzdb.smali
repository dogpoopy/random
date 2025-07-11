.class final Lcom/google/android/gms/internal/fitness/zzdb;
.super Lcom/google/android/gms/internal/fitness/zzs;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzde;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzu;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzu;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzby;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/request/zzv;-><init>(Lcom/google/android/gms/internal/fitness/zzcp;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzby;->zze(Lcom/google/android/gms/fitness/request/zzv;)V

    return-void
.end method
