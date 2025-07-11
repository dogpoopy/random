.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$700(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Z

    move-result v0

    const-string v1, "M"

    if-eqz v0, :cond_0

    const-string v0, "ShowProtocolWhenLaunch"

    .line 266
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$702(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z

    .line 269
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$800(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    :try_end_0
    .catch Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    :goto_0
    sget-object v2, Lcom/netease/ntunisdk/external/protocol/Scene;->LOGIN:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 289
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->val$uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v4}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$900(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    sget-object v2, Lcom/netease/ntunisdk/external/protocol/Scene;->SWITCH_ACCOUNT:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->val$uid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$902(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->val$uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->checkNeedShowProtocolByUid(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_2

    const-string v0, "no need showCompactView "

    .line 297
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$300(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V

    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    .line 303
    iput v3, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->acceptStatus:I

    .line 306
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;

    invoke-direct {v1, p0, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;Lcom/netease/ntunisdk/external/protocol/Scene;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v1

    .line 277
    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;->printStackTrace()V

    .line 278
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;)V

    invoke-static {v1, v0, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V

    return-void
.end method
