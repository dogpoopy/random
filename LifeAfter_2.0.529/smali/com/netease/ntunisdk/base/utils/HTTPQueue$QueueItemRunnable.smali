.class Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;
.super Ljava/lang/Object;
.source "HTTPQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/utils/HTTPQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueueItemRunnable"
.end annotation


# instance fields
.field public mItem:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;->mItem:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItemRunnable;->mItem:Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$900(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method
