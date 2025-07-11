.class Lcom/netease/mrzhna/Client$3;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Client;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Client;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Client;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 543
    iput-object p1, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    iput-object p2, p0, Lcom/netease/mrzhna/Client$3;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 546
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 548
    iget-object v1, p0, Lcom/netease/mrzhna/Client$3;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 549
    iget-object v1, p0, Lcom/netease/mrzhna/Client$3;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 550
    iget-object v2, p0, Lcom/netease/mrzhna/Client$3;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 551
    iget-object v3, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v3}, Lcom/netease/mrzhna/Client;->access$100(Lcom/netease/mrzhna/Client;)I

    move-result v3

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v3}, Lcom/netease/mrzhna/Client;->access$200(Lcom/netease/mrzhna/Client;)I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 568
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardShown(I)V

    .line 569
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Client;->access$302(Lcom/netease/mrzhna/Client;Z)Z

    goto :goto_1

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$300(Lcom/netease/mrzhna/Client;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$400(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/InputView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$400(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mrzhna/InputView;->isBorderless()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$400(Lcom/netease/mrzhna/Client;)Lcom/netease/mrzhna/InputView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mrzhna/InputView;->inputFinish(Z)V

    .line 578
    :cond_2
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnVirtualKeyboardHidden()V

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Client;->access$302(Lcom/netease/mrzhna/Client;Z)Z

    .line 581
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$500(Lcom/netease/mrzhna/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0}, Lcom/netease/mrzhna/Client;->access$500(Lcom/netease/mrzhna/Client;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    goto :goto_1

    .line 553
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0, v2}, Lcom/netease/mrzhna/Client;->access$102(Lcom/netease/mrzhna/Client;I)I

    .line 554
    iget-object v0, p0, Lcom/netease/mrzhna/Client$3;->this$0:Lcom/netease/mrzhna/Client;

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Client;->access$202(Lcom/netease/mrzhna/Client;I)I

    .line 555
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnWindowSizeChanged()V

    :cond_5
    :goto_1
    return-void
.end method
