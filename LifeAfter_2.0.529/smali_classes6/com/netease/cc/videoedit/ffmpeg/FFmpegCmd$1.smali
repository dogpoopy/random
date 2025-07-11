.class final Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;
.super Ljava/lang/Object;
.source "FFmpegCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->execute([Ljava/lang/String;Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commands:[Ljava/lang/String;

.field final synthetic val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;[Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;->val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    iput-object p2, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;->val$commands:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;->val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;->onBegin()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;->val$commands:[Ljava/lang/String;

    invoke-static {}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->access$000()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->access$100([Ljava/lang/String;I)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;->val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v1, v0, v2}, Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;->onEnd(ILjava/lang/String;)V

    .line 58
    :cond_1
    invoke-static {v2}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->access$202(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;)Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    return-void
.end method
