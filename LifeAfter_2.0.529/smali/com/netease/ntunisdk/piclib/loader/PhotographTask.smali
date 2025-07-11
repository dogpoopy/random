.class public Lcom/netease/ntunisdk/piclib/loader/PhotographTask;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "PhotographTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotographTask"


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

.field private final file:Ljava/io/File;

.field private fromCustomCamera:Z

.field private uriFromCamera:Landroid/net/Uri;

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Ljava/lang/String;Z)V
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
            "uriFromCameraStr",
            "viewModelPicLib",
            "filePath",
            "fromCustomCamera"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 40
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->uriFromCamera:Landroid/net/Uri;

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    .line 44
    iput-boolean p5, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->fromCustomCamera:Z

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 51
    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v1, "video"

    .line 52
    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 53
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 54
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->uriFromCamera:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->uriFromCamera:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    const/16 v3, 0x12

    .line 59
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    .line 60
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    .line 61
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    .line 62
    invoke-virtual {v1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    .line 68
    iget v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    if-nez v1, :cond_1

    goto :goto_2

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSize:I

    if-lez v1, :cond_3

    .line 72
    iget-boolean v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->fromCustomCamera:Z

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSize:I

    int-to-long v5, v1

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x500000

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 74
    iput-boolean v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    goto :goto_1

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSize:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 79
    iput-boolean v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    .line 83
    :cond_3
    :goto_1
    iget v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDuration:I

    if-le v1, v3, :cond_6

    .line 84
    iput-boolean v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_5
    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->SINGLE_FRAME_IMAGE:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const-string v1, "image"

    .line 88
    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaTypeString:Ljava/lang/String;

    .line 89
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 93
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 94
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 95
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getOrientation(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 97
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->uriFromCamera:Landroid/net/Uri;

    if-nez v1, :cond_7

    .line 98
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".piclib.OtherWayFileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    goto :goto_4

    .line 100
    :cond_7
    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 102
    :goto_4
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    .line 103
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method protected onDone()V
    .locals 3

    .line 169
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->onDone()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotographTask"

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

    .line 182
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

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

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotographTask"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "PhotographTask"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 111
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->methodType:Ljava/lang/String;

    const-string v3, "openAlbum"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->notifyShowingDataUpdate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 117
    iput v3, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 118
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iput-object p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 119
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "com.netease.ntunisdk.piclib.fragment.EditMediaFragment"

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 128
    iget-boolean v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    .line 150
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_3
    :goto_0
    const-string v2, "onSuccess -> overSize or overDuration"

    .line 129
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->needToDeleteCameraMediaFiles:Ljava/util/List;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-boolean v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->arabFlag:Z

    if-eqz v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_duration:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_size:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v4, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_duration:I

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectDurationOriginal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sget v5, Lcom/netease/ntunisdk/piclib/R$string;->picedit_select_over_size:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->videoMaxSelectSizeOriginal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 142
    :goto_1
    iget-boolean v4, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    if-eqz v4, :cond_5

    .line 143
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 144
    :cond_5
    iget-boolean p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-eqz p1, :cond_6

    .line 145
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iput v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->position:I

    .line 154
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "com.netease.ntunisdk.piclib.fragment.PreviewMediaFragment"

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 158
    :cond_7
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 159
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "picedit_add_failed"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_8
    const-string p1, "entity from camera is null."

    .line 160
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
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

    .line 28
    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/PhotographTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
