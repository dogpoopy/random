.class final Lcom/google/android/gms/internal/fitness/zzdo;
.super Lcom/google/android/gms/internal/fitness/zzbj;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/fitness/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fitness/zzdp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdo;->zza:Lcom/google/android/gms/internal/fitness/zzdp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzbj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdo;->zza:Lcom/google/android/gms/internal/fitness/zzdp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fitness/zzdp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
