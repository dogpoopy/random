.class Lcom/netease/pharos/netlag/NetworkCheckProxy$2;
.super Ljava/lang/Object;
.source "NetworkCheckProxy.java"

# interfaces
.implements Lcom/netease/pharos/netlag/NetworkCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/netlag/NetworkCheckProxy;->start(Lorg/json/JSONObject;Lcom/netease/pharos/OnNetLagCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/netlag/NetworkResult;)V
    .locals 2

    const-string v0, "NetLag onFinish"

    .line 88
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$000(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Lcom/netease/pharos/OnNetLagCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/pharos/netlag/NetworkResult;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/pharos/OnNetLagCallback;->onFinish(Lorg/json/JSONObject;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLag left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NetLag stop network check"

    .line 92
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$200(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$200(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 95
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$202(Lcom/netease/pharos/netlag/NetworkCheckProxy;Ljava/util/Timer;)Ljava/util/Timer;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$300(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$400(Lcom/netease/pharos/netlag/NetworkCheckProxy;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0, p1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$500(Lcom/netease/pharos/netlag/NetworkCheckProxy;Lcom/netease/pharos/netlag/NetworkResult;)V

    return-void
.end method
