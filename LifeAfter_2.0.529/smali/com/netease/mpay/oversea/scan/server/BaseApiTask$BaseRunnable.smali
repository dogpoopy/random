.class Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;
.super Ljava/lang/Object;
.source "BaseApiTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/server/BaseApiTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;Lcom/netease/mpay/oversea/scan/server/BaseApiTask$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;-><init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->runInBackground()Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v1, v1, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;->this$0:Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    iget-object v1, v1, Lcom/netease/mpay/oversea/scan/server/BaseApiTask;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable$1;-><init>(Lcom/netease/mpay/oversea/scan/server/BaseApiTask$BaseRunnable;Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
