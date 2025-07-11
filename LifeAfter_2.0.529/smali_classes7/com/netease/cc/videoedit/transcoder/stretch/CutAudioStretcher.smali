.class public Lcom/netease/cc/videoedit/transcoder/stretch/CutAudioStretcher;
.super Ljava/lang/Object;
.source "CutAudioStretcher.java"

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
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result p3

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result p3

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    sub-int/2addr p3, v0

    .line 19
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 21
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of CutAudioStretcher"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
