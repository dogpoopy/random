.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

.field final synthetic val$refreshIv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 251
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->val$refreshIv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const-string v1, ""

    const-string v2, "gmbridge_refresh"

    invoke-virtual {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    new-instance v8, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-static {v0, v8}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$102(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;

    .line 259
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 260
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5$1;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 279
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->val$refreshIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->val$refreshIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$5;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 285
    :cond_1
    return-void
.end method
