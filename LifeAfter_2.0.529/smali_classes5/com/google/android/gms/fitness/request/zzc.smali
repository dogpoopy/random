.class public final Lcom/google/android/gms/fitness/request/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/fitness/request/zzc;


# instance fields
.field private final zzb:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/request/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzc;->zza:Lcom/google/android/gms/fitness/request/zzc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzc;->zzb:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/fitness/request/zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fitness/request/zzc;->zza:Lcom/google/android/gms/fitness/request/zzc;

    return-object v0
.end method

.method private static zzf(Lcom/google/android/gms/fitness/request/BleScanCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerHolder(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zze;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzc;->zzb:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v1

    const-string v2, "Key must not be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzc;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/request/zze;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/fitness/request/zze;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/fitness/request/zze;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/fitness/request/zzd;)V

    iget-object p1, p0, Lcom/google/android/gms/fitness/request/zzc;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/fitness/request/BleScanCallback;Landroid/os/Looper;)Lcom/google/android/gms/fitness/request/zze;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/request/zzc;->zzf(Lcom/google/android/gms/fitness/request/BleScanCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzc;->zzb(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zze;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zze;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzc;->zzb:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzc;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/request/zze;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/zze;->zzd()V

    .line 5
    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/fitness/request/BleScanCallback;Landroid/os/Looper;)Lcom/google/android/gms/fitness/request/zze;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/request/zzc;->zzf(Lcom/google/android/gms/fitness/request/BleScanCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/request/zzc;->zzd(Lcom/google/android/gms/common/api/internal/ListenerHolder;)Lcom/google/android/gms/fitness/request/zze;

    move-result-object p1

    return-object p1
.end method
