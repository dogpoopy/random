.class final Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;
.super Ljava/lang/Object;
.source "FFmpegCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->execute(Ljava/util/List;Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commands:Ljava/util/List;

.field final synthetic val$logLevel:I

.field final synthetic val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;Ljava/util/List;I)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    iput-object p2, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$commands:Ljava/util/List;

    iput p3, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$logLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;->onBegin()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 92
    iget v3, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$logLevel:I

    invoke-static {v2, v3}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->access$100([Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FFmpegCmd"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;->val$onHandleListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v0, v2, v1}, Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;->onEnd(ILjava/lang/String;)V

    .line 99
    :cond_2
    invoke-static {v1}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->access$202(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;)Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    return-void
.end method
