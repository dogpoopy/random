.class Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->onTranscodeProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;D)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    iput-wide p2, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->access$400(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;)Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;->val$progress:D

    invoke-interface {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeProgress(D)V

    return-void
.end method
