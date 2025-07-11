.class Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;
.super Ljava/lang/Object;
.source "Soft2TextureRender.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/Soft2TextureRender;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 86
    :pswitch_0
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$000(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sw draw handler. release EGL."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;->release()V

    .line 89
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1, v1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$202(Ltv/danmaku/ijk/media/player/Soft2TextureRender;Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    goto/16 :goto_0

    .line 73
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 74
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    .line 75
    invoke-static {v1, v1, v0, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 76
    invoke-static {v3, v4, v4, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v3, 0x4000

    .line 77
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    const v3, 0x8d40

    .line 78
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 79
    iget-object v4, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$300(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v4}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$300(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;

    move-result-object v4

    invoke-interface {v4, v0, p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender$Callback;->onRedrawTexture(II)V

    .line 81
    :cond_0
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 82
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;->swapSurfaceBuffers()Z

    goto :goto_0

    .line 59
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 60
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 61
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v3}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$000(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw draw handler. init EGL ctx with w/h "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v3}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$100(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-nez v3, :cond_1

    .line 63
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$000(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sw draw handler. surface texture is null. fail to setup EGL."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    new-instance v4, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    invoke-direct {v4}, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;-><init>()V

    invoke-static {v3, v4}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$202(Ltv/danmaku/ijk/media/player/Soft2TextureRender;Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    .line 67
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v3}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;->eglSetup(Landroid/opengl/EGLContext;I)V

    .line 68
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$100(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 69
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object p1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$100(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;->createEglSurface(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/Soft2TextureRender$1;->this$0:Ltv/danmaku/ijk/media/player/Soft2TextureRender;

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/Soft2TextureRender;->access$200(Ltv/danmaku/ijk/media/player/Soft2TextureRender;)Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/egl/EglContextWrapper;->makeCurrent()V

    :cond_2
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
