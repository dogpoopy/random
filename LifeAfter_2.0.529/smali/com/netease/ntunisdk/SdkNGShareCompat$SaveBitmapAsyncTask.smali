.class Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;
.super Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;
.source "SdkNGShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/SdkNGShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBitmapAsyncTask"
.end annotation


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkNGShareCompat;)V
    .locals 5

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkNGShareCompat$DownloadImageAsyncTask;-><init>(Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkNGShareCompat;)V

    .line 510
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/netease/ntunisdk/SdkNGShareCompat;->access$400(Lcom/netease/ntunisdk/SdkNGShareCompat;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saved_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->filePath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 506
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 515
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->filePath:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 516
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 522
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNGShareCompat$SaveBitmapAsyncTask;->filePath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method
