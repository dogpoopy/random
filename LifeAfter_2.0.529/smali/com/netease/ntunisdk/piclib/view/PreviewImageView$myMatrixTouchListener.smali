.class Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PreviewImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/view/PreviewImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myMatrixTouchListener"
.end annotation


# instance fields
.field public listener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;

.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    .line 284
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$000(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 300
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 301
    aget v0, v0, v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)[F

    move-result-object v2

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$200(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 304
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)[F

    move-result-object v0

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)[F

    move-result-object v3

    aget v1, v3, v1

    div-float v1, v2, v1

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)[F

    move-result-object v3

    const/4 v4, 0x4

    aget v3, v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 311
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->postInvalidate()V

    goto :goto_1

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/PreviewImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->access$200(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 293
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 321
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->listener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;->onSingleTapUp()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setListener(Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->listener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;

    return-void
.end method
