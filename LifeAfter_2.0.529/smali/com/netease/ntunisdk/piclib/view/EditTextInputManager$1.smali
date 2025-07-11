.class Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;
.super Ljava/lang/Object;
.source "EditTextInputManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;->this$0:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;->this$0:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->access$000(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;->this$0:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->access$102(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;I)I

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;->this$0:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->access$200(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->check(I)V

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;->this$0:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->access$300(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->check(I)V

    return-void
.end method
