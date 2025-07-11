.class public Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 14
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 106
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public makeCurrent()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 95
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 96
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 97
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 99
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 100
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 101
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method public setPresentationTimeUs(J)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-string p1, "eglPresentationTimeANDROID"

    .line 70
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public setup(Landroid/view/Surface;)V
    .locals 12

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 20
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 24
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    new-array v5, v1, [I

    .line 29
    fill-array-data v5, :array_0

    new-array v1, v3, [Landroid/opengl/EGLConfig;

    new-array v10, v3, [I

    .line 40
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v1

    const/4 v11, 0x0

    move-object v7, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 45
    fill-array-data v2, :array_1

    .line 49
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v1, v0

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v6, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const-string v2, "eglCreateContext"

    .line 51
    invoke-direct {p0, v2}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_1

    new-array v2, v3, [I

    const/16 v3, 0x3038

    aput v3, v2, v0

    .line 60
    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v1, v0

    invoke-static {v3, v1, p1, v2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreateWindowSurface"

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to initialize EGL14"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to get EGL14 display"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public swapBuffer()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string v0, "eglSwapBuffers"

    .line 75
    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->checkEglError(Ljava/lang/String;)V

    return-void
.end method
