.class public Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;
.super Ljava/lang/Object;
.source "CCVImageRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;
    }
.end annotation


# instance fields
.field private mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    invoke-direct {v0, p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;-><init>(Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    .line 48
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/4 v1, -0x1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_framebuffer:I

    return-void
.end method


# virtual methods
.method public PopAttrib()V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0xb90

    if-lez v0, :cond_0

    .line 209
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/16 v3, 0xbe2

    if-lez v0, :cond_1

    .line 214
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 215
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_blend_src_factor_alpha:I

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v3, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_blend_dest_factor_alpha:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    and-int/lit8 v0, v0, 0x4

    const/16 v3, 0xc11

    if-lez v0, :cond_2

    .line 221
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_2

    .line 223
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 225
    :goto_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0xb44

    if-lez v0, :cond_3

    .line 226
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_3

    .line 228
    :cond_3
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 230
    :goto_3
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    and-int/lit8 v0, v0, 0x10

    const/16 v3, 0xb71

    if-lez v0, :cond_4

    .line 231
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_4

    .line 233
    :cond_4
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 235
    :goto_4
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    and-int/lit8 v0, v0, 0x20

    const v3, 0x8037

    if-lez v0, :cond_5

    .line 236
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_5

    .line 238
    :cond_5
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 241
    :goto_5
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_depth_func:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 242
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-boolean v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_depth_mask:Z

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 244
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_color_mask:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_color_mask:[I

    aget v4, v4, v1

    if-lez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v5, v5, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_color_mask:[I

    aget v5, v5, v2

    if-lez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_color_mask:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    if-lez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_9
    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 248
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_scissor:[I

    aget v0, v0, v3

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_scissor:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v5, v5, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_scissor:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v6, v6, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_scissor:[I

    aget v6, v6, v7

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 251
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    aget v0, v0, v3

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v5, v5, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    aget v5, v5, v2

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 253
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_func:I

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_ref:I

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v5, v5, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_mask:I

    invoke-static {v0, v4, v5}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const v0, 0x8d40

    .line 256
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_framebuffer:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 258
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_renderbuffer:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsRenderbuffer(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x8d41

    .line 259
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_renderbuffer:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    :cond_a
    const/16 v0, 0xde1

    .line 262
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_texture:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 263
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_programe:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x8892

    .line 264
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_vbo:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8893

    .line 265
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v4, v4, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_eabo:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 268
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_viewport:[I

    aget v0, v0, v3

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v3, v3, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_viewport:[I

    aget v1, v3, v1

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v3, v3, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_viewport:[I

    aget v2, v3, v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v3, v3, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_viewport:[I

    aget v3, v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public PushAttrib()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    const/16 v0, 0xb90

    .line 158
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    or-int/2addr v3, v2

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    const/16 v3, 0xb94

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    aput v3, v0, v1

    .line 163
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    const/16 v3, 0xb95

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    aput v3, v0, v2

    .line 164
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    const/16 v3, 0xb96

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 165
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v3, 0xb92

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_func:I

    .line 166
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v3, 0xb97

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_ref:I

    .line 167
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v3, 0xb93

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_mask:I

    const/16 v0, 0xbe2

    .line 169
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    .line 171
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v3, 0x80cb

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_blend_src_factor_alpha:I

    .line 172
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v3, 0x80ca

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_blend_dest_factor_alpha:I

    :cond_1
    const/16 v0, 0xc11

    .line 175
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v3, 0xc10

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerArrayVal(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_scissor:[I

    const/16 v0, 0xb44

    .line 181
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    :cond_3
    const/16 v0, 0xb71

    .line 185
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    :cond_4
    const v0, 0x8037

    .line 189
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_render_state:I

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v3, 0xb74

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_depth_func:I

    .line 194
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v3, 0xb72

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_depth_mask:Z

    .line 195
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v1, 0xc23

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerArrayVal(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_color_mask:[I

    .line 197
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v1, 0x8069

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_texture:I

    .line 198
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v1, 0x8ca6

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_framebuffer:I

    .line 199
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v1, 0x8ca7

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_renderbuffer:I

    .line 200
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v1, 0x8b8d

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_programe:I

    .line 201
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v1, 0x8894

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_vbo:I

    .line 202
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const v1, 0x8895

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerVal(I)I

    move-result v1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_eabo:I

    .line 204
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/16 v1, 0xba2

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVGLUtils;->GetGLIntergerArrayVal(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_viewport:[I

    return-void
.end method

.method public Render(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;)V
    .locals 0

    .line 133
    invoke-virtual {p3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->SetDrawAttrib()V

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->Bind()I

    :cond_0
    const/4 p2, 0x0

    .line 139
    invoke-virtual {p3, p2, p2}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->LoadProgram(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/16 p2, 0xde1

    .line 141
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 p3, 0x2600

    .line 143
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 145
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const p3, 0x812f

    .line 147
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 149
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 152
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public Render(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->Render(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Z)V

    return-void
.end method

.method public Render(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Z)V
    .locals 0

    .line 99
    invoke-virtual {p3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->SetDrawAttrib()V

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->Bind()I

    :cond_0
    if-eqz p6, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p6, 0x0

    .line 106
    invoke-static {p6, p6, p6, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 107
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 110
    :cond_1
    invoke-virtual {p3, p4, p5}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->LoadProgram(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    if-eq p1, p2, :cond_2

    const p2, 0x84c0

    .line 113
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 114
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_2
    const/16 p1, 0x2801

    const/16 p2, 0x2600

    .line 117
    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 119
    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const p2, 0x812f

    .line 121
    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 123
    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    const/4 p4, 0x0

    .line 126
    invoke-static {p1, p4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 127
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public Render(Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 60
    invoke-virtual {p3}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->SetDrawAttrib()V

    const v0, 0x84c0

    .line 62
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->Bind()I

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;->BindTexture()V

    const/16 p1, 0x2801

    const/16 p2, 0x2600

    const/16 v0, 0xde1

    .line 71
    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 73
    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const p2, 0x812f

    .line 75
    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 77
    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    invoke-virtual {p3, p4, p5}, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->LoadProgram(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 82
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public RenderWaterMark(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->Render(ILcom/netease/cc/screen_record/codec/screencapture/CCVImageFBO;Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Z)V

    return-void
.end method

.method public Reset()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    iget v0, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_framebuffer:I

    if-ltz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->PopAttrib()V

    .line 54
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;->mGLArrib:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;

    const/4 v1, -0x1

    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_bind_framebuffer:I

    :cond_0
    return-void
.end method
