.class public Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;
.super Ljava/lang/Object;
.source "VideoEncoderInput.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    .line 29
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->setup(Landroid/view/Surface;)V

    .line 30
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->makeCurrent()V

    return-void
.end method


# virtual methods
.method public onFrame(J)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->setPresentationTimeUs(J)V

    .line 35
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->swapBuffer()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/opengl/EglCore;->release()V

    return-void
.end method
