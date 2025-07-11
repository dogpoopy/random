.class final Lcom/google/android/gms/measurement/internal/zzjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzih;

.field private final synthetic zzb:J

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzih;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JJZLcom/google/android/gms/measurement/internal/zzih;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:J

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:J

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:Z

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zze:Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zza(JZ)V

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:J

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:Z

    const/4 v8, 0x1

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;JZZ)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzps;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzbs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Lcom/google/android/gms/measurement/internal/zziq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzih;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zze:Lcom/google/android/gms/measurement/internal/zzih;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zziq;Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzih;)V

    :cond_0
    return-void
.end method
