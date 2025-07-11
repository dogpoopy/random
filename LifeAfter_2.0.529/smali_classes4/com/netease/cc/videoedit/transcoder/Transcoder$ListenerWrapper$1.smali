.class Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$1;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->onTranscodeCanceled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$1;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$1;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->access$400(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;)Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeCanceled()V

    return-void
.end method
