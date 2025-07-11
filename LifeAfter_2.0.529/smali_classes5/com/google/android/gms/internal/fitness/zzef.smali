.class final Lcom/google/android/gms/internal/fitness/zzef;
.super Lcom/google/android/gms/internal/fitness/zzbf;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzep;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzef;->zza:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzbf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbh;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzbh;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzcd;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzat;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzef;->zza:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/zzat;-><init>(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/internal/fitness/zzcp;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzcd;->zzg(Lcom/google/android/gms/fitness/request/zzat;)V

    return-void
.end method
