.class Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->onTranscodeCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

.field final synthetic val$successCode:I


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;I)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    iput p2, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;->val$successCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->access$400(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;)Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    move-result-object v0

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;->val$successCode:I

    invoke-interface {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeCompleted(I)V

    return-void
.end method
