.class final Lcom/google/android/gms/internal/fitness/zzdf;
.super Lcom/google/android/gms/internal/fitness/zzbv;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/fitness/zzdg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzdg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdf;->zza:Lcom/google/android/gms/internal/fitness/zzdg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzbv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/fitness/result/GoalsResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdf;->zza:Lcom/google/android/gms/internal/fitness/zzdg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fitness/zzdg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
