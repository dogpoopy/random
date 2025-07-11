.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnVideoDecoderSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 0

    .line 641
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnVideoDecoderSelected(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$002(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    const-string p2, "avcodec"

    .line 648
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 649
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget-object p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    invoke-static {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    .line 650
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 651
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    new-instance p2, Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2$1;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2$1;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;)V

    invoke-direct {p2, v0, v1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;-><init>(Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;)V

    invoke-static {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    .line 657
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->start()V

    goto :goto_0

    :cond_1
    const-string p2, "MediaCodec"

    .line 660
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 661
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    sget-object p2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->HARDWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    invoke-static {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$102(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    .line 662
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 663
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$800(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result p2

    invoke-static {p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$702(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 666
    :cond_2
    :goto_0
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sel decoder "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$2;->this$0:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "27905af5"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
