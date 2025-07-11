.class public Lcom/netease/mrzhna/MovieView;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_control_mode:I

.field private m_dialog:Lcom/netease/mrzhna/MovieDialog;

.field private m_need_play:Z

.field private m_player:Landroid/media/MediaPlayer;

.field private m_pos:I

.field private m_prepared:Z

.field private m_view:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_dialog:Lcom/netease/mrzhna/MovieDialog;

    .line 52
    iput-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    .line 53
    iput-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_view:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/netease/mrzhna/MovieView;->m_pos:I

    .line 56
    iput-boolean v0, p0, Lcom/netease/mrzhna/MovieView;->m_prepared:Z

    .line 57
    iput-boolean v0, p0, Lcom/netease/mrzhna/MovieView;->m_need_play:Z

    .line 61
    iput-object p1, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/MovieView;)Lcom/netease/mrzhna/MovieDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/mrzhna/MovieView;->m_dialog:Lcom/netease/mrzhna/MovieDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/mrzhna/MovieView;Lcom/netease/mrzhna/MovieDialog;)Lcom/netease/mrzhna/MovieDialog;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netease/mrzhna/MovieView;->m_dialog:Lcom/netease/mrzhna/MovieDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/MovieView;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/mrzhna/MovieView;)Landroid/view/SurfaceView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/mrzhna/MovieView;->m_view:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/mrzhna/MovieView;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netease/mrzhna/MovieView;->m_view:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/mrzhna/MovieView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/mrzhna/MovieView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/mrzhna/MovieView;->m_pos:I

    return p0
.end method

.method static synthetic access$402(Lcom/netease/mrzhna/MovieView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/netease/mrzhna/MovieView;->m_pos:I

    return p1
.end method

.method static synthetic access$500(Lcom/netease/mrzhna/MovieView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/netease/mrzhna/MovieView;->m_prepared:Z

    return p0
.end method

.method static synthetic access$600(Lcom/netease/mrzhna/MovieView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/mrzhna/MovieView;->m_control_mode:I

    return p0
.end method


# virtual methods
.method public initialize()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_view:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 73
    :cond_0
    new-instance v0, Lcom/netease/mrzhna/MovieView$1;

    invoke-direct {v0, p0, p0}, Lcom/netease/mrzhna/MovieView$1;-><init>(Lcom/netease/mrzhna/MovieView;Lcom/netease/mrzhna/MovieView;)V

    .line 92
    iget-object v2, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    .line 94
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 95
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 96
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 97
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 98
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 100
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_view:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/netease/mrzhna/MovieView;->stopVideo()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 173
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/netease/mrzhna/MovieView;->m_prepared:Z

    .line 177
    iget-boolean p1, p0, Lcom/netease/mrzhna/MovieView;->m_need_play:Z

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/netease/mrzhna/MovieView;->resumeVideo()V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 186
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 197
    iget p1, p0, Lcom/netease/mrzhna/MovieView;->m_control_mode:I

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/netease/mrzhna/MovieView;->stopVideo()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/netease/mrzhna/MovieView;->m_need_play:Z

    .line 229
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mrzhna/MovieView$5;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/MovieView$5;-><init>(Lcom/netease/mrzhna/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;IIIIIIIZ)V
    .locals 12

    move-object v9, p0

    move v0, p3

    .line 265
    iput v0, v9, Lcom/netease/mrzhna/MovieView;->m_control_mode:I

    .line 266
    iget-object v10, v9, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    new-instance v11, Lcom/netease/mrzhna/MovieView$7;

    move-object v0, v11

    move-object v1, p0

    move v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/netease/mrzhna/MovieView$7;-><init>(Lcom/netease/mrzhna/MovieView;IIIIIZLjava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeVideo()V
    .locals 2

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/netease/mrzhna/MovieView;->m_need_play:Z

    .line 245
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mrzhna/MovieView$6;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/MovieView$6;-><init>(Lcom/netease/mrzhna/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 8

    .line 152
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_dialog:Lcom/netease/mrzhna/MovieDialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    new-instance v7, Lcom/netease/mrzhna/MovieView$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netease/mrzhna/MovieView$3;-><init>(Lcom/netease/mrzhna/MovieView;IIII)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mrzhna/MovieView$2;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/MovieView$2;-><init>(Lcom/netease/mrzhna/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopVideo()V
    .locals 2

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/netease/mrzhna/MovieView;->m_need_play:Z

    .line 207
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mrzhna/MovieView$4;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/MovieView$4;-><init>(Lcom/netease/mrzhna/MovieView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnStopVideoCallBack()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 111
    iget-object p2, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public uninitialize()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView;->m_dialog:Lcom/netease/mrzhna/MovieDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieDialog;->dismiss()V

    .line 126
    iput-object v1, p0, Lcom/netease/mrzhna/MovieView;->m_dialog:Lcom/netease/mrzhna/MovieDialog;

    .line 129
    :cond_0
    iput-object v1, p0, Lcom/netease/mrzhna/MovieView;->m_view:Landroid/view/SurfaceView;

    return-void
.end method
