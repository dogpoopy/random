.class Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$3;
.super Ljava/lang/Object;
.source "CatchMediaView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->playScaleAnimation(Landroid/view/View;FFLandroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 265
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$3;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$1002(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;F)F

    :cond_1
    return-void
.end method
