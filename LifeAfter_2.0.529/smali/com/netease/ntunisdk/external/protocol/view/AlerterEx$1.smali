.class Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;
.super Ljava/lang/Object;
.source "AlerterEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 55
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 57
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->dismiss()V

    .line 58
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->access$000(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->access$000(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;->onBackPressed()V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
