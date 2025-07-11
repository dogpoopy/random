.class Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;
.super Ljava/lang/Object;
.source "ContentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setDialogOnKeyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 118
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const-string p2, "D"

    const-string v0, "protocol dialog onKey back1"

    .line 120
    invoke-static {p2, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->isSubProtocol()Z

    move-result v0

    const-string v1, "protocol dialog onKey back2"

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    if-eqz p2, :cond_3

    .line 128
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$402(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 129
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getViewStyle()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$502(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;I)I

    .line 130
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getView()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$600(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$700(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return p3

    .line 135
    :cond_0
    invoke-static {p2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$900(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Landroid/content/Context;)V

    return p3

    .line 143
    :cond_1
    invoke-static {p2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$500(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)I

    move-result p2

    if-ne p3, p2, :cond_2

    .line 145
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->dismiss()V

    .line 146
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->exit()V

    .line 147
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$900(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Landroid/content/Context;)V

    :goto_0
    return p3

    :cond_3
    return p1
.end method
