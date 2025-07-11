.class Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;
.super Ljava/lang/Object;
.source "EditMediaFragment.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 208
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;I)V

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$100(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->sysStatusController:Lcom/netease/ntunisdk/piclib/utils/SysStatusController;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/utils/SysStatusController;->refreshCurrentState()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/EditMediaFragment;I)V

    return-void
.end method
