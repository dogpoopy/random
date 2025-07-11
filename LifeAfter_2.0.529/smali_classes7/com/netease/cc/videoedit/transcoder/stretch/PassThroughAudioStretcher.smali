.class public Lcom/netease/cc/videoedit/transcoder/stretch/PassThroughAudioStretcher;
.super Ljava/lang/Object;
.source "PassThroughAudioStretcher.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result p3

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 17
    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of PassThroughAudioStretcher"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
