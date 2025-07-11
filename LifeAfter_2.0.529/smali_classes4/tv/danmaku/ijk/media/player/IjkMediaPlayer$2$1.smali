.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2$1;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->OnVideoDecoderSelected(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;)V
    .locals 0

    .line 651
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedrawTexture(II)V
    .locals 1

    .line 654
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2$1;->this$1:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->redrawTexture(II)V

    return-void
.end method
