.class Lcom/netease/unisdk/gmbridge5/GmBridge$2;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field final synthetic val$hasCutout:Z

.field final synthetic val$refer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 129
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$refer:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$hasCutout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$000(Lcom/netease/unisdk/gmbridge5/GmBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$refer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getWholeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$202(Lcom/netease/unisdk/gmbridge5/GmBridge;I)I

    .line 142
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$500(Lcom/netease/unisdk/gmbridge5/GmBridge;)V

    .line 143
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$600(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/ITokenRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/unisdk/gmbridge5/ITokenRequest;->doRequest()V

    goto :goto_2

    .line 145
    :cond_1
    new-instance v1, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;-><init>(Lcom/netease/unisdk/gmbridge5/GmBridge$2;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    :goto_2
    return-void
.end method
