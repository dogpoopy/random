.class public Lcom/netease/cc/videoedit/transcoder/stretch/DefaultAudioStretcher;
.super Ljava/lang/Object;
.source "DefaultAudioStretcher.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 16
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/DefaultAudioStretcher;->INSERT:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 18
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/DefaultAudioStretcher;->CUT:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/DefaultAudioStretcher;->PASSTHROUGH:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    :goto_0
    return-void
.end method
