.class Lcom/netease/mpay/oversea/auth2/AuthUtils$1;
.super Ljava/lang/Object;
.source "AuthUtils.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth2/AuthUtils;->showProtocol(Landroid/app/Activity;Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field final synthetic val$listener:Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthUtils$1;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/mpay/oversea/auth2/AuthUtils$1;->val$listener:Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protocol: onFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth_main"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthUtils$1;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->removeCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthUtils$1;->val$instance:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->setCallback(Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;)V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthUtils$1;->val$listener:Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/auth2/AuthUtils$OnProtocolFinishListener;->onProtocolFinish()V

    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "auth_main"

    const-string v1, "Protocol: onOpen=>onClose"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
