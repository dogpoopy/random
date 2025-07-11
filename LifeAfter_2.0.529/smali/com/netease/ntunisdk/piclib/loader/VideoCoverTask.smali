.class public Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "VideoCoverTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask$IAppendVideoVideoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCoverTask"


# instance fields
.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private coverName:Ljava/lang/String;

.field private entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field private final listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask$IAppendVideoVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private outputEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field retriever:Landroid/media/MediaMetadataRetriever;

.field private final showSize:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[ILcom/netease/ntunisdk/piclib/loader/VideoCoverTask$IAppendVideoVideoListener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "iAppendVideoVideoListener",
            "coverName"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 35
    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->showSize:[I

    .line 36
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 37
    iput-object p5, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->coverName:Ljava/lang/String;

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

    .line 42
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    .line 43
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 45
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v4, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    iget-object v5, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 50
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 51
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 52
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 54
    new-instance v3, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {v3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->showSize:[I

    const/4 v2, 0x0

    aget v4, v0, v2

    const/4 v9, 0x1

    aget v5, v0, v9

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v8, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-virtual/range {v3 .. v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getRealShowWH(IIIII)[I

    move-result-object v0

    .line 55
    aget v7, v0, v2

    .line 56
    aget v8, v0, v9

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 59
    new-instance v0, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    .line 60
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 61
    iget-object v10, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v11, -0x1

    const/4 v13, 0x2

    move v14, v7

    move v15, v8

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_1

    .line 63
    iget-object v3, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    new-instance v2, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;

    invoke-direct {v2}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;-><init>()V

    invoke-virtual {v2, v0, v7, v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;->createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    :goto_0
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 70
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "uni_sdk_pic_edit_cache"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->coverName:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 76
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

    .line 82
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoCoverTask"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    return-object v2

    .line 84
    :cond_3
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->cover:Ljava/lang/String;

    .line 85
    iget-object v0, v1, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

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

    .line 21
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method protected onDone()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->onDone()V

    .line 99
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->outputEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->outputEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask$IAppendVideoVideoListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->outputEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask$IAppendVideoVideoListener;->onAppendCover(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    :cond_2
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

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

    .line 93
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->outputEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

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

    .line 21
    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/VideoCoverTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
