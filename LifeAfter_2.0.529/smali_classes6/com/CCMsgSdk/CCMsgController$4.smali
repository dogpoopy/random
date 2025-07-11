.class Lcom/CCMsgSdk/CCMsgController$4;
.super Ljava/lang/Object;
.source "CCMsgController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/CCMsgSdk/CCMsgController;->startHearBeat(Z)V
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

    .line 426
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController$4;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 429
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cmd"

    const-string v2, "heartbeat"

    .line 431
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$4;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$1500(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$4;->this$0:Lcom/CCMsgSdk/CCMsgController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/CCMsgSdk/CCMsgController;->access$600(Lcom/CCMsgSdk/CCMsgController;Z)V

    return-void

    :catch_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
