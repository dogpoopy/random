.class final Lcom/google/android/gms/measurement/internal/zzll;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfk;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlm;Lcom/google/android/gms/measurement/internal/zzfk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzll;->zza:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzlm;->zza(Lcom/google/android/gms/measurement/internal/zzlm;Z)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzah()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzll;->zzb:Lcom/google/android/gms/measurement/internal/zzlm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzlm;->zza:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzll;->zza:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
