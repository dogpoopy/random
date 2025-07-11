.class Lcom/netease/unisdk/gmbridge5/GmBridge$1;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->setGenTokenResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 93
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$002(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)Z

    .line 97
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->val$json:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->setGenTokenResponse(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$002(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)Z

    .line 99
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$200(Lcom/netease/unisdk/gmbridge5/GmBridge;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 100
    new-instance v0, Lcom/netease/unisdk/gmbridge5/GmBridge$1$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/GmBridge$1$1;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge$1;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$200(Lcom/netease/unisdk/gmbridge5/GmBridge;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->showExpandLayout()V

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$202(Lcom/netease/unisdk/gmbridge5/GmBridge;I)I

    .line 112
    return-void
.end method
