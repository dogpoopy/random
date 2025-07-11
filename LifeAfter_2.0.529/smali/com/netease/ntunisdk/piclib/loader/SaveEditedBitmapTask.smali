.class public Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "SaveEditedBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveEditedBitmapTask"


# instance fields
.field btEditCompleteRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/view/MatrixImageView;",
            ">;"
        }
    .end annotation
.end field

.field oriEntityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field sendSelectedTrue:Z

.field viewModelPicLibRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Landroid/widget/Button;)V
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
            "mView",
            "viewModelPicLib",
            "context",
            "entity",
            "btEditComplete"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->btEditCompleteRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getEditPic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-object v0

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 55
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground -> name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SaveEditedBitmapTask"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "."

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v6, 0x0

    .line 59
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_3
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    iget-object v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->imageFormat:Ljava/lang/String;

    const-string v6, "png"

    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const-string v5, "jpeg"

    :goto_0
    xor-int/lit8 v6, v6, 0x1

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground -> isJpegOutput: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uni_sdk_pic_edit_cache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_edited_"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground -> tempFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 74
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

    .line 73
    invoke-static {v2, v3, v7}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v8, 0x64

    if-eqz v6, :cond_5

    .line 80
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v6, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    goto :goto_1

    .line 82
    :cond_5
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v6, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 86
    new-instance v8, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    const/4 v14, 0x1

    move-object v11, v7

    move v12, v4

    move v13, v5

    invoke-virtual/range {v8 .. v14}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;IIZ)V

    goto :goto_2

    .line 88
    :cond_6
    new-instance v8, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v9, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    move v11, v4

    move v12, v5

    invoke-virtual/range {v8 .. v13}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 90
    :goto_2
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    .line 91
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 92
    iput v4, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 93
    iput v5, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 94
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 95
    iput-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    return-object v0

    :cond_7
    :goto_3
    return-object v1
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method protected onDone()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->onDone()V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 163
    iget-boolean v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->sendSelectedTrue:Z

    if-eqz v1, :cond_0

    .line 164
    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->loadingCover:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveEditedBitmapTask"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4
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
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    if-eqz p1, :cond_3

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "picedit_save_failed"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->btEditCompleteRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->btEditCompleteRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "picedit_finish"

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_2
    iget-boolean v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-eqz v0, :cond_4

    .line 149
    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaveEditedBitmapTask"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "SaveEditedBitmapTask"

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->viewModelPicLibRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    if-eqz v1, :cond_8

    .line 108
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v2, "picedit_finish"

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    .line 110
    :try_start_1
    iget-boolean v4, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->isEditImage:Z

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-nez v4, :cond_3

    const-string p1, "init -> getEditPic is null"

    .line 111
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-eqz p1, :cond_2

    .line 113
    iget-object p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 115
    :cond_2
    iget-object p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 116
    iget-object p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->editedInfoMap:Landroidx/collection/ArrayMap;

    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 119
    :cond_3
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 120
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->oriEntityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object p1, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 121
    iget-boolean p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-nez p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->btEditCompleteRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_4
    iget-boolean p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->isEditImage:Z

    if-nez p1, :cond_5

    iget-boolean p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-eqz p1, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->sendSelectedTrue:Z

    .line 125
    iget-object p1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sendSelected:Landroidx/lifecycle/MutableLiveData;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->sendSelectedTrue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_7
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v4, "picedit_save_failed"

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->btEditCompleteRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 130
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->btEditCompleteRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_8
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
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

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/SaveEditedBitmapTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
