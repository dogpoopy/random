.class Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy$1;
.super Ljava/lang/Object;
.source "MessageProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->storageMessageContextInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy$1;->this$0:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->access$000(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;I)Z

    .line 68
    invoke-static {}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageProxy [storageMessageContextInfo] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
