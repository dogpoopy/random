.class Lcom/netease/cc/videoedit/transcoder/Transcoder$1$1;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/cc/videoedit/transcoder/Transcoder$1;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$1;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1$1;->this$1:Lcom/netease/cc/videoedit/transcoder/Transcoder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(D)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1$1;->this$1:Lcom/netease/cc/videoedit/transcoder/Transcoder$1;

    iget-object v0, v0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeProgress(D)V

    return-void
.end method
