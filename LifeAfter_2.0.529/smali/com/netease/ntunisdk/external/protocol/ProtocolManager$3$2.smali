.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$2;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    iget-object p1, p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->val$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 235
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    iget-object p2, p2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
