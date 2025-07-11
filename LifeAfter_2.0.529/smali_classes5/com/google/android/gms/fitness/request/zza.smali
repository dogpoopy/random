.class final Lcom/google/android/gms/fitness/request/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/request/zze;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zza;->zza:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/fitness/request/BleScanCallback;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->zza:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
