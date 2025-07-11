.class public Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;
.super Ljava/lang/Object;
.source "CCVProgram.java"


# static fields
.field public static CCVideo_Basic_TextureCords:[F

.field public static CCVideo_Basic_VerticesLocation:[F

.field public static CCVideo_VerticalFlip_TextureCords:[F


# instance fields
.field private final CCVideo_Basic_glFragmentShader:Ljava/lang/String;

.field private final CCVideo_Basic_glVertexShader:Ljava/lang/String;

.field private mFbTexture:Ljava/nio/FloatBuffer;

.field private mFbVertex:Ljava/nio/FloatBuffer;

.field protected mGLProgram:I

.field protected mGLUniformTexture:I

.field private mTextureBuffer:[F

.field protected mTextureCordLocation:I

.field private mVertexBuffer:[F

.field protected mVertexLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 42
    fill-array-data v1, :array_0

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_Basic_VerticesLocation:[F

    new-array v1, v0, [F

    .line 49
    fill-array-data v1, :array_1

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_Basic_TextureCords:[F

    new-array v0, v0, [F

    .line 56
    fill-array-data v0, :array_2

    sput-object v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_VerticalFlip_TextureCords:[F

    return-void

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
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
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

.method public constructor <init>()V
    .locals 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbVertex:Ljava/nio/FloatBuffer;

    .line 22
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbTexture:Ljava/nio/FloatBuffer;

    const-string v0, " attribute vec4 vertexPosition;\n attribute vec2 vertexTextureCord;\n varying vec2 textureCord;\n void main()\n {\n     gl_Position = vertexPosition;\n     textureCord = vertexTextureCord;\n }\n"

    .line 24
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_Basic_glVertexShader:Ljava/lang/String;

    const-string v0, " precision mediump float;\n uniform sampler2D sampleTexture;\n varying vec2 textureCord;\n void main()\n {\n     gl_FragColor = texture2D(sampleTexture, textureCord);\n }\n"

    .line 33
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_Basic_glFragmentShader:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 64
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexBuffer:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexBuffer:[F

    sget-object v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_Basic_VerticesLocation:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [F

    .line 68
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mTextureBuffer:[F

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 70
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mTextureBuffer:[F

    sget-object v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_Basic_TextureCords:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_1
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    return-void
.end method

.method private InitProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x8b31

    .line 124
    invoke-direct {p0, v0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->LoadShader(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    .line 125
    invoke-direct {p0, v0, p2}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->LoadShader(ILjava/lang/String;)I

    move-result p2

    .line 127
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    .line 129
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 131
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 132
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    .line 134
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 135
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    const v0, 0x8b82

    invoke-static {p2, v0, p1}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Link"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CCVideo"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    const-string p2, "vertexPosition"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexLocation:I

    .line 141
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    const-string p2, "vertexTextureCord"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mTextureCordLocation:I

    .line 142
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    const-string p2, "sampleTexture"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLUniformTexture:I

    return-void
.end method

.method private LoadShader(ILjava/lang/String;)I
    .locals 2

    .line 148
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 151
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 154
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    :cond_0
    return p1
.end method

.method private getFbTexture([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbTexture:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 173
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbTexture:Ljava/nio/FloatBuffer;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbTexture:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbTexture:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method private getFbVertex([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbVertex:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 163
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbVertex:Ljava/nio/FloatBuffer;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 167
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mFbVertex:Ljava/nio/FloatBuffer;

    return-object p1
.end method


# virtual methods
.method public GetFragmentShader()Ljava/lang/String;
    .locals 1

    const-string v0, " precision mediump float;\n uniform sampler2D sampleTexture;\n varying vec2 textureCord;\n void main()\n {\n     gl_FragColor = texture2D(sampleTexture, textureCord);\n }\n"

    return-object v0
.end method

.method public GetTextureCordLocation()[F
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mTextureBuffer:[F

    return-object v0
.end method

.method public GetVerTexData()[F
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexBuffer:[F

    return-object v0
.end method

.method public GetVerTexShader()Ljava/lang/String;
    .locals 1

    const-string v0, " attribute vec4 vertexPosition;\n attribute vec2 vertexTextureCord;\n varying vec2 textureCord;\n void main()\n {\n     gl_Position = vertexPosition;\n     textureCord = vertexTextureCord;\n }\n"

    return-object v0
.end method

.method public LoadProgram(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 107
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->GetVerTexShader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->GetFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->InitProgram(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 113
    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexLocation:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->GetVerTexData()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->getFbVertex([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    :goto_0
    move-object v6, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 114
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexLocation:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 116
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mTextureCordLocation:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->GetTextureCordLocation()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->getFbTexture([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    :goto_1
    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mTextureCordLocation:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public Reset()V
    .locals 1

    .line 75
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mGLProgram:I

    return-void
.end method

.method public SetDrawAttrib()V
    .locals 2

    const/16 v0, 0xbe2

    .line 82
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 83
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public SetVerTexData([F)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->mVertexBuffer:[F

    return-void
.end method
