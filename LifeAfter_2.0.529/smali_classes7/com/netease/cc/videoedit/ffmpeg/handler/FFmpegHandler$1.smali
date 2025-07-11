.class Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;
.super Ljava/lang/Object;
.source "FFmpegHandler.java"

# interfaces
.implements Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->executeFFmpegCmd([Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;->this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle onBegin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;->this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-static {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$100(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2334

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnd(ILjava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handle onEnd..."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;->this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-static {p1}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$200(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;->this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-static {p1}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$100(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7dc

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;->this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-static {p1}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$100(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x458

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onProgress(II)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;->this$0:Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-static {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->access$100(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
