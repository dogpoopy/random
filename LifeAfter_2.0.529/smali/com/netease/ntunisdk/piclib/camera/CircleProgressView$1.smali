.class Lcom/netease/ntunisdk/piclib/camera/CircleProgressView$1;
.super Ljava/lang/Object;
.source "CircleProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->setDuration(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->access$002(Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;F)F

    .line 67
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration -> onAnimationUpdate -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
