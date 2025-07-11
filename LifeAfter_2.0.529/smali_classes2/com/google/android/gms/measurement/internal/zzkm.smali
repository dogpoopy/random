.class final Lcom/google/android/gms/measurement/internal/zzkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzki;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzki;

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzkh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkh;Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzki;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zze:Lcom/google/android/gms/measurement/internal/zzkh;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zzb:Lcom/google/android/gms/measurement/internal/zzki;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zze:Lcom/google/android/gms/measurement/internal/zzkh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zzb:Lcom/google/android/gms/measurement/internal/zzki;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzkm;->zzd:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Lcom/google/android/gms/measurement/internal/zzkh;Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzki;JZLandroid/os/Bundle;)V

    return-void
.end method
