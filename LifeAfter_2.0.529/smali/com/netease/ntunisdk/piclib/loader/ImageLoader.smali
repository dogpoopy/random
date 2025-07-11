.class public Lcom/netease/ntunisdk/piclib/loader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;,
        Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;,
        Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;
    }
.end annotation


# static fields
.field private static loader:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bitmapParams:Landroid/media/MediaMetadataRetriever$BitmapParams;

.field options:Lcom/bumptech/glide/request/RequestOptions;

.field private taskMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/ImageView;",
            "Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Image4ShowLoader"

    .line 36
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->TAG:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 102
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/netease/ntunisdk/piclib/R$drawable;->png_us_picedit_load_failed:I

    .line 103
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->taskMap:Ljava/util/WeakHashMap;

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->bitmapParams:Landroid/media/MediaMetadataRetriever$BitmapParams;

    .line 61
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever$BitmapParams;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/loader/ImageLoader;)Landroid/media/MediaMetadataRetriever$BitmapParams;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->bitmapParams:Landroid/media/MediaMetadataRetriever$BitmapParams;

    return-object p0
.end method

.method private declared-synchronized addTask(Landroid/widget/ImageView;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "task"
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->taskMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;
    .locals 2

    .line 47
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loader:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loader:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loader:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loader:Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    return-object v0
.end method

.method private declared-synchronized getTask(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->taskMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "entity",
            "sizeType",
            "invokeGif"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getCustomTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p1, v9}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->setCustomTag(Ljava/lang/String;)V

    .line 109
    iget v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    iget p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance p3, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;

    invoke-direct {p3, v9, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/piclib/view/TagImageView;)V

    .line 113
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 114
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void

    .line 117
    :cond_1
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-eq v0, v1, :cond_3

    if-eqz p4, :cond_2

    .line 118
    iget-object p3, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object p4, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p3, p4, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance p3, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;

    invoke-direct {p3, v9, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/piclib/view/TagImageView;)V

    .line 122
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 124
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 125
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_1

    .line 126
    :cond_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance p3, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;

    invoke-direct {p3, v9, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$TagRequestListener;-><init>(Ljava/lang/String;Lcom/netease/ntunisdk/piclib/view/TagImageView;)V

    .line 129
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 131
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 132
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->getBitmapCache(Landroid/content/Context;)Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    move-result-object p4

    invoke-virtual {p4, v9}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 136
    invoke-virtual {p1, p4}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->removeTask(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->cancel()V

    :cond_4
    return-void

    :cond_5
    const/4 p4, 0x0

    .line 143
    invoke-virtual {p1, p4}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getTask(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_7

    .line 147
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getCustomTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p4, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->priority:J

    const/4 p4, 0x0

    goto :goto_0

    .line 151
    :cond_6
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->removeTask(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;

    .line 152
    invoke-virtual {p4}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;->cancel()V

    :cond_7
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_8

    .line 156
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getShowSize(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;)[I

    move-result-object p3

    .line 157
    new-instance p4, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;

    iget-object v5, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    aget v6, p3, v0

    aget v7, p3, v1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;-><init>(Lcom/netease/ntunisdk/piclib/loader/ImageLoader;Lcom/netease/ntunisdk/piclib/view/TagImageView;Landroid/net/Uri;IILcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1, p4}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->addTask(Landroid/widget/ImageView;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;)V

    .line 159
    invoke-static {p4}, Lcom/netease/ntunisdk/piclib/thread/TaskExecutor;->execute(Lcom/netease/ntunisdk/piclib/thread/Task;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public declared-synchronized removeTask(Landroid/widget/ImageView;)Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->taskMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$LoadBitmapTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
