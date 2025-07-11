.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;
.super Ljava/lang/Object;
.source "DownloaderServiceMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mMsg:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->mMsg:Landroid/os/Messenger;

    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    :try_start_0
    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->mMsg:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClientUpdated(Landroid/os/Messenger;)V
    .locals 2

    .line 103
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "EMH"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public requestAbortDownload()V
    .locals 2

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public requestContinueDownload()V
    .locals 2

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public requestDownloadStatus()V
    .locals 2

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public requestPauseDownload()V
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setDownloadFlags(I)V
    .locals 2

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "flags"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method
