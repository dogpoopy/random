.class Lcom/netease/pushservice/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushservice/PushService;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pushservice/PushService;


# direct methods
.method constructor <init>(Lcom/netease/pushservice/PushService;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netease/pushservice/PushService$1;->this$0:Lcom/netease/pushservice/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 233
    invoke-static {}, Lcom/netease/pushservice/PushService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop..., this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/netease/pushservice/PushService$1;->this$0:Lcom/netease/pushservice/PushService;

    invoke-static {v0}, Lcom/netease/pushservice/PushService;->access$100(Lcom/netease/pushservice/PushService;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :catch_0
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper;->stop()V

    .line 250
    iget-object v0, p0, Lcom/netease/pushservice/PushService$1;->this$0:Lcom/netease/pushservice/PushService;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushService;->stopSelf()V

    return-void
.end method
