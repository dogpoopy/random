.class Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    .line 67
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    return v1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->access$200(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->val$onClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 77
    return v1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->val$textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;->this$0:Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->access$100(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    return v1
.end method
