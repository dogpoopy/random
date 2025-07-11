.class final Lcom/google/android/gms/fitness/service/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/fitness/service/SensorEventDispatcher;


# instance fields
.field private final zza:Lcom/google/android/gms/fitness/data/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/data/zzv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzv;

    iput-object p1, p0, Lcom/google/android/gms/fitness/service/zzd;->zza:Lcom/google/android/gms/fitness/data/zzv;

    return-void
.end method


# virtual methods
.method public final publish(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/zzd;->zza:Lcom/google/android/gms/fitness/data/zzv;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/data/zzv;->zzd(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method

.method public final publish(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->zzd()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/zzd;->zza:Lcom/google/android/gms/fitness/data/zzv;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/data/zzv;->zzd(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method
