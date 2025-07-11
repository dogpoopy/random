.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol()Z

    move-result v0

    const-string v1, "no need showCompactView "

    const-string v2, "M"

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->loadLocalProtocolFromFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->checkNeedShowProtocolWhenLaunch()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$702(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z

    return-void

    :catch_0
    move-exception v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$400(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;)Z

    .line 162
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;)V

    invoke-static {v1, v0, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V

    return-void
.end method
