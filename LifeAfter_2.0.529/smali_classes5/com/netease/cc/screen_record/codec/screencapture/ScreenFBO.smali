.class public Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;
.super Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;
.source "ScreenFBO.java"


# static fields
.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final TAG:Ljava/lang/String; = "[CCR]-SFB"


# instance fields
.field private mBaseTextureArr:[F

.field protected mExternalOESTexture:I

.field protected mFBTexture:Ljava/nio/FloatBuffer;

.field protected mFBVertex:Ljava/nio/FloatBuffer;

.field private final mFragmentShader:Ljava/lang/String;

.field private mFrameBuffers:[I

.field private mGLProgId:I

.field protected mGlLutTexture:I

.field protected mIntensity:I

.field private mIsInitialized:Z

.field private mIsLut:Z

.field private final mLutFragmentShader:Ljava/lang/String;

.field private mRecordRect:Landroid/graphics/RectF;

.field private mTextureArr:[F

.field private mTextureIds:[I

.field private mTextureTransformMatrixLocation:I

.field private final mVertexShader:Ljava/lang/String;

.field protected maPositionHandle:I

.field protected maTextureHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 73
    fill-array-data v1, :array_0

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->FULL_RECTANGLE_COORDS:[F

    new-array v0, v0, [F

    .line 80
    fill-array-data v0, :array_1

    sput-object v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->FULL_RECTANGLE_TEX_COORDS:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;-><init>(II)V

    const-string p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n\t   textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    .line 23
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexShader:Ljava/lang/String;

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 34
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFragmentShader:Ljava/lang/String;

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform float intensity;\nvoid main()\n{\n     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\t\tfloat blueColor = textureColor.b * 63.0;\n\t\tvec2 quad1;\n\t\tquad1.y = floor(floor(blueColor) / 8.0);\n\t\tquad1.x = floor(blueColor) - (quad1.y * 8.0);\n\t\tvec2 quad2;\n\t\tquad2.y = floor(ceil(blueColor) / 8.0);\n\t\tquad2.x = ceil(blueColor) - (quad2.y * 8.0);\n\t\tvec2 texPos1;\n\t\ttexPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec2 texPos2;\n\t\ttexPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n\t\tvec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n\t\tvec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n\t\tgl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n}"

    .line 44
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mLutFragmentShader:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    .line 89
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    .line 91
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    .line 98
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    .line 99
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    .line 100
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    .line 101
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    .line 102
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    .line 104
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsLut:Z

    return-void
.end method

.method private BindFrameBuffer()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 382
    aget v0, v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_0
    return-void
.end method

.method private initFrameBuffer(II)V
    .locals 12

    .line 266
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    if-eq v0, p2, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->destroyFramebuffers()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-nez v0, :cond_2

    .line 270
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    .line 271
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 272
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    new-array v1, v0, [I

    .line 273
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    .line 275
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 276
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 277
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

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

    .line 278
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2800

    const p2, 0x46180400    # 9729.0f

    .line 279
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 280
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const p2, 0x47012f00    # 33071.0f

    .line 281
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 282
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 284
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    aget p1, p1, v2

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    .line 285
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    aget v0, v0, v2

    invoke-static {p2, p1, v1, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 287
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 288
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_2
    return-void
.end method

.method private updateTextureArray()[F
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 319
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 321
    :goto_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 322
    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 323
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v2, v4

    :goto_1
    aput v2, v3, v1

    goto :goto_3

    .line 325
    :cond_1
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v2, v4

    :goto_2
    aput v2, v3, v1

    .line 326
    :goto_3
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
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

    .line 329
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    return-object v0

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    return-object v0
.end method


# virtual methods
.method public captureFrame(F)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 336
    iget v9, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    .line 337
    iget v10, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    const/4 v11, 0x0

    if-lez v9, :cond_1

    if-gtz v10, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->BindFrameBuffer()V

    mul-int v2, v9, v10

    .line 341
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v4, v9

    move v5, v10

    move-object v8, v12

    .line 342
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 343
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    invoke-virtual {v12}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    invoke-static {v3}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const v3, 0x8d40

    const/4 v4, 0x0

    .line 345
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-eqz v2, :cond_1

    .line 350
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    neg-float v4, v1

    .line 353
    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 354
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v19, 0x1

    move-object v13, v2

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 355
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-object v11
.end method

.method public destroyFramebuffers()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 363
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 364
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 367
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 368
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    :cond_1
    const/4 v0, -0x1

    .line 370
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    .line 371
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    return-void
.end method

.method public getTextureId()I
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureIds:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 376
    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method init(ZZ)V
    .locals 4

    .line 114
    iput-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsLut:Z

    .line 116
    iget-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    if-eqz p2, :cond_0

    return-void

    .line 120
    :cond_0
    sget-object p2, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    .line 121
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    sget-object p2, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    const/16 p2, 0x8

    new-array p2, p2, [F

    .line 124
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    .line 125
    sget-object p2, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    invoke-static {p2, v0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->getRotation(Lcom/netease/cc/screen_record/codec/encoder/Rotation;ZZ)[F

    move-result-object p1

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    array-length v1, p2

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->updateTextureArray()[F

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsLut:Z

    const-string p2, "inputImageTexture"

    const-string v0, "textureTransform"

    const-string v1, "inputTextureCoordinate"

    const-string v2, "position"

    const-string v3, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n\t   textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    if-nez p1, :cond_1

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 130
    invoke-static {v3, p1}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    .line 131
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    .line 132
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    .line 133
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrixLocation:I

    .line 134
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mExternalOESTexture:I

    goto :goto_0

    :cond_1
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform float intensity;\nvoid main()\n{\n     vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\t\tfloat blueColor = textureColor.b * 63.0;\n\t\tvec2 quad1;\n\t\tquad1.y = floor(floor(blueColor) / 8.0);\n\t\tquad1.x = floor(blueColor) - (quad1.y * 8.0);\n\t\tvec2 quad2;\n\t\tquad2.y = floor(ceil(blueColor) / 8.0);\n\t\tquad2.x = ceil(blueColor) - (quad2.y * 8.0);\n\t\tvec2 texPos1;\n\t\ttexPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec2 texPos2;\n\t\ttexPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n\t\ttexPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\t\tvec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n\t\tvec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n\t\tvec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n\t\tgl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n}"

    .line 136
    invoke-static {v3, p1}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    .line 137
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    .line 138
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    .line 139
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrixLocation:I

    .line 140
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mExternalOESTexture:I

    .line 141
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    const-string p2, "inputImageTexture2"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGlLutTexture:I

    .line 142
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    const-string p2, "intensity"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIntensity:I

    :goto_0
    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrix:[F

    .line 401
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    .line 402
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->resetOpenGLData()V

    return-void
.end method

.method renderToTexture(IIFZ)V
    .locals 8

    .line 149
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 150
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsLut:Z

    invoke-virtual {p0, p4, v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->init(ZZ)V

    :cond_0
    const v0, 0x8d40

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 153
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-nez p4, :cond_1

    .line 154
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    invoke-direct {p0, p4, v2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->initFrameBuffer(II)V

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->BindFrameBuffer()V

    .line 156
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-nez p4, :cond_3

    return-void

    .line 159
    :cond_2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 161
    :cond_3
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    if-eqz p4, :cond_4

    .line 162
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 163
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    invoke-virtual {p4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    .line 167
    :cond_4
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    if-eqz p4, :cond_5

    .line 168
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 169
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    invoke-virtual {p4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    .line 173
    :cond_5
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    invoke-static {v1, v1, p4, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 174
    invoke-static {v2, v2, v2, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p4, 0x4000

    .line 175
    invoke-static {p4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 177
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 178
    iget-boolean p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    if-nez p4, :cond_6

    return-void

    .line 181
    :cond_6
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 183
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 184
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 186
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 187
    iget-object p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrix:[F

    invoke-static {p4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 188
    iget p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrixLocation:I

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrix:[F

    const/4 v3, 0x1

    invoke-static {p4, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p4, 0x8d65

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    const v4, 0x84c0

    .line 191
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 192
    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 193
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mExternalOESTexture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_7
    if-eq p2, v2, :cond_8

    const p1, 0x84c1

    .line 196
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 197
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 198
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGlLutTexture:I

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 199
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIntensity:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_8
    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 202
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 203
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 204
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 205
    invoke-static {p4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 206
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method renderToTexture(IZ)V
    .locals 8

    .line 211
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 212
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsLut:Z

    invoke-virtual {p0, p2, v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->init(ZZ)V

    :cond_0
    const v0, 0x8d40

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 215
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-nez p2, :cond_1

    .line 216
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    invoke-direct {p0, p2, v2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->initFrameBuffer(II)V

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->BindFrameBuffer()V

    .line 218
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFrameBuffers:[I

    if-nez p2, :cond_3

    return-void

    .line 221
    :cond_2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 223
    :cond_3
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    if-eqz p2, :cond_4

    .line 224
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mVertexArr:[F

    .line 229
    :cond_4
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    if-eqz p2, :cond_5

    .line 230
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 231
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    .line 235
    :cond_5
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mOutputHeight:I

    invoke-static {v1, v1, p2, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 236
    invoke-static {v2, v2, v2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 237
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 239
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 240
    iget-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    if-nez p2, :cond_6

    return-void

    .line 243
    :cond_6
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 245
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 246
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 248
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 249
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrix:[F

    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 250
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrixLocation:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureTransformMatrix:[F

    invoke-static {p2, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p2, -0x1

    const v2, 0x8d65

    if-eq p1, p2, :cond_7

    const p2, 0x84c0

    .line 253
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 254
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_7
    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 257
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 258
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 259
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 260
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 261
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public resetOpenGLData()V
    .locals 2

    .line 386
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 388
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mGLProgId:I

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->destroyFramebuffers()V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBVertex:Ljava/nio/FloatBuffer;

    .line 394
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mFBTexture:Ljava/nio/FloatBuffer;

    .line 396
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mIsInitialized:Z

    return-void
.end method

.method setRecordRect(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    .line 296
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mBaseTextureArr:[F

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 297
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    .line 298
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mTextureArr:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 308
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 309
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 310
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->mRecordRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 311
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;->updateTextureArray()[F

    .line 312
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
