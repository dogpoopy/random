.class abstract Lcom/google/android/gms/measurement/internal/zzmo;
.super Lcom/google/android/gms/measurement/internal/zzml;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzml;-><init>(Lcom/google/android/gms/measurement/internal/zzmp;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzf:Lcom/google/android/gms/measurement/internal/zzmp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzmp;->zzu()V

    return-void
.end method


# virtual methods
.method protected final zzak()V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzam()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzal()V
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Z

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzmo;->zzc()Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzf:Lcom/google/android/gms/measurement/internal/zzmp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmp;->zzt()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Z

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzam()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzc()Z
.end method
