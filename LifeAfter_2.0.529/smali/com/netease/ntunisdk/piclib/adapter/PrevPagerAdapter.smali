.class public Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PrevPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;,
        Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrevPagerAdapter"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Landroidx/fragment/app/Fragment;

.field private final holders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private imageBgWhite:Z

.field private mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

.field private onItemClickListener:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;

.field private final theLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "item_us_preview_pager_show"

    .line 34
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->theLayout:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->imageBgWhite:Z

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->holders:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->fragment:Landroidx/fragment/app/Fragment;

    .line 44
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->reshow(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V

    return-void
.end method

.method private reshow(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pagerViewHolder"
        }
    .end annotation

    .line 167
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->ivVideoPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->sfVideoPlayer:Landroid/view/SurfaceView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->adjustWh()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    .line 60
    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroyMediaPlayer()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->fragment:Landroidx/fragment/app/Fragment;

    .line 174
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->destroy()V

    :cond_0
    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$PrevPagerAdapter(Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->onItemClickListener:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;

    invoke-interface {p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;->onClick()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->imageBgWhite:Z

    return-void
.end method

.method public synthetic lambda$onCreateViewHolder$1$PrevPagerAdapter(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;Landroid/view/View;)V
    .locals 10

    const-string p3, "onCreateViewHolder -> e: "

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->data:Ljava/util/List;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 87
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v2, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-eq v1, v2, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->isCurrentMedia(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 90
    :cond_1
    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setVisibility(I)V

    .line 91
    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->ivVideoPlay:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    if-nez v1, :cond_2

    .line 93
    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getDisplayMetrics(Landroid/content/res/Resources;)[I

    move-result-object v1

    .line 97
    iget v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "PrevPagerAdapter"

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    if-nez v2, :cond_6

    .line 98
    :cond_3
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/16 v6, 0x1d

    .line 100
    :try_start_0
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v7, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v7, 0x12

    .line 101
    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    .line 102
    invoke-virtual {v2, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x18

    .line 103
    invoke-virtual {v2, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 118
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_5

    .line 119
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception v7

    .line 108
    :try_start_2
    sget-boolean v8, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v8, :cond_4

    .line 109
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    aget v7, v1, v4

    iput v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 113
    aget v7, v1, v3

    iput v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 114
    iput v4, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 118
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_5

    .line 119
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 125
    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " width "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSize: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v4

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    aget p3, v1, v4

    aget v1, v1, v3

    iget v2, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget v6, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iget v7, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-static {p3, v1, v2, v6, v7}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getRealShowWH(IIIII)[I

    move-result-object p3

    .line 129
    aget v1, p3, v4

    .line 130
    aget p3, p3, v3

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoShowWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoShowHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    iget-object p3, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->sfVideoPlayer:Landroid/view/SurfaceView;

    invoke-virtual {p3, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object p3, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->sfVideoPlayer:Landroid/view/SurfaceView;

    invoke-virtual {p3, v0, p1, p2}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->setDataSourceAndSurfaceView(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Landroid/view/SurfaceView;Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;)V

    return-void

    .line 117
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 118
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v6, :cond_7

    .line 119
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_7
    :goto_3
    throw p1
.end method

.method public synthetic lambda$onCreateViewHolder$2$PrevPagerAdapter()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->onItemClickListener:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;->onClick()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->imageBgWhite:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 147
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->flVideoCover:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->flVideoCover:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    :goto_0
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 155
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    sget-object v2, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

    goto :goto_1

    .line 157
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    sget-object v2, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "item_us_preview_pager_show"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->holders:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p1, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$1;-><init>(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;)V

    .line 81
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->flVideoCover:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$aFtqswnZ66srRrmnApH8YU1-5Y8;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$aFtqswnZ66srRrmnApH8YU1-5Y8;-><init>(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->ivVideoPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$NzdxTsFM1fwSzS0QLfbZtL4onac;-><init>(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p1, p2, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$PagerViewHolder;->pivPreview:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$hDtMdNgNPpKDAOBHt9Xriqj6p-Y;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$PrevPagerAdapter$hDtMdNgNPpKDAOBHt9Xriqj6p-Y;-><init>(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setOnSingleTapUpListener(Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;)V

    return-object p2
.end method

.method public resetPlayer()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->reset()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onItemClickListener"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->onItemClickListener:Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter$OnItemClickListener;

    return-void
.end method

.method public stopMediaPlayer()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/PrevPagerAdapter;->mediaPlayerLoader:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->stop()V

    :cond_0
    return-void
.end method
