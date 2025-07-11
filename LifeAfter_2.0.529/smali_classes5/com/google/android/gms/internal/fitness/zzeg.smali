.class final Lcom/google/android/gms/internal/fitness/zzeg;
.super Lcom/google/android/gms/internal/fitness/zzbc;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzep;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/google/android/gms/internal/fitness/zzeg;->zza:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzbc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/result/SessionStopResult;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/SessionStopResult;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbh;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzeo;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fitness/zzeo;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzen;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzbh;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzcd;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzav;

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzeg;->zza:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/fitness/request/zzav;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/fitness/zzcm;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/fitness/zzcd;->zzh(Lcom/google/android/gms/fitness/request/zzav;)V

    return-void
.end method
