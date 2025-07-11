.class final Lcom/google/android/gms/internal/fitness/zzed;
.super Lcom/google/android/gms/internal/fitness/zzax;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/zzv;

.field final synthetic zzb:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzee;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/fitness/zzed;->zza:Lcom/google/android/gms/fitness/data/zzv;

    iput-object p4, p0, Lcom/google/android/gms/internal/fitness/zzed;->zzb:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fitness/zzax;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzaz;

    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzaz;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzcc;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzan;

    iget-object v2, p0, Lcom/google/android/gms/internal/fitness/zzed;->zza:Lcom/google/android/gms/fitness/data/zzv;

    iget-object v3, p0, Lcom/google/android/gms/internal/fitness/zzed;->zzb:Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/fitness/request/zzan;-><init>(Lcom/google/android/gms/fitness/data/zzv;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/fitness/zzcp;)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzcc;->zzf(Lcom/google/android/gms/fitness/request/zzan;)V

    return-void
.end method
