.class Lcom/netease/cc/videoedit/transcoder/Transcoder$1;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder;->transcode(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder;

.field final synthetic val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

.field final synthetic val$options:Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/Transcoder;Lcom/netease/cc/videoedit/transcoder/TranscoderListener;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->this$0:Lcom/netease/cc/videoedit/transcoder/Transcoder;

    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    iput-object p3, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$options:Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 145
    :try_start_0
    new-instance v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;

    new-instance v2, Lcom/netease/cc/videoedit/transcoder/Transcoder$1$1;

    invoke-direct {v2, p0}, Lcom/netease/cc/videoedit/transcoder/Transcoder$1$1;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$1;)V

    invoke-direct {v1, v2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;-><init>(Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;)V

    .line 151
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$options:Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;

    invoke-virtual {v1, v2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->transcode(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)V

    .line 152
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeCompleted(I)V
    :try_end_0
    .catch Lcom/netease/cc/videoedit/transcoder/internal/ValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 161
    instance-of v2, v1, Ljava/lang/InterruptedException;

    move-object v3, v1

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 162
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 164
    instance-of v4, v3, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 167
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->access$300()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object v0

    const-string v1, "Transcode canceled."

    invoke-virtual {v0, v1, v3}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeCanceled()V

    goto :goto_1

    .line 170
    :cond_2
    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 171
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->access$300()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object v0

    const-string v2, "Fatal error while transcoding, this might be invalid format or bug in engine or Android."

    invoke-virtual {v0, v2, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    invoke-interface {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeFailed(Ljava/lang/Throwable;)V

    .line 173
    throw v1

    .line 176
    :cond_3
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->access$300()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object v0

    const-string v2, "Unexpected error while transcoding"

    invoke-virtual {v0, v2, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    invoke-interface {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeFailed(Ljava/lang/Throwable;)V

    .line 178
    throw v1

    .line 155
    :catch_0
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->access$300()Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    move-result-object v1

    const-string v2, "Validator has decided that the input is fine and transcoding is not necessary."

    invoke-virtual {v1, v2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;->val$listenerWrapper:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    invoke-interface {v1, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderListener;->onTranscodeCompleted(I)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
