.class Lcom/netease/pushservice/PushServiceHelper$3;
.super Ljava/lang/Object;
.source "PushServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushservice/PushServiceHelper;->connect(Z)V
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

    .line 669
    iput-object p1, p0, Lcom/netease/pushservice/PushServiceHelper$3;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$3;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/Network;->setEnable(Z)V

    .line 673
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$3;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper;->getNetwork()Lcom/netease/pushservice/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pushservice/PushServiceHelper$3;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-static {v1}, Lcom/netease/pushservice/PushServiceHelper;->access$200(Lcom/netease/pushservice/PushServiceHelper;)Lcom/netease/pushservice/PushService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/pushservice/Network;->connectAuto(Landroid/content/Context;)V

    return-void
.end method
