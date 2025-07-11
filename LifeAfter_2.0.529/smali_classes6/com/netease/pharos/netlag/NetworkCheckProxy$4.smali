.class Lcom/netease/pharos/netlag/NetworkCheckProxy$4;
.super Ljava/util/TimerTask;
.source "NetworkCheckProxy.java"


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

    .line 133
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLag repeat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$200(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$200(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLag start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$600(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Lcom/netease/pharos/netlag/NetworkCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->exec()V

    .line 145
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheckProxy$4;->this$0:Lcom/netease/pharos/netlag/NetworkCheckProxy;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->access$100(Lcom/netease/pharos/netlag/NetworkCheckProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
