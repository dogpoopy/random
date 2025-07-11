.class public Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;
.super Ljava/lang/Object;
.source "MediaCodecBuffers.java"


# instance fields
.field private final mInputBuffers:[Ljava/nio/ByteBuffer;

.field private final mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mInputBuffers:[Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method


# virtual methods
.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p1
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public onOutputBuffersChanged()V
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/MediaCodecBuffers;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
