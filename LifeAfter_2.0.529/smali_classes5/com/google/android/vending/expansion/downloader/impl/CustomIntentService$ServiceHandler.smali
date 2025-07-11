.class final Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "CustomIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;Landroid/os/Looper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->shouldStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CancellableIntentService"

    const-string v1, "stopSelf"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->stopSelf(I)V

    const-string p1, "afterStopSelf"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
