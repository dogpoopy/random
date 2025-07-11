.class Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;
.super Ljava/lang/Object;
.source "CCVImageRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLAttrib"
.end annotation


# instance fields
.field public m_bind_eabo:I

.field public m_bind_framebuffer:I

.field public m_bind_renderbuffer:I

.field public m_bind_texture:I

.field public m_bind_vao:I

.field public m_bind_vbo:I

.field public m_blend_color:[I

.field public m_blend_dest_factor_alpha:I

.field public m_blend_dest_factor_rgb:I

.field public m_blend_eq_alpha:I

.field public m_blend_eq_rgb:I

.field public m_blend_src_factor_alpha:I

.field public m_blend_src_factor_rgb:I

.field public m_color_mask:[I

.field public m_depth_func:I

.field m_depth_mask:Z

.field public m_programe:I

.field public m_render_state:I

.field public m_scissor:[I

.field public m_stencil_func:I

.field public m_stencil_mask:I

.field public m_stencil_op:[I

.field public m_stencil_ref:I

.field public m_viewport:[I

.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;


# direct methods
.method public constructor <init>(Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->this$0:Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array v0, p1, [I

    .line 36
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_stencil_op:[I

    new-array v0, p1, [I

    .line 37
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_scissor:[I

    new-array v0, p1, [I

    .line 38
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_color_mask:[I

    new-array v0, p1, [I

    .line 39
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_blend_color:[I

    new-array p1, p1, [I

    .line 40
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/CCVImageRender$GLAttrib;->m_viewport:[I

    return-void
.end method
