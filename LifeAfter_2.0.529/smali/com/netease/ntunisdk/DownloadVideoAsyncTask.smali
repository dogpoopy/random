.class public Lcom/netease/ntunisdk/DownloadVideoAsyncTask;
.super Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;
.source "DownloadVideoAsyncTask.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    .line 26
    iput-object p4, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->defaultSuffix:Ljava/lang/String;

    return-void
.end method

.method static downloadAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 1

    .line 21
    new-instance p1, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;

    const-string v0, ".mp3"

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static downloadVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 1

    .line 17
    new-instance p1, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;

    const-string v0, ".mp4"

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    const/4 p1, 0x0

    .line 34
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    .line 36
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 40
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->filePath:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x2000

    :try_start_2
    new-array p1, p1, [B

    .line 45
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 49
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadVideoAsyncTask;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Downloader"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download video success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 57
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v0, :cond_1

    .line 63
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    return-object p1

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 53
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    .line 57
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    nop

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 63
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    const-string p1, ""

    return-object p1

    :catchall_2
    move-exception p1

    :goto_4
    if-eqz v1, :cond_4

    .line 57
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    nop

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 63
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 67
    :catch_8
    :cond_5
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
