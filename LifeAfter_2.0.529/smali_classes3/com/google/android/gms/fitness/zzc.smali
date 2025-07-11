.class final Lcom/google/android/gms/fitness/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field final synthetic zzb:Ljava/util/List;

.field final synthetic zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/BleClient;Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/util/List;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fitness/zzc;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p3, p0, Lcom/google/android/gms/fitness/zzc;->zzb:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/fitness/zzc;->zzc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fitness/zzm;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {}, Lcom/google/android/gms/fitness/request/zzc;->zza()Lcom/google/android/gms/fitness/request/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/zzc;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/zzc;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zze;

    move-result-object v0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzes;->zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/internal/fitness/zzes;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fitness/zzm;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzbx;

    new-instance v1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/zzc;->zzb:Ljava/util/List;

    iget v3, p0, Lcom/google/android/gms/fitness/zzc;->zzc:I

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/zzab;ILcom/google/android/gms/internal/fitness/zzcp;)V

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fitness/zzbx;->zzf(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    return-void
.end method
