.class public Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;
.super Ljava/lang/Object;
.source "MediaPlayerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlayerLoader"


# instance fields
.field private context:Landroid/content/Context;

.field private entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field private listener:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaUri:Landroid/net/Uri;

.field private shCallback:Landroid/view/SurfaceHolder$Callback;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->context:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Landroid/media/MediaPlayer;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->listener:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;->INSTANCE:Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$laefClBEawoCyWBm_8BfCXpIFwc;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 94
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$MediaPlayerLoader$XjhNSihGh4P2MygMHkimutu1XYI;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/loader/-$$Lambda$MediaPlayerLoader$XjhNSihGh4P2MygMHkimutu1XYI;-><init>(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 97
    new-instance v0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$1;-><init>(Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->shCallback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method


# virtual methods
.method public adjustWh()V
    .locals 8

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getDisplayMetrics(Landroid/content/res/Resources;)[I

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustWh -> showSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MediaPlayerLoader"

    invoke-static {v4, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    aget v1, v0, v2

    aget v0, v0, v3

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v7, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    invoke-static {v1, v0, v5, v6, v7}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->getRealShowWH(IIIII)[I

    move-result-object v0

    .line 42
    aget v1, v0, v2

    .line 43
    aget v0, v0, v3

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustWh -> videoShowWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; videoShowHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->stop()V

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 84
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->context:Landroid/content/Context;

    .line 85
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public isCurrentMedia(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaUri"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPlaying()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$init$0$MediaPlayerLoader(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->listener:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;->onMediaStop()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->stop()V

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public setDataSourceAndSurfaceView(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Landroid/view/SurfaceView;Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "surfaceView",
            "listener"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 52
    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaUri:Landroid/net/Uri;

    .line 53
    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->listener:Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader$OnMediaStateChangedListener;

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->reset()V

    .line 56
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaUri:Landroid/net/Uri;

    invoke-virtual {p1, p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->surfaceView:Landroid/view/SurfaceView;

    .line 63
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->shCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->surfaceView:Landroid/view/SurfaceView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "MediaPlayerLoader"

    const-string p2, "\u8bbe\u7f6e\u89c6\u9891\u8d44\u6e90\u5931\u8d25\uff01"

    .line 59
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/MediaPlayerLoader;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
