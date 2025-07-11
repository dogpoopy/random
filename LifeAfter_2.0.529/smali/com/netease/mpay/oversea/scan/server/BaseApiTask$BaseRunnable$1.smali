.class Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;
.super Ljava/lang/Object;
.source "BaseApiTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;

.field final synthetic val$result:Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;->this$1:Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;->val$result:Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;->this$1:Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->dismissProgress()V

    .line 108
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;->this$1:Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;->val$result:Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;->this$1:Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;

    iget-object v2, v2, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v2, v2, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mCallback:Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->onPostPerform(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    return-void
.end method
