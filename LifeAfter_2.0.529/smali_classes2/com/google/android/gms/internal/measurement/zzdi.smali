.class final Lcom/google/android/gms/internal/measurement/zzdi;
.super Lcom/google/android/gms/internal/measurement/zzdf$zza;
.source "com.google.android.gms:play-services-measurement-sdk-api@@21.5.0"


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Landroid/content/Context;

.field private final synthetic zzf:Landroid/os/Bundle;

.field private final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzdi;->zzf:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdf$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdf;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5
    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzc:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzd:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzd:Ljava/lang/String;

    .line 7
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzc:Ljava/lang/String;

    .line 8
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb(Lcom/google/android/gms/internal/measurement/zzdf;)Ljava/lang/String;

    move-result-object v6

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    goto :goto_0

    :cond_0
    move-object v13, v5

    move-object v14, v13

    move-object v15, v14

    .line 9
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzcu;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Lcom/google/android/gms/internal/measurement/zzdf;Lcom/google/android/gms/internal/measurement/zzcu;)V

    .line 11
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Lcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzcu;

    move-result-object v4

    if-nez v4, :cond_1

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzb(Lcom/google/android/gms/internal/measurement/zzdf;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to connect to measurement client."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_1
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    .line 15
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 17
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    .line 18
    invoke-static {v5, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 20
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v0, v4, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 22
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdd;

    const-wide/32 v8, 0x14051

    int-to-long v10, v5

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzf:Landroid/os/Bundle;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    .line 23
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object v7, v0

    move-object/from16 v16, v4

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 24
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Lcom/google/android/gms/internal/measurement/zzdf;)Lcom/google/android/gms/internal/measurement/zzcu;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcu;

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zze:Landroid/content/Context;

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zza:J

    invoke-interface {v4, v5, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcu;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdd;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 28
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdi;->zzg:Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v4, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/Exception;ZZ)V

    return-void
.end method
