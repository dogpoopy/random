.class Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "DownloadImageFileAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

.field private canceled:Z

.field protected defaultSuffix:Ljava/lang/String;

.field protected final filePath:Ljava/io/File;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 5

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ".jpg"

    .line 23
    iput-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->defaultSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->canceled:Z

    .line 35
    iput-object p2, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->url:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p3, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    .line 39
    new-instance p3, Ljava/io/File;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unifb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->canceled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;)Lcom/netease/ntunisdk/FbMediaProcessCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    return-object p0
.end method

.method static download(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .line 72
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->url:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 75
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 76
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->filePath:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 86
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method protected getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->defaultSuffix:Ljava/lang/String;

    const-string v1, "."

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->canceled:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 96
    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/FbMediaProcessCallback;->done(ZLjava/lang/String;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 53
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 54
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask$1;-><init>(Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/DownloadImageFileAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
