.class final Lcom/google/android/gms/measurement/internal/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzb;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzc:Lcom/google/android/gms/measurement/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zza;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zza;->zzb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzc:Lcom/google/android/gms/measurement/internal/zzb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zza:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzb:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzb;->zza(Lcom/google/android/gms/measurement/internal/zzb;Ljava/lang/String;J)V

    return-void
.end method
