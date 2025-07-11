.class public Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;
.super Ljava/lang/Object;
.source "EglContextWrapper.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final TAG:Ljava/lang/String; = "EglContextWrapper"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLContextEncoder:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

.field private mGlVersion:I

.field private mInputHeight:I

.field private mInputWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 24
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 25
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    .line 26
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mInputWidth:I

    .line 29
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mInputHeight:I

    .line 36
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mInputWidth:I

    .line 37
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mInputHeight:I

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 156
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 157
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

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    const/16 v2, 0x44

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    const/16 v3, 0xd

    new-array v5, v3, [I

    const/16 v3, 0x3024

    const/4 v12, 0x0

    aput v3, v5, v12

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v3, v5, v4

    const/16 v6, 0x3023

    const/4 v7, 0x2

    aput v6, v5, v7

    aput v3, v5, v1

    const/16 v6, 0x3022

    aput v6, v5, v0

    const/4 v0, 0x5

    aput v3, v5, v0

    const/4 v0, 0x6

    const/16 v6, 0x3021

    aput v6, v5, v0

    const/4 v0, 0x7

    aput v3, v5, v0

    const/16 v0, 0x3040

    aput v0, v5, v3

    const/16 v0, 0x9

    aput v2, v5, v0

    const/16 v0, 0xa

    const/16 v2, 0x3038

    aput v2, v5, v0

    const/16 v0, 0xb

    aput v12, v5, v0

    const/16 v0, 0xc

    aput v2, v5, v0

    and-int/2addr p1, v4

    if-eqz p1, :cond_1

    .line 206
    array-length p1, v5

    sub-int/2addr p1, v1

    const/16 v0, 0x3142

    aput v0, v5, p1

    .line 207
    array-length p1, v5

    sub-int/2addr p1, v7

    aput v4, v5, p1

    :cond_1
    new-array p1, v4, [Landroid/opengl/EGLConfig;

    new-array v10, v4, [I

    .line 211
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to find RGB8888 / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EGLConfig"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EglContextWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_2
    aget-object p1, p1, v12

    return-object p1
.end method


# virtual methods
.method public createEglSurface(Ljava/lang/Object;)V
    .locals 4

    .line 108
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 116
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreateWindowSurface"

    .line 118
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->checkEglError(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_2

    return-void

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 p1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    .line 130
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreatePbufferSurface"

    .line 132
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->checkEglError(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-object p1

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eglSetup(Landroid/opengl/EGLContext;I)V
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_6

    if-nez p1, :cond_0

    .line 50
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 54
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_5

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 58
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 66
    invoke-direct {p0, p2, v3}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v5, v3, [I

    .line 68
    fill-array-data v5, :array_0

    .line 72
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v6, v2, p1, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    .line 74
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-ne v6, v7, :cond_1

    .line 76
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 77
    iput-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 78
    iput v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mGlVersion:I

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v5, :cond_3

    .line 85
    invoke-direct {p0, p2, v1}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array v2, v3, [I

    .line 89
    fill-array-data v2, :array_1

    .line 93
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, p2, p1, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v2, "eglCreateContext"

    .line 94
    invoke-direct {p0, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->checkEglError(Ljava/lang/String;)V

    .line 95
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 96
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    .line 97
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mGlVersion:I

    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-array p1, v4, [I

    .line 102
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    const/16 v2, 0x3098

    invoke-static {p2, v1, v2, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EGLContext created, client version "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EglContextWrapper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public makeCurrent()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeCurrent(I)V
    .locals 3

    const-string v0, "eglMakeCurrent failed"

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContextEncoder:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 169
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 223
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 225
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 226
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mInputHeight:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mInputWidth:I

    .line 228
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 233
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 235
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 238
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 239
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-string p1, "eglPresentationTimeANDROID"

    .line 176
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->mEGLSurfaceEncoder:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    const-string v1, "eglSwapBuffers"

    .line 150
    invoke-direct {p0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->checkEglError(Ljava/lang/String;)V

    return v0
.end method
