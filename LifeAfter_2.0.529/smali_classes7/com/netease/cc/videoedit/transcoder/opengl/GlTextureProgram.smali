.class public Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;
.super Ljava/lang/Object;
.source "GlTextureProgram.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TAG:Ljava/lang/String;

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureId:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 18
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVerticesData:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 44
    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mMVPMatrix:[F

    new-array v0, v0, [F

    .line 45
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mSTMatrix:[F

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTextureId:I

    .line 57
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 60
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mSTMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 62
    invoke-direct {p0, v0, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mProgram:I

    .line 63
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mProgram:I

    if-eqz v0, :cond_0

    const-string v2, "aPosition"

    .line 66
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maPositionHandle:I

    .line 67
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maPositionHandle:I

    invoke-direct {p0, v0, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkLocation(ILjava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maTextureHandle:I

    .line 69
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maTextureHandle:I

    invoke-direct {p0, v0, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkLocation(ILjava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->muMVPMatrixHandle:I

    .line 71
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->muMVPMatrixHandle:I

    invoke-direct {p0, v0, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkLocation(ILjava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->muSTMatrixHandle:I

    .line 73
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->muSTMatrixHandle:I

    invoke-direct {p0, v0, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkLocation(ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 75
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 76
    aget v0, v2, v1

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTextureId:I

    .line 77
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTextureId:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "glBindTexture mmTextureId"

    .line 78
    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    .line 79
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 81
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 83
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 85
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "glTexParameter"

    .line 87
    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 175
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkLocation(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in program"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 149
    invoke-direct {p0, v1, p2}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 153
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_2

    .line 155
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 158
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 159
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 160
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 161
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v2, 0x8b82

    .line 163
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 164
    aget p2, p2, v0

    if-eq p2, p1, :cond_3

    .line 165
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4

    .line 129
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 131
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 132
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v1, 0x0

    const v2, 0x8b81

    .line 134
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 135
    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 136
    sget-object p2, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;[F)V
    .locals 9

    const-string v0, "onDrawFrame start"

    .line 94
    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 97
    invoke-static {v0, p1, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 98
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 99
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "glUseProgram"

    .line 100
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    const p1, 0x84c0

    .line 101
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 102
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTextureId:I

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    iget v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maPositionHandle:I

    iget-object v7, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maPosition"

    .line 106
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 107
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray maPositionHandle"

    .line 108
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget v3, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maTextureHandle:I

    iget-object v8, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maTextureHandle"

    .line 112
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 113
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray maTextureHandle"

    .line 114
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mMVPMatrix:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 116
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->muMVPMatrixHandle:I

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 117
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->muSTMatrixHandle:I

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mSTMatrix:[F

    invoke-static {p1, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 118
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->maTextureHandle:I

    invoke-static {p1, v3, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 119
    invoke-static {p1, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 120
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->checkGlError(Ljava/lang/String;)V

    .line 121
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/GlTextureProgram;->mTextureId:I

    return v0
.end method
