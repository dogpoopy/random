.class public interface abstract Lcom/netease/cc/screen_record/codec/encoder/FrameListener;
.super Ljava/lang/Object;
.source "FrameListener.java"


# virtual methods
.method public abstract frameAvailable(ILandroid/graphics/SurfaceTexture;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onSurfaceCreated()V
.end method

.method public abstract pauseEncode()V
.end method

.method public abstract release()V
.end method

.method public abstract resumeEncode()V
.end method

.method public abstract setSharedContext(Landroid/opengl/EGLContext;)V
.end method

.method public abstract startEncode()V
.end method

.method public abstract startEncode(IIIIF)Z
.end method

.method public abstract stopEncode()V
.end method
