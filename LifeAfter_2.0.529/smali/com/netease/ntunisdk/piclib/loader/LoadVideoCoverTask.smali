.class public Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;
.super Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;
.source "LoadVideoCoverTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadVideoCoverTask"


# instance fields
.field private retriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[ILcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;Ljava/lang/String;J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "entity",
            "showSize",
            "listener",
            "coverName",
            "taskTag"
        }
    .end annotation

    const/4 v8, 0x0

    const-string v9, "jpeg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-wide/from16 v6, p6

    .line 25
    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;[ILjava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 30
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    .line 31
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 33
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    iget-object v4, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    iget-object v5, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 38
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 39
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 40
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 42
    new-instance v3, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {v3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->showSize:[I

    const/4 v2, 0x0

    aget v4, v0, v2

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->showSize:[I

    const/4 v9, 0x1

    aget v5, v0, v9

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v8, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-virtual/range {v3 .. v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getRealShowWH(IIIII)[I

    move-result-object v0

    .line 43
    aget v7, v0, v2

    .line 44
    aget v8, v0, v9

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 47
    new-instance v0, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 48
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 49
    iget-object v10, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v11, -0x1

    const/4 v13, 0x2

    move v14, v7

    move v15, v8

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_1

    .line 51
    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    new-instance v2, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;

    invoke-direct {v2}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;-><init>()V

    invoke-virtual {v2, v0, v7, v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;->createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    :goto_0
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v2, 0x0

    .line 57
    iput-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_4

    .line 59
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "uni_sdk_pic_edit_cache"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->outputFileName:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 65
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-object v0, v2

    .line 71
    :goto_2
    sget-object v3, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    return-object v2

    .line 73
    :cond_3
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    .line 74
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    return-object v0

    :cond_4
    return-object v2
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->onCancel()V

    return-void
.end method

.method protected onDone()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->onDone()V

    return-void
.end method

.method public onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/LoadVideoCoverTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
