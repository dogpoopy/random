.class public Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;
.super Ljava/lang/Object;
.source "TextureRender.java"


# instance fields
.field private ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

.field private ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

.field private fbTexture:Ljava/nio/FloatBuffer;

.field private fbVertex:Ljava/nio/FloatBuffer;

.field private mTargetVideoHeight:I

.field private mTargetVideoWidth:I

.field private privacyBitmapHeight:I

.field private privacyBitmapWidth:I

.field private vertexArr:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    .line 16
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    .line 17
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbVertex:Ljava/nio/FloatBuffer;

    .line 18
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbTexture:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->privacyBitmapWidth:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->privacyBitmapHeight:I

    .line 20
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->mTargetVideoWidth:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->mTargetVideoHeight:I

    .line 21
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->vertexArr:[F

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbVertex:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x20

    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbVertex:Ljava/nio/FloatBuffer;

    .line 30
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbTexture:Ljava/nio/FloatBuffer;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbVertex:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbTexture:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->resetOpenGlData()V

    return-void
.end method

.method public renderToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 7

    .line 46
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->RenderWaterMark(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 p1, 0x0

    return p1
.end method

.method public resetOpenGlData()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->Reset()V

    .line 59
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccProgram:Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->Reset()V

    .line 63
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->ccRender:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    .line 66
    :cond_1
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbVertex:Ljava/nio/FloatBuffer;

    .line 67
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->fbTexture:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setOutputSize(II)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->mTargetVideoWidth:I

    .line 41
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->mTargetVideoHeight:I

    return-void
.end method
