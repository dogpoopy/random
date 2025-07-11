.class final Lcom/google/android/gms/fitness/request/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/fitness/data/DataPoint;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/request/zzaj;Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzag;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/fitness/request/OnDataPointListener;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzag;->zza:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/request/OnDataPointListener;->onDataPoint(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
