.class Lcom/netease/mrzhna/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final UVS:[F

.field private VERTICE:[F

.field private m_bg_sampler:I

.field private m_pos_attrib:I

.field private m_pos_buffer:Ljava/nio/FloatBuffer;

.field private m_program:I

.field private final m_ps_code:Ljava/lang/String;

.field private m_texture:I

.field private m_uv_attrib:I

.field private m_uv_buffer:Ljava/nio/FloatBuffer;

.field private final m_vs_code:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;)V
    .locals 1

    .line 310
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array v0, p1, [F

    .line 311
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/mrzhna/Launcher$1;->VERTICE:[F

    new-array p1, p1, [F

    .line 312
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->UVS:[F

    const-string p1, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    .line 313
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_vs_code:Ljava/lang/String;

    const-string p1, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    .line 323
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_ps_code:Ljava/lang/String;

    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

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


# virtual methods
.method public loadShader(ILjava/lang/String;)I
    .locals 0

    .line 342
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 345
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 346
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 512
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v1}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v3}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {p1, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 513
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 514
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 516
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 517
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_attrib:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 518
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_uv_attrib:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 519
    iget v1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_attrib:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 520
    iget v7, p0, Lcom/netease/mrzhna/Launcher$1;->m_uv_attrib:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/netease/mrzhna/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const p1, 0x84c0

    .line 521
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 522
    iget v1, p0, Lcom/netease/mrzhna/Launcher$1;->m_texture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 523
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_bg_sampler:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 524
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    const/4 v0, 0x0

    .line 481
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/4 p1, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x4

    if-le p2, p3, :cond_0

    const/high16 v10, 0x3f8e0000    # 1.109375f

    int-to-float p2, p2

    mul-float p2, p2, v10

    const v10, 0x43b08000    # 353.0f

    mul-float p2, p2, v10

    mul-int/lit16 p3, p3, 0x429

    int-to-float p3, p3

    div-float/2addr p2, p3

    const p3, -0x40e66666    # -0.6f

    const v10, 0x43b68000    # 365.0f

    sub-float/2addr v8, p2

    mul-float v8, v8, v10

    const v10, 0x44354000    # 725.0f

    div-float/2addr v8, v10

    sub-float/2addr v8, v7

    new-array v6, v6, [F

    aput p3, v6, v0

    aput v8, v6, v5

    const v5, 0x3f026666

    aput v5, v6, v4

    aput v8, v6, v3

    aput p3, v6, v9

    add-float/2addr v8, p2

    aput v8, v6, v2

    aput v5, v6, v1

    aput v8, v6, p1

    .line 489
    iput-object v6, p0, Lcom/netease/mrzhna/Launcher$1;->VERTICE:[F

    goto :goto_0

    :cond_0
    const v10, 0x3fb684be

    int-to-float p2, p2

    mul-float p2, p2, v10

    const/high16 v10, 0x437c0000    # 252.0f

    mul-float p2, p2, v10

    mul-int/lit16 p3, p3, 0x302

    int-to-float p3, p3

    div-float/2addr p2, p3

    const p3, -0x40c2d82e

    const/high16 v10, 0x44730000    # 972.0f

    sub-float/2addr v8, p2

    mul-float v8, v8, v10

    const v10, 0x44d08000    # 1668.0f

    div-float/2addr v8, v10

    sub-float/2addr v8, v7

    new-array v6, v6, [F

    aput p3, v6, v0

    aput v8, v6, v5

    const v5, 0x3f2fe1aa

    aput v5, v6, v4

    aput v8, v6, v3

    aput p3, v6, v9

    add-float/2addr v8, p2

    aput v8, v6, v2

    aput v5, v6, v1

    aput v8, v6, p1

    .line 498
    iput-object v6, p0, Lcom/netease/mrzhna/Launcher$1;->VERTICE:[F

    .line 502
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->VERTICE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 503
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 505
    iget-object p2, p0, Lcom/netease/mrzhna/Launcher$1;->VERTICE:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 506
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/16 p1, 0x1f01

    .line 354
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const/16 p1, 0x1f00

    .line 355
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x1f03

    .line 356
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    const/16 p1, 0x1f02

    .line 357
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    move-object v4, p1

    .line 359
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object p1

    new-instance p2, Lcom/netease/mrzhna/Launcher$1$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mrzhna/Launcher$1$1;-><init>(Lcom/netease/mrzhna/Launcher$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netease/mrzhna/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    const p1, 0x8b31

    const-string p2, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/netease/mrzhna/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result p1

    const p2, 0x8b30

    const-string v0, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    .line 431
    invoke-virtual {p0, p2, v0}, Lcom/netease/mrzhna/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result p2

    .line 432
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    .line 433
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 434
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 435
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 436
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    const-string p2, "pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_attrib:I

    .line 437
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    const-string p2, "uv_in"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_uv_attrib:I

    .line 438
    iget p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_program:I

    const-string p2, "bg"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_bg_sampler:I

    const/4 p1, 0x0

    .line 440
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 442
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->UVS:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 443
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    .line 445
    iget-object p2, p0, Lcom/netease/mrzhna/Launcher$1;->UVS:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 446
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    new-array v0, p1, [I

    .line 450
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 451
    aget v0, v0, p2

    iput v0, p0, Lcom/netease/mrzhna/Launcher$1;->m_texture:I

    const/16 v1, 0xde1

    .line 452
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 453
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 454
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 455
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 456
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 457
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 458
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 459
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mrzhna/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v3}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v3

    const-string v4, "init"

    invoke-static {v3, v4}, Lcom/netease/mrzhna/Launcher;->access$700(Lcom/netease/mrzhna/Launcher;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    .line 464
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 465
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v3}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v3, p2

    .line 466
    iget-object v3, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v3}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, p1

    .line 467
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, p1, v3

    .line 468
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {p1}, Lcom/netease/mrzhna/Launcher;->access$800(Lcom/netease/mrzhna/Launcher;)[F

    move-result-object p1

    const/4 v3, 0x3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    aput v2, p1, v3

    .line 471
    :cond_1
    invoke-static {v1, p2, v0, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 472
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0xbe2

    .line 474
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 475
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method
