.class Lcom/CCMsgSdk/CCMsgController$1;
.super Ljava/lang/Object;
.source "CCMsgController.java"

# interfaces
.implements Lcom/CCMsgSdk/AddressManager$AddressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/CCMsgSdk/CCMsgController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/CCMsgSdk/CCMsgController;


# direct methods
.method constructor <init>(Lcom/CCMsgSdk/CCMsgController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAddress(Z)V
    .locals 2

    const-string v0, "[CCMsgSdk]"

    const-string v1, "onGetAddress"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$000(Lcom/CCMsgSdk/CCMsgController;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v1

    iget v1, v1, Lcom/CCMsgSdk/RegistInfo;->context:I

    invoke-virtual {p1, v0, v1}, Lcom/CCMsgSdk/CCMsgController;->regist(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "http_error"

    .line 78
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$1;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v0}, Lcom/CCMsgSdk/CCMsgController;->access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
