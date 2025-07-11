.class public Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/loader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field bitmapRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;

.field entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field ivRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/view/TagImageView;",
            ">;"
        }
    .end annotation
.end field

.field retriever:Landroid/media/MediaMetadataRetriever;

.field screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

.field showSizeHeight:I

.field showSizeWidth:I

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/loader/ImageLoader;Lcom/netease/ntunisdk/piclib/view/TagImageView;Landroid/net/Uri;IILcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "imageView",
            "uri",
            "showSizeWidth",
            "showSizeHeight",
            "entity",
            "tag"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->this$0:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    .line 173
    new-instance p1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    .line 174
    new-instance p1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;

    invoke-direct {p1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->bitmapRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;

    .line 177
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    .line 178
    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->uri:Landroid/net/Uri;

    .line 179
    iput p4, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->showSizeWidth:I

    .line 180
    iput p5, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->showSizeHeight:I

    .line 181
    iput-object p7, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    return-void
.end method


# virtual methods
.method public doInBackground()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getCustomTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 188
    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    .line 189
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 195
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 196
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 199
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->screenRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->showSizeWidth:I

    iget v4, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->showSizeHeight:I

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getRealShowWH(IIIII)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    aget v6, v0, v1

    const/4 v1, 0x1

    .line 201
    aget v7, v0, v1

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->this$0:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/ImageLoader;)Landroid/media/MediaMetadataRetriever$BitmapParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v3, -0x1

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->this$0:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->access$000(Lcom/netease/ntunisdk/piclib/loader/ImageLoader;)Landroid/media/MediaMetadataRetriever$BitmapParams;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIIILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_2

    .line 206
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v3, -0x1

    const/4 v5, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->bitmapRelative:Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;

    invoke-virtual {v1, v0, v6, v7}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$BitmapRelative;->createScaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->doInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method protected onDone()V
    .locals 3

    .line 226
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->onDone()V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->this$0:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->removeTask(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Image4ShowLoader"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const-string v0, "Image4ShowLoader"

    if-eqz p1, :cond_0

    .line 238
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getCustomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    sget v1, Lcom/netease/ntunisdk/piclib/R$drawable;->png_us_picedit_load_failed:I

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->setImageResource(I)V

    .line 241
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->resetCustomTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure -> e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getCustomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->ivRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/TagImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->getBitmapCache(Landroid/content/Context;)Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
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

    .line 164
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
