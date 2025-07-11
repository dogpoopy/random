.class Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "SdkNGShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadImageAsyncTask"
.end annotation

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
.field private canceled:Z

.field filePath:Ljava/io/File;

.field private progressDialog:Landroid/app/ProgressDialog;

.field ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/SdkNGShareCompat;",
            ">;"
        }
    .end annotation
.end field

.field shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkNGShareCompat;)V
    .locals 6

    .line 540
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->canceled:Z

    .line 541
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    .line 542
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    .line 543
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$500(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$802(Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;Z)Z
    .locals 0

    .line 532
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->canceled:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 532
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 567
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 570
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 571
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 572
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 574
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->filePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 575
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 578
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 579
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 584
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 532
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkNGShareCompat;

    .line 591
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 594
    :cond_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->canceled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 595
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$200(Lcom/netease/ntunisdk/SdkNGShareCompat;Lcom/netease/ntunisdk/base/ShareInfo;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/SdkNGShareCompat;

    if-eqz v0, :cond_0

    .line 549
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$700(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 550
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 552
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 553
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask$1;-><init>(Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 561
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
