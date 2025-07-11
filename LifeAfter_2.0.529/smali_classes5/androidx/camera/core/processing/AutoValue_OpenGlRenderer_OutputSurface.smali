.class final Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;
.super Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;
.source "AutoValue_OpenGlRenderer_OutputSurface.java"


# instance fields
.field private final eglSurface:Landroid/opengl/EGLSurface;

.field private final height:I

.field private final width:I


# direct methods
.method constructor <init>(Landroid/opengl/EGLSurface;II)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;-><init>()V

    const-string v0, "Null eglSurface"

    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->eglSurface:Landroid/opengl/EGLSurface;

    .line 25
    iput p2, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->width:I

    .line 26
    iput p3, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    check-cast p1, Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;

    .line 61
    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {p1}, Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;->getEglSurface()Landroid/opengl/EGLSurface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->width:I

    .line 62
    invoke-virtual {p1}, Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->height:I

    .line 63
    invoke-virtual {p1}, Landroidx/camera/core/processing/OpenGlRenderer$OutputSurface;->getHeight()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getEglSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->eglSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 42
    iget v0, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->height:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0}, Landroid/opengl/EGLSurface;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 74
    iget v2, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->width:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 76
    iget v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->height:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputSurface{eglSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/processing/AutoValue_OpenGlRenderer_OutputSurface;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
