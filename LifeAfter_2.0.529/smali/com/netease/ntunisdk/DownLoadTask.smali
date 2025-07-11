.class public Lcom/netease/ntunisdk/DownLoadTask;
.super Ljava/lang/Object;
.source "DownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;,
        Lcom/netease/ntunisdk/DownLoadTask$Type;,
        Lcom/netease/ntunisdk/DownLoadTask$callback;
    }
.end annotation


# static fields
.field private static sDownloadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 21
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/DownLoadTask;->sDownloadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/DownLoadTask;->downloadVideo(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/DownLoadTask;->downloadImage(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static download(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/netease/ntunisdk/DownLoadTask$callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;",
            ">;",
            "Lcom/netease/ntunisdk/DownLoadTask$callback;",
            ")V"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/netease/ntunisdk/DownLoadTask;->sDownloadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/netease/ntunisdk/DownLoadTask$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/netease/ntunisdk/DownLoadTask$1;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static downloadImage(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;
    .locals 6

    .line 114
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unifb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {p1}, Lcom/netease/ntunisdk/DownLoadTask;->getSuffix(Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    :try_start_0
    new-instance p0, Ljava/net/URL;

    iget-object p1, p1, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 120
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 121
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 122
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 124
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 125
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 128
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static downloadVideo(Landroid/app/Activity;Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;
    .locals 6

    .line 76
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unifb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p1}, Lcom/netease/ntunisdk/DownLoadTask;->getSuffix(Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    :try_start_0
    new-instance p0, Ljava/net/URL;

    iget-object p1, p1, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 82
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 83
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 84
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 90
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 95
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 96
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static getSuffix(Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;)Ljava/lang/String;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->defaultSuffix:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->url:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    iget-object p0, p0, Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
