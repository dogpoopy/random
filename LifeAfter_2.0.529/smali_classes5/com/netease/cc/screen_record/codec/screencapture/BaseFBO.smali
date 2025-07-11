.class public Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;
.super Ljava/lang/Object;
.source "BaseFBO.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[CCR]-SFB"


# instance fields
.field protected mInputHeight:I

.field protected mInputWidth:I

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field protected mTextureTransformMatrix:[F

.field protected mVertexArr:[F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mInputWidth:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mInputHeight:I

    .line 25
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mOutputWidth:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mOutputHeight:I

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 26
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mTextureTransformMatrix:[F

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    .line 35
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mTextureTransformMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;-><init>()V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->setInputSize(II)V

    return-void
.end method

.method private updateVertexArr()V
    .locals 13

    .line 56
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mInputWidth:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mInputHeight:I

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mOutputWidth:I

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mOutputHeight:I

    if-eqz v3, :cond_1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 59
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v12, v0, v1

    if-lez v12, :cond_0

    div-float/2addr v1, v0

    .line 62
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    aput v11, v0, v9

    neg-float v12, v1

    .line 63
    aput v12, v0, v8

    .line 64
    aput v10, v0, v7

    .line 65
    aput v12, v0, v6

    .line 66
    aput v11, v0, v5

    .line 67
    aput v1, v0, v4

    .line 68
    aput v10, v0, v3

    .line 69
    aput v1, v0, v2

    goto :goto_0

    :cond_0
    div-float/2addr v0, v1

    .line 72
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    neg-float v12, v0

    aput v12, v1, v9

    .line 73
    aput v11, v1, v8

    .line 74
    aput v0, v1, v7

    .line 75
    aput v11, v1, v6

    .line 76
    aput v12, v1, v5

    .line 77
    aput v10, v1, v4

    .line 78
    aput v0, v1, v3

    .line 79
    aput v10, v1, v2

    :goto_0
    const-string v0, "vertex:\n"

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    aget v0, v0, v9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mVertexArr:[F

    add-int/lit8 v2, v9, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public captureFrame(F)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroyFramebuffers()V
    .locals 0

    return-void
.end method

.method public getTextureId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method init(ZZ)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method renderToTexture(IIFZ)V
    .locals 0

    return-void
.end method

.method renderToTexture(IZ)V
    .locals 0

    return-void
.end method

.method public resetOpenGLData()V
    .locals 0

    return-void
.end method

.method setInputSize(II)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mInputWidth:I

    .line 40
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mInputHeight:I

    .line 41
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->updateVertexArr()V

    return-void
.end method

.method setOutputSize(II)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mOutputWidth:I

    .line 46
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->mOutputHeight:I

    .line 47
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->updateVertexArr()V

    return-void
.end method

.method setRecordRect(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method
