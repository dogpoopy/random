.class Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;
.super Ljava/lang/Object;
.source "EditMediaFragment.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->createNewMatrixImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public lastDrawing:Z

.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->lastDrawing:Z

    return-void
.end method


# virtual methods
.method public EditTextCallBack(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "color"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->setText(Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->editTextInputManager:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->setColor(I)V

    .line 515
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    iget p1, p1, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->currentEditState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;I)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;I)V

    :goto_0
    return-void
.end method

.method public callback(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawing"
        }
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->lastDrawing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 506
    :cond_0
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->lastDrawing:Z

    .line 507
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$600(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setEditText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "TU"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$702(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;Lcom/netease/ntunisdk/piclib/unit/TextUnit;)Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    return-void
.end method

.method public setUndoEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$4;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->ivDrawRevoke:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
