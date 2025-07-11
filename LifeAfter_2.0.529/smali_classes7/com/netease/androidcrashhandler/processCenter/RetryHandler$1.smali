.class Lcom/netease/androidcrashhandler/processCenter/RetryHandler$1;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/processCenter/RetryHandler;->sendRetryTaskDelay(Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/processCenter/RetryHandler;

.field final synthetic val$retryTask:Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/processCenter/RetryHandler;Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler$1;->this$0:Lcom/netease/androidcrashhandler/processCenter/RetryHandler;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler$1;->val$retryTask:Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/RetryHandler$1;->val$retryTask:Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/processCenter/RetryHandler$RetryTask;->run()V

    return-void
.end method
