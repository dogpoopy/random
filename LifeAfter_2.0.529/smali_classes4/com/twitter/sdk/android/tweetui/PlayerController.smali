.class Lcom/twitter/sdk/android/tweetui/PlayerController;
.super Ljava/lang/Object;
.source "PlayerController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerController"


# instance fields
.field final callToActionView:Landroid/widget/TextView;

.field final callback:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

.field isPlaying:Z

.field final rootView:Landroid/view/View;

.field seekPosition:I

.field final videoControlView:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

.field final videoProgressView:Landroid/widget/ProgressBar;

.field final videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->isPlaying:Z

    .line 45
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->rootView:Landroid/view/View;

    .line 46
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    .line 47
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->video_control_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoControlView:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .line 48
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->video_progress_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoProgressView:Landroid/widget/ProgressBar;

    .line 49
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->call_to_action_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callToActionView:Landroid/widget/TextView;

    .line 50
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callback:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/VideoView;Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->isPlaying:Z

    .line 57
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->rootView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    .line 59
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoControlView:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    .line 60
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoProgressView:Landroid/widget/ProgressBar;

    .line 61
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callToActionView:Landroid/widget/TextView;

    .line 62
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callback:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->stopPlayback()V

    return-void
.end method

.method onPause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->isPlaying:Z

    .line 111
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->seekPosition:I

    .line 112
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->pause()V

    return-void
.end method

.method onResume()V
    .locals 2

    .line 100
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->seekPosition:I

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->seekTo(I)V

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->start()V

    .line 105
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoControlView:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->update()V

    :cond_1
    return-void
.end method

.method prepare(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V
    .locals 3

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpCallToAction(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V

    .line 68
    iget-boolean v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->looping:Z

    iget-boolean v1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->showVideoControls:Z

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpMediaControl(ZZ)V

    .line 69
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callback:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    .line 70
    invoke-static {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;->createFromView(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/PlayerController$1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/PlayerController$1;-><init>(Lcom/twitter/sdk/android/tweetui/PlayerController;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 78
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/PlayerController$2;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/PlayerController$2;-><init>(Lcom/twitter/sdk/android/tweetui/PlayerController;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 91
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-boolean p1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->looping:Z

    invoke-virtual {v1, v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setVideoURI(Landroid/net/Uri;Z)V

    .line 93
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "PlayerController"

    const-string v2, "Error occurred during video playback"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method setUpCallToAction(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V
    .locals 2

    .line 146
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callToActionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callToActionView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;->callToActionUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpCallToActionListener(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpRootViewOnClickListener()V

    :cond_0
    return-void
.end method

.method setUpCallToActionListener(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->callToActionView:Landroid/widget/TextView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/PlayerController$4;

    invoke-direct {v1, p0, p1}, Lcom/twitter/sdk/android/tweetui/PlayerController$4;-><init>(Lcom/twitter/sdk/android/tweetui/PlayerController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setUpLoopControl()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoControlView:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/PlayerController$3;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/PlayerController$3;-><init>(Lcom/twitter/sdk/android/tweetui/PlayerController;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setUpMediaControl()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoView:Lcom/twitter/sdk/android/tweetui/internal/VideoView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoControlView:Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/VideoView;->setMediaController(Lcom/twitter/sdk/android/tweetui/internal/VideoControlView;)V

    return-void
.end method

.method setUpMediaControl(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpLoopControl()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpMediaControl()V

    :goto_0
    return-void
.end method

.method setUpRootViewOnClickListener()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/PlayerController;->rootView:Landroid/view/View;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/PlayerController$5;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/PlayerController$5;-><init>(Lcom/twitter/sdk/android/tweetui/PlayerController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
