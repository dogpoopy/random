.class public Lcom/google/android/gms/cloudmessaging/Rpc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.1.0"


# static fields
.field private static zza:I

.field private static zzb:Landroid/app/PendingIntent;

.field private static final zzc:Ljava/util/concurrent/Executor;

.field private static final zzd:Ljava/util/regex/Pattern;


# instance fields
.field private final zze:Landroidx/collection/SimpleArrayMap;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/cloudmessaging/zzv;

.field private final zzh:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzi:Landroid/os/Messenger;

.field private zzj:Landroid/os/Messenger;

.field private zzk:Lcom/google/android/gms/cloudmessaging/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/cloudmessaging/zzy;->zza:Lcom/google/android/gms/cloudmessaging/zzy;

    sput-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    const-string v0, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzd:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 2
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzad;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/zzad;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi:Landroid/os/Messenger;

    .line 4
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 5
    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic zza(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Message;)V
    .locals 7

    if-eqz p1, :cond_e

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzd;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/cloudmessaging/zzd;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "google.messenger"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/cloudmessaging/zze;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/cloudmessaging/zze;

    iput-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzk:Lcom/google/android/gms/cloudmessaging/zze;

    .line 8
    :cond_0
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzj:Landroid/os/Messenger;

    .line 10
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/cloudmessaging/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_2

    const-string p0, "Rpc"

    .line 13
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected response action: "

    const-string v0, "Rpc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "registration_id"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "unregistered"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_b

    const-string v0, "error"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected response, no error or registration id "

    const-string v0, "Rpc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v4, "Rpc"

    .line 19
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Received InstanceID error "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Rpc"

    .line 20
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v4, "|"

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "\\|"

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 23
    array-length v5, v4

    if-le v5, v1, :cond_8

    aget-object v5, v4, v3

    const-string v6, "ID"

    invoke-static {v5, v6}, Lcom/google/android/gms/cloudmessaging/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    .line 25
    :cond_6
    aget-object v0, v4, v1

    .line 26
    aget-object v1, v4, v2

    const-string v2, ":"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    const-string v2, "error"

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_8
    :goto_0
    const-string p0, "Unexpected structured response "

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Rpc"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 30
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 31
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_a
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_b
    sget-object v4, Lcom/google/android/gms/cloudmessaging/Rpc;->zzd:Ljava/util/regex/Pattern;

    .line 33
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 34
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_c

    const-string p0, "Rpc"

    .line 35
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "Unexpected response string: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Rpc"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_c
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_d

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "registration_id"

    .line 40
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    return-void

    :cond_e
    const-string p0, "Rpc"

    const-string p1, "Dropping invalid message"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final zze(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-virtual {v3, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/content/Intent;

    .line 5
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/cloudmessaging/zzv;->zzb()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 11
    invoke-static {p1, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|ID|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "kid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Rpc"

    const/4 v3, 0x3

    .line 13
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "Sending "

    const-string v6, "Rpc"

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi:Landroid/os/Messenger;

    const-string v5, "google.messenger"

    .line 15
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzj:Landroid/os/Messenger;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzk:Lcom/google/android/gms/cloudmessaging/zze;

    if-eqz p1, :cond_4

    .line 16
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 17
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzj:Landroid/os/Messenger;

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_1

    .line 28
    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzk:Lcom/google/android/gms/cloudmessaging/zze;

    .line 19
    invoke-virtual {v5, p1}, Lcom/google/android/gms/cloudmessaging/zze;->zzb(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    const-string p1, "Rpc"

    .line 20
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Rpc"

    const-string v3, "Messenger failed, fallback to startService"

    .line 21
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/zzv;->zzb()I

    move-result p1

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 23
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/cloudmessaging/zzab;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cloudmessaging/zzab;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/cloudmessaging/zzac;

    invoke-direct {v4, p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/zzac;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static declared-synchronized zzf()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zza:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/gms/cloudmessaging/Rpc;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zzg(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zzb:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.example.invalidpackage"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v3, Lcom/google/android/gms/internal/cloudmessaging/zza;->zza:I

    .line 3
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzb:Landroid/app/PendingIntent;

    :cond_0
    const-string p0, "app"

    sget-object v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zzb:Landroid/app/PendingIntent;

    .line 4
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zzh(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-nez v1, :cond_0

    const-string p2, "Rpc"

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing callback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static zzi(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "google.messenger"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public messageHandled(Lcom/google/android/gms/cloudmessaging/CloudMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cloudmessaging/CloudMessage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzv;->zza()I

    move-result v0

    const v1, 0xdedfaa0

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.message_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->zza()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "google.product_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/zzu;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzu;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cloudmessaging/zzu;->zzc(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    .line 7
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public send(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzv;->zza()I

    move-result v0

    const v1, 0xb71b00

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzv;->zzb()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/cloudmessaging/zzz;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/cloudmessaging/zzz;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    .line 3
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/zzu;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzu;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cloudmessaging/zzu;->zzd(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    .line 8
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zzaa;->zza:Lcom/google/android/gms/cloudmessaging/zzaa;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Landroid/os/Bundle;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/android/gms/cloudmessaging/zzx;->zza:Lcom/google/android/gms/cloudmessaging/zzx;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method final synthetic zzd(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
