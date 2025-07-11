.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    .line 260
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 268
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->val$refreshIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 276
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 264
    return-void
.end method
