.class public abstract Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.super Landroid/app/Service;
.source "CustomIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CancellableIntentService"

.field private static final WHAT_MESSAGE:I = -0xa


# instance fields
.field private mName:Ljava/lang/String;

.field private mRedelivery:Z

.field private volatile mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    .line 58
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;-><init>(Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const-string v0, "CancellableIntentService"

    const-string v1, "onDestroy"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    const/16 v1, -0xa

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 79
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 80
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    invoke-virtual {p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onStart(Landroid/content/Intent;I)V

    .line 89
    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mRedelivery:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public setIntentRedelivery(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mRedelivery:Z

    return-void
.end method

.method protected abstract shouldStop()Z
.end method
