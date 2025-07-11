.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;
.super Landroid/os/Handler;
.source "DownloaderServiceMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "EMH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestDownloadStatus()V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "flags"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    goto :goto_0

    .line 122
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->access$000(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestAbortDownload()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
