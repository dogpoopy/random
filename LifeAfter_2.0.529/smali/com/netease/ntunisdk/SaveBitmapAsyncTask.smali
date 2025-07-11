.class public Lcom/netease/ntunisdk/SaveBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "SaveBitmapAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

.field private final saveFile:Ljava/io/File;

.field private final shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p3, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    .line 27
    iput-object p2, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    .line 28
    new-instance p2, Ljava/io/File;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unifb_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->saveFile:Ljava/io/File;

    return-void
.end method

.method static save(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 33
    iget-object p1, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 40
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->saveFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 42
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    iget-object p1, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->saveFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->callback:Lcom/netease/ntunisdk/FbMediaProcessCallback;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/FbMediaProcessCallback;->done(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
