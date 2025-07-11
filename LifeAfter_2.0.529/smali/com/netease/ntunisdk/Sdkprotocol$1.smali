.class Lcom/netease/ntunisdk/Sdkprotocol$1;
.super Ljava/lang/Object;
.source "Sdkprotocol.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/Sdkprotocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/Sdkprotocol;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/Sdkprotocol;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish, code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK protocol"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 44
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->protocolFinish(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/netease/ntunisdk/Sdkprotocol$1;->this$0:Lcom/netease/ntunisdk/Sdkprotocol;

    invoke-static {p1}, Lcom/netease/ntunisdk/Sdkprotocol;->access$000(Lcom/netease/ntunisdk/Sdkprotocol;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->killProcess(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 3

    const-string v0, "UniSDK protocol"

    const-string v1, "onOpen"

    .line 52
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USER_COMPACT_OPEN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method
