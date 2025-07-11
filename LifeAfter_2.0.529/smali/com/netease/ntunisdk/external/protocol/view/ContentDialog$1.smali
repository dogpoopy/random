.class Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;
.super Ljava/lang/Object;
.source "ContentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->onViewCreate()V
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

    .line 101
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 105
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onOpen()V

    return-void
.end method
