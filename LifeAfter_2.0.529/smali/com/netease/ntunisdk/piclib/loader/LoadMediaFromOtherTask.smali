.class public Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "LoadMediaFromOtherTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadMediaFromOtherTask"

.field public static loadMediaFromOtherTask:Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;


# instance fields
.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroid/content/Intent;

.field private final fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

.field private final loadingCoverRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/view/LoadingCover;",
            ">;"
        }
    .end annotation
.end field

.field private targetFile:Ljava/io/File;

.field private final viewModelPicLibRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Lcom/netease/ntunisdk/piclib/view/LoadingCover;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "context",
            "viewModelPicLib",
            "loadingCover"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    .line 39
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    .line 47
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->data:Landroid/content/Intent;

    .line 48
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    .line 50
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadingCoverRef:Ljava/lang/ref/WeakReference;

    .line 51
    sput-object p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadMediaFromOtherTask:Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other way content provider uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadMediaFromOtherTask"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->data:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    if-nez v0, :cond_1

    return-object v1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->data:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v2, v0, v3}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;->createTemporaryFile(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getPreSufFix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".piclib.OtherWayFileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    .line 65
    invoke-static {v2, v3, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v3}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>()V

    const/4 v4, 0x1

    .line 68
    aget-object v5, v0, v4

    iput-object v5, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    .line 69
    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->isSupportedVideoFormat(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v0, "video"

    .line 71
    iput-object v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 73
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v0, v5, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v5, 0x12

    .line 74
    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    .line 75
    invoke-virtual {v0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    .line 76
    invoke-virtual {v0, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    .line 77
    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 82
    iget v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    if-eqz v0, :cond_3

    iget v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    if-eqz v0, :cond_3

    iget v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    if-nez v0, :cond_6

    :cond_3
    return-object v1

    .line 85
    :cond_4
    aget-object v5, v0, v4

    const-string v6, "gif"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "image"

    if-eqz v5, :cond_5

    .line 86
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 87
    iput-object v6, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_5
    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->isSupportedImageFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    .line 90
    iput-object v6, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 92
    :cond_6
    :goto_0
    iget-object v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-eq v0, v1, :cond_7

    .line 93
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 96
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 97
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 98
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 99
    new-instance v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getOrientation(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 101
    :cond_7
    iput-object v2, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 102
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    return-object v3

    :cond_8
    return-object v1
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->fileRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$FileRelative;->writeFlag:Z

    .line 152
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 154
    iput v1, v0, Landroid/os/Message;->what:I

    .line 155
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->getInstance()Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/piclib/utils/HandlerUtils$PicHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method protected onDone()V
    .locals 3

    .line 108
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->onDone()V

    const/4 v0, 0x0

    .line 110
    :try_start_0
    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadMediaFromOtherTask:Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadingCoverRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->loadingCoverRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadMediaFromOtherTask"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "picedit_add_failed"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadMediaFromOtherTask"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportGif:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->isSupportedImageFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->suffix:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/FormatUtil;->isSupportedVideoFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "picedit_gif_not_supported"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->notifyShowingDataUpdate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "picedit_add_failed"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadMediaFromOtherTask"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
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

    .line 33
    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/LoadMediaFromOtherTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
