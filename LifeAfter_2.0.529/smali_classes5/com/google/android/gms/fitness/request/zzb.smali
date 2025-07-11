.class final Lcom/google/android/gms/fitness/request/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/request/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/fitness/request/BleScanCallback;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onScanStopped()V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
