.class final Lcom/google/android/gms/measurement/internal/zzjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzab()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Z)V

    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Z

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzab()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zziq;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzv()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 17
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Lcom/google/android/gms/measurement/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zziq;->zzb(Lcom/google/android/gms/measurement/internal/zziq;)V

    return-void
.end method
