.class Lcom/netease/mrzhna/Launcher$21;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->downloadObbFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 0

    .line 2420
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 5

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    .line 2486
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    .line 2487
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    .line 2488
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    .line 2489
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "curSpeed:%s / timeRemain:%s / progress:%s / total:%s"

    .line 2485
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEOX_G66_OBB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 2492
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$2800(Lcom/netease/mrzhna/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 7

    .line 2432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDownloaderClient:onDownloadStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEOX_G66_OBB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "error code:"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2447
    :pswitch_1
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v4}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v6, "neox_launcher_network_error"

    invoke-static {v5, v6}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/mrzhna/Launcher;->access$2700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)V

    .line 2448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2459
    :pswitch_2
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v2}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v5, "neox_launcher_no_enough_space"

    invoke-static {v4, v5}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/mrzhna/Launcher;->access$2700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)V

    .line 2460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2452
    :pswitch_3
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-virtual {v2}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v5, "NEED_CELLULAR_PERMISSION"

    invoke-static {v4, v5}, Lcom/netease/mrzhna/Launcher;->access$000(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/mrzhna/Launcher;->access$2700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)V

    .line 2453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2463
    :pswitch_4
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object p1

    new-instance v0, Lcom/netease/mrzhna/Launcher$21$1;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/Launcher$21$1;-><init>(Lcom/netease/mrzhna/Launcher$21;)V

    invoke-virtual {p1, v0}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDownloaderClient:onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEOX_G66_OBB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/mrzhna/Launcher;->access$2502(Lcom/netease/mrzhna/Launcher;Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 2426
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$2500(Lcom/netease/mrzhna/Launcher;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 2427
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$2500(Lcom/netease/mrzhna/Launcher;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$21;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$2600(Lcom/netease/mrzhna/Launcher;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    return-void
.end method
