.class public Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;
.super Ljava/lang/Object;
.source "CCVImageFBO.java"


# instance fields
.field private mDepthName:I

.field private mFBOName:I

.field private mHeight:I

.field private mStencilName:I

.field private mTexName:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    .line 25
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mDepthName:I

    .line 26
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mStencilName:I

    .line 27
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mHeight:I

    .line 30
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mWidth:I

    return-void
.end method


# virtual methods
.method public Bind()I
    .locals 3

    .line 130
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 131
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mWidth:I

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return v2
.end method

.method public BindTexture()V
    .locals 2

    .line 137
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public Clear()V
    .locals 4

    .line 94
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 95
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 96
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 97
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 101
    :cond_0
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mDepthName:I

    if-lez v0, :cond_1

    .line 102
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 103
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mDepthName:I

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 104
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 108
    :cond_1
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mStencilName:I

    if-lez v0, :cond_2

    .line 109
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 110
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mStencilName:I

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 111
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 115
    :cond_2
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    if-lez v0, :cond_3

    .line 116
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 117
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 118
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    :cond_3
    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    .line 123
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mDepthName:I

    .line 124
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mStencilName:I

    .line 125
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    return-void
.end method

.method public FboId()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    return v0
.end method

.method public ImageHeight()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mHeight:I

    return v0
.end method

.method public ImageWidth()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mWidth:I

    return v0
.end method

.method public Init(II)I
    .locals 1

    const/16 v0, 0x1908

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->Init(III)I

    move-result p1

    return p1
.end method

.method public Init(III)I
    .locals 17

    move-object/from16 v0, p0

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->Clear()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v11, p1

    move/from16 v12, p2

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    .line 40
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v5

    const/16 v6, 0x305a

    .line 41
    invoke-interface {v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    const/16 v7, 0x3057

    .line 43
    invoke-interface {v4, v5, v6, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 44
    aget v7, v2, v3

    const/16 v8, 0x3056

    .line 46
    invoke-interface {v4, v5, v6, v8, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 47
    aget v2, v2, v3

    move v12, v2

    move v11, v7

    .line 51
    :goto_1
    iput v11, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mWidth:I

    .line 52
    iput v12, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mHeight:I

    .line 54
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 56
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    aget v2, v2, v3

    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    .line 58
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 60
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    aget v1, v1, v3

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    .line 62
    iget v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    const/16 v16, 0x0

    move/from16 v10, p3

    .line 65
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2801

    const/16 v4, 0x2601

    .line 67
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 68
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 69
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 70
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 72
    iget v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mFBOName:I

    const v4, 0x8d40

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    .line 74
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    invoke-static {v4, v1, v2, v5, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 77
    invoke-static {v4}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_2

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init FrameBuffer Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Doodle"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->Clear()V

    const/4 v1, -0x1

    return v1

    :cond_2
    return v3
.end method

.method public TextureID()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->mTexName:I

    return v0
.end method
