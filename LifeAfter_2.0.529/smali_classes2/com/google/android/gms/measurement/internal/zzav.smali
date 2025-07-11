.class final Lcom/google/android/gms/measurement/internal/zzav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzif;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzif;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzav;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzif;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzif;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzc()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzaw;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzaw;J)V

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzav;->zzb:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzb()V

    :cond_1
    return-void
.end method
