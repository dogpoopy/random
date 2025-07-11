.class Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;
.super Ljava/lang/Object;
.source "ContentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->rejectProtocolConfirm(Landroid/content/Context;)V
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

    .line 312
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 317
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->dismiss()V

    .line 318
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->exit()V

    .line 319
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    return-void
.end method
