.class public final Lcom/google/android/gms/fitness/request/zzaj;
.super Lcom/google/android/gms/fitness/data/zzu;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/fitness/request/zzai;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/fitness/data/zzu;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzaj;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzaj;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->clear()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzaj;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzag;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/request/zzag;-><init>(Lcom/google/android/gms/fitness/request/zzaj;Lcom/google/android/gms/fitness/data/DataPoint;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
