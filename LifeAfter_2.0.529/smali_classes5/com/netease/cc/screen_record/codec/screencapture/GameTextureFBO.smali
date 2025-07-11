.class public Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;
.super Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;
.source "GameTextureFBO.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[CCR]-SFB"


# instance fields
.field private mBaseTextureArr:[F

.field protected mExternalOESTexture:I

.field protected mFBTexture:Ljava/nio/FloatBuffer;

.field protected mFBVertex:Ljava/nio/FloatBuffer;

.field private final mFragmentShader2D:Ljava/lang/String;

.field private mFrameBuffers:[I

.field private mGLProgId:I

.field protected mGlLutTexture:I

.field protected mIntensity:I

.field private mIsInitialized:Z

.field private mIsLut:Z

.field private final mLutFragmentShader2D:Ljava/lang/String;

.field private mRecordRect:Landroid/graphics/RectF;

.field private mTextureArr:[F

.field private mTextureIds:[I

.field private mTextureTransformMatrixLocation:I

.field private final mVertexShader:Ljava/lang/String;

.field protected maPositionHandle:I

.field protected maTextureHandle:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;-><init>(II)V

    const-string p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n\t   textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    .line 25
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexShader:Ljava/lang/String;

    const-string p1, "precision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 36
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFragmentShader2D:Ljava/lang/String;

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform float intensity;\nvoid main()\n{\n     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\t\tfloat blueColor = textureColor.b * 63.0;\n\t\tvec2 quad1;\n\t\tquad1.y = floor(floor(blueColor) / 8.0);\n\t\tquad1.x = floor(blueColor) - (quad1.y * 8.0);\n\t\tvec2 quad2;\n\t\tquad2.y = floor(ceil(blueColor) / 8.0);\n\t\tquad2.x = ceil(blueColor) - (quad2.y * 8.0);\n\t\tvec2 texPos1;\n\t\ttexPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec2 texPos2;\n\t\ttexPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n\t\tvec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n\t\tvec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n\t\tgl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n}"

    .line 44
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mLutFragmentShader2D:Ljava/lang/String;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    const/4 p2, 0x0

    .line 74
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    .line 75
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    .line 77
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    .line 84
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    .line 85
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    .line 86
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    .line 87
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    .line 88
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    .line 90
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsLut:Z

    const-string p1, "[CCR]-SFB"

    const-string p2, "Game Texture FBO"

    .line 95
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private BindFrameBuffer()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 373
    aget v0, v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_0
    return-void
.end method

.method private initFrameBuffer(II)V
    .locals 12

    .line 256
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    if-eq v0, p2, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->destroyFramebuffers()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-nez v0, :cond_2

    .line 260
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    .line 261
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 262
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    new-array v1, v0, [I

    .line 263
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    .line 265
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 266
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 267
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v6, p1

    move v7, p2

    .line 268
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2800

    const p2, 0x46180400    # 9729.0f

    .line 269
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 270
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const p2, 0x47012f00    # 33071.0f

    .line 271
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 272
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 274
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    aget p1, p1, v2

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    .line 275
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    aget v0, v0, v2

    invoke-static {p2, p1, v1, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 277
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 278
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_2
    return-void
.end method

.method private updateTextureArray()[F
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 285
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 288
    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v2, v4

    :goto_1
    aput v2, v3, v1

    goto :goto_3

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v2, v4

    :goto_2
    aput v2, v3, v1

    .line 292
    :goto_3
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[rect] update Texture Arr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]-SFB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    return-object v0

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    return-object v0
.end method


# virtual methods
.method public captureFrame(F)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 327
    iget v9, v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    .line 328
    iget v10, v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    const/4 v11, 0x0

    if-lez v9, :cond_1

    if-gtz v10, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->BindFrameBuffer()V

    mul-int v2, v9, v10

    .line 332
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v4, v9

    move v5, v10

    move-object v8, v12

    .line 333
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 334
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 335
    invoke-virtual {v12}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    invoke-static {v3}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const v3, 0x8d40

    const/4 v4, 0x0

    .line 336
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-eqz v2, :cond_1

    .line 341
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    neg-float v4, v1

    .line 344
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 345
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object v13, v2

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 346
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-object v11
.end method

.method public destroyFramebuffers()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 354
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 355
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 358
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 359
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    :cond_1
    const/4 v0, -0x1

    .line 361
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    .line 362
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    return-void
.end method

.method public getTextureId()I
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureIds:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 367
    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method init(ZZ)V
    .locals 4

    .line 100
    iput-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsLut:Z

    .line 102
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    if-eqz p1, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object p1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    .line 107
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    sget-object p2, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    sget-object p1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 110
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    .line 111
    invoke-static {}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->getRotation()Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    move-result-object p1

    .line 112
    invoke-static {}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->getIsHFlip()Z

    move-result v0

    .line 113
    invoke-static {}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->getIsVFlip()Z

    move-result v1

    .line 111
    invoke-static {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->getRotation(Lcom/netease/cc/screen_record/codec/encoder/Rotation;ZZ)[F

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    array-length v1, v0

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->updateTextureArray()[F

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsLut:Z

    const-string p2, "inputImageTexture"

    const-string v0, "textureTransform"

    const-string v1, "inputTextureCoordinate"

    const-string v2, "position"

    const-string v3, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n\t   textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    if-nez p1, :cond_1

    const-string p1, "precision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 118
    invoke-static {v3, p1}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    .line 119
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    .line 120
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    .line 121
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrixLocation:I

    .line 122
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mExternalOESTexture:I

    goto :goto_0

    :cond_1
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform float intensity;\nvoid main()\n{\n     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\t\tfloat blueColor = textureColor.b * 63.0;\n\t\tvec2 quad1;\n\t\tquad1.y = floor(floor(blueColor) / 8.0);\n\t\tquad1.x = floor(blueColor) - (quad1.y * 8.0);\n\t\tvec2 quad2;\n\t\tquad2.y = floor(ceil(blueColor) / 8.0);\n\t\tquad2.x = ceil(blueColor) - (quad2.y * 8.0);\n\t\tvec2 texPos1;\n\t\ttexPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec2 texPos2;\n\t\ttexPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n\t\tvec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n\t\tvec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n\t\tgl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n}"

    .line 124
    invoke-static {v3, p1}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    .line 125
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    .line 126
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    .line 127
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrixLocation:I

    .line 128
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mExternalOESTexture:I

    .line 129
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    const-string p2, "inputImageTexture2"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGlLutTexture:I

    .line 130
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    const-string p2, "intensity"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIntensity:I

    :goto_0
    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrix:[F

    .line 392
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    .line 393
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->resetOpenGLData()V

    return-void
.end method

.method renderToTexture(IIFZ)V
    .locals 8

    .line 137
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsLut:Z

    invoke-virtual {p0, p4, v0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->init(ZZ)V

    :cond_0
    const v0, 0x8d40

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 141
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-nez p4, :cond_1

    .line 142
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    invoke-direct {p0, p4, v2}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->initFrameBuffer(II)V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->BindFrameBuffer()V

    .line 144
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-nez p4, :cond_3

    return-void

    .line 147
    :cond_2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 149
    :cond_3
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    if-eqz p4, :cond_4

    .line 150
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    invoke-virtual {p4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    .line 155
    :cond_4
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    if-eqz p4, :cond_5

    .line 156
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 157
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    invoke-virtual {p4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    .line 161
    :cond_5
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    invoke-static {v1, v1, p4, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 162
    invoke-static {v2, v2, v2, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p4, 0x4000

    .line 163
    invoke-static {p4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 165
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 166
    iget-boolean p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    if-nez p4, :cond_6

    return-void

    .line 169
    :cond_6
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 171
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 172
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 174
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 175
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrix:[F

    invoke-static {p4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 176
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrixLocation:I

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrix:[F

    const/4 v3, 0x1

    invoke-static {p4, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p4, -0x1

    const/16 v2, 0xde1

    if-eq p1, p4, :cond_7

    const v4, 0x84c0

    .line 179
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 180
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 181
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mExternalOESTexture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_7
    if-eq p2, p4, :cond_8

    const p1, 0x84c1

    .line 184
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 185
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGlLutTexture:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 187
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIntensity:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_8
    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 190
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 191
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 192
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 193
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 194
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method renderToTexture(IZ)V
    .locals 8

    .line 199
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 200
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsLut:Z

    invoke-virtual {p0, p2, v0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->init(ZZ)V

    :cond_0
    const v0, 0x8d40

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 203
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-nez p2, :cond_1

    .line 204
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    invoke-direct {p0, p2, v2}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->initFrameBuffer(II)V

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->BindFrameBuffer()V

    .line 206
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFrameBuffers:[I

    if-nez p2, :cond_3

    return-void

    .line 209
    :cond_2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 211
    :cond_3
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    if-eqz p2, :cond_4

    .line 212
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mVertexArr:[F

    .line 217
    :cond_4
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    if-eqz p2, :cond_5

    .line 218
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    .line 223
    :cond_5
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mOutputHeight:I

    invoke-static {v1, v1, p2, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 224
    invoke-static {v2, v2, v2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 225
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 227
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 228
    iget-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    if-nez p2, :cond_6

    return-void

    .line 231
    :cond_6
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 233
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 234
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 236
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 237
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrix:[F

    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 238
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrixLocation:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureTransformMatrix:[F

    invoke-static {p2, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p2, -0x1

    const/16 v2, 0xde1

    if-eq p1, p2, :cond_7

    const p2, 0x84c0

    .line 241
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 242
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 243
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mExternalOESTexture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_7
    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 246
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 247
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 248
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 249
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 250
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public resetOpenGLData()V
    .locals 2

    .line 377
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 379
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mGLProgId:I

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->destroyFramebuffers()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    .line 385
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    .line 387
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mIsInitialized:Z

    return-void
.end method

.method setRecordRect(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    .line 304
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mBaseTextureArr:[F

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 305
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    .line 306
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mTextureArr:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 312
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 316
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 317
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 318
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 319
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;->updateTextureArray()[F

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[rect] set Rect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]-SFB"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
