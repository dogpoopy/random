.class public final Lcom/google/android/gms/internal/fitness/zzes;
.super Lcom/google/android/gms/internal/fitness/zzco;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzco;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzes;->zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/internal/fitness/zzes;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    new-instance v1, Lcom/google/android/gms/internal/fitness/zzeq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fitness/zzeq;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/internal/fitness/zzes;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzes;

    new-instance v1, Lcom/google/android/gms/internal/fitness/zzer;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fitness/zzer;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fitness/zzes;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-object v0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzes;->zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    return-void
.end method
