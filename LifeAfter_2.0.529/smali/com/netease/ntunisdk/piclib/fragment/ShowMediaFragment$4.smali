.class Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShowMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->initBucket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 459
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$900(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$1000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
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

    .line 464
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$900(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$1000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
