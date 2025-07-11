.class Lcom/CCMsgSdk/CCMsgController$3;
.super Lcom/JavaWebsocket/client/WebSocketClient;
.source "CCMsgController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/CCMsgSdk/CCMsgController;->createWebSocketClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/CCMsgSdk/CCMsgController;


# direct methods
.method constructor <init>(Lcom/CCMsgSdk/CCMsgController;Ljava/net/URI;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-direct {p0, p2}, Lcom/JavaWebsocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    const-string p3, "[CCMsgSdk]"

    const-string v0, "onClose"

    .line 360
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p3, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p3}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object p3

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    .line 362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "code %d, reason %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 363
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "[CCMsgSdk]"

    const-string v1, "onError"

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v0}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v0}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 354
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onOpen(Lcom/JavaWebsocket/handshake/ServerHandshake;)V
    .locals 1

    const-string p1, "[CCMsgSdk]"

    const-string v0, "onOpen"

    .line 346
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$3;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
