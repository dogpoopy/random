.class Lcom/netease/pushservice/PushServiceHelper$2;
.super Ljava/lang/Object;
.source "PushServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushservice/PushServiceHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pushservice/PushServiceHelper;


# direct methods
.method constructor <init>(Lcom/netease/pushservice/PushServiceHelper;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/netease/pushservice/PushServiceHelper$2;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 640
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop+++"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$2;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pushservice/Network;->stop()V

    .line 642
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop---"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
