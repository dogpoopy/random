.class final Lcom/google/android/gms/internal/fitness/zzdi;
.super Lcom/google/android/gms/internal/fitness/zzah;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/DataSet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzds;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzdi;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzah;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaj;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzca;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzk;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzdi;->zza:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/fitness/request/zzk;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/fitness/zzcp;Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzca;->zze(Lcom/google/android/gms/fitness/request/zzk;)V

    return-void
.end method
