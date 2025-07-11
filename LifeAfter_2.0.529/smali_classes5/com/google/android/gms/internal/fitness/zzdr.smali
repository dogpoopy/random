.class final Lcom/google/android/gms/internal/fitness/zzdr;
.super Lcom/google/android/gms/internal/fitness/zzbm;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

.field private zzb:I

.field private zzc:Lcom/google/android/gms/fitness/result/DataReadResult;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/internal/fitness/zzdq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzbm;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/fitness/result/DataReadResult;)V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "Fitness"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzb:I

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received batch result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Fitness"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzc:Lcom/google/android/gms/fitness/result/DataReadResult;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzc:Lcom/google/android/gms/fitness/result/DataReadResult;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zzb(Lcom/google/android/gms/fitness/result/DataReadResult;)V

    .line 2
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzc:Lcom/google/android/gms/fitness/result/DataReadResult;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/result/DataReadResult;->zza()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zza:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    iget-object v0, p0, Lcom/google/android/gms/internal/fitness/zzdr;->zzc:Lcom/google/android/gms/fitness/result/DataReadResult;

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
