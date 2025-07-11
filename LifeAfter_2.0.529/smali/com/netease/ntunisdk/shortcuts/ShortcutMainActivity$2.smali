.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->showProtocol()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

.field final synthetic val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protocol: onFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QR quickqr_main"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->removeCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$102(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;Z)Z

    .line 174
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$200(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "QR quickqr_main"

    const-string v1, "Protocol: onOpen=>onClose"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$100(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$2;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch()V

    :cond_0
    return-void
.end method
