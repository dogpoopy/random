.class public Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;
.super Lcom/netease/cc/screen_record/codec/encoder/EglSurfaceBase;
.source "WindowSurface.java"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/netease/cc/screen_record/codec/encoder/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/encoder/EglSurfaceBase;-><init>(Lcom/netease/cc/screen_record/codec/encoder/EglCore;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/screen_record/codec/encoder/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/encoder/EglSurfaceBase;-><init>(Lcom/netease/cc/screen_record/codec/encoder/EglCore;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 43
    iput-boolean p3, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mReleaseSurface:Z

    return-void
.end method


# virtual methods
.method public recreate(Lcom/netease/cc/screen_record/codec/encoder/EglCore;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mEglCore:Lcom/netease/cc/screen_record/codec/encoder/EglCore;

    .line 88
    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not yet implemented for SurfaceTexture"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->releaseEglSurface()V

    .line 62
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 63
    iget-boolean v1, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mReleaseSurface:Z

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/WindowSurface;->mSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method
