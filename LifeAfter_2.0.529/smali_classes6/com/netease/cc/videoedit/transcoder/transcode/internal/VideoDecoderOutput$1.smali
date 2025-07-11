.class Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;
.super Ljava/lang/Object;
.source "VideoDecoderOutput.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;->this$0:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->access$000()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object p1

    const-string v0, "New frame available"

    invoke-virtual {p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;->this$0:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->access$100(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;->this$0:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->access$200(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;->this$0:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->access$202(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;Z)Z

    .line 63
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput$1;->this$0:Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;->access$100(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoDecoderOutput;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit p1

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
