.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 74
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->access$100(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method
