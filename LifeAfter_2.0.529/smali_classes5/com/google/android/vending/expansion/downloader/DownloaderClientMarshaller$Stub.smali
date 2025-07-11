.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation


# instance fields
.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDownloaderServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

.field final mMessenger:Landroid/os/Messenger;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/expansion/downloader/IDownloaderClient;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 121
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;

    invoke-direct {v1, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;-><init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    .line 153
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$2;-><init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mConnection:Landroid/content/ServiceConnection;

    .line 146
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 147
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mDownloaderServiceClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Landroid/content/Context;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Landroid/os/Messenger;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mServiceMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 3

    .line 174
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mContext:Landroid/content/Context;

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mDownloaderServiceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    const-string v2, "EMH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mBound:Z

    :goto_0
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mBound:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mBound:Z

    :cond_0
    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
