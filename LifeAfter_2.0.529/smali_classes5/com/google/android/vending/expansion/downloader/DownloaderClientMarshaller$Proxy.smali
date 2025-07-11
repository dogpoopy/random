.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    :try_start_0
    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 2

    .line 85
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "progress"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 2

    .line 78
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "newState"

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xa

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method
