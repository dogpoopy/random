.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cloudmessaging/zzn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzh;->zza:Lcom/google/android/gms/cloudmessaging/zzn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzh;->zza:Lcom/google/android/gms/cloudmessaging/zzn;

    monitor-enter v0

    :try_start_0
    iget v1, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zza:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zzd:Ljava/util/Queue;

    .line 1
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzn;->zzf()V

    .line 22
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zzd:Ljava/util/Queue;

    .line 2
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cloudmessaging/zzr;

    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zze:Landroid/util/SparseArray;

    .line 3
    iget v4, v1, Lcom/google/android/gms/cloudmessaging/zzr;->zza:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zzf:Lcom/google/android/gms/cloudmessaging/zzu;

    invoke-static {v3}, Lcom/google/android/gms/cloudmessaging/zzu;->zze(Lcom/google/android/gms/cloudmessaging/zzu;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/cloudmessaging/zzl;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/cloudmessaging/zzl;-><init>(Lcom/google/android/gms/cloudmessaging/zzn;Lcom/google/android/gms/cloudmessaging/zzr;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    .line 6
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sending "

    const-string v5, "MessengerIpcClient"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zzf:Lcom/google/android/gms/cloudmessaging/zzu;

    iget-object v4, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zzb:Landroid/os/Messenger;

    iget v5, v1, Lcom/google/android/gms/cloudmessaging/zzr;->zzc:I

    invoke-static {v3}, Lcom/google/android/gms/cloudmessaging/zzu;->zza(Lcom/google/android/gms/cloudmessaging/zzu;)Landroid/content/Context;

    move-result-object v3

    .line 8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 9
    iput v5, v6, Landroid/os/Message;->what:I

    iget v5, v1, Lcom/google/android/gms/cloudmessaging/zzr;->zza:I

    .line 10
    iput v5, v6, Landroid/os/Message;->arg1:I

    .line 11
    iput-object v4, v6, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Landroid/os/Bundle;

    .line 12
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/cloudmessaging/zzr;->zzb()Z

    move-result v5

    const-string v7, "oneWay"

    .line 14
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pkg"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzr;->zzd:Landroid/os/Bundle;

    const-string v3, "data"

    .line 16
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {v6, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/zzn;->zzc:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 18
    invoke-virtual {v1, v6}, Lcom/google/android/gms/cloudmessaging/zzp;->zza(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/zzn;->zza(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
