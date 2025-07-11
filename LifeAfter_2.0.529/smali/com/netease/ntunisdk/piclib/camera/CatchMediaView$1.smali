.class Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CatchMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->init()V
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

    .line 96
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 107
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "init -> onAnimationCancel"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$102(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 114
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init -> onAnimationEnd -> readyCatchVideo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$100(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$100(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$202(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;Z)Z

    .line 117
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$300(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$300(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;->onLongPressStart()V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$102(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 101
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "init -> onAnimationStart"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
