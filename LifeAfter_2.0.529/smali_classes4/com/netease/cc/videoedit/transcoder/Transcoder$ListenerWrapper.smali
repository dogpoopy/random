.class Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/TranscoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/Transcoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/netease/cc/videoedit/transcoder/TranscoderListener;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 196
    iput-object p2, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mListener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/netease/cc/videoedit/transcoder/TranscoderListener;Lcom/netease/cc/videoedit/transcoder/Transcoder$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;-><init>(Landroid/os/Handler;Lcom/netease/cc/videoedit/transcoder/TranscoderListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;)Lcom/netease/cc/videoedit/transcoder/TranscoderListener;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mListener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    return-object p0
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$1;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTranscodeCompleted(I)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$2;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$3;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTranscodeProgress(D)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper$4;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
