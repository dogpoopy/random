.class Lcom/CCMsgSdk/CCMsgController$2;
.super Landroid/os/Handler;
.source "CCMsgController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/CCMsgSdk/CCMsgController;->createHandler()V
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

    .line 182
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "groups"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 278
    :pswitch_0
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/CCMsgSdk/CCMsgController;->access$900(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v0}, Lcom/CCMsgSdk/CCMsgController;->access$1400(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/SubscribeInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/CCMsgSdk/SubscribeInfo;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 261
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 263
    iget-object v3, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v3}, Lcom/CCMsgSdk/CCMsgController;->access$1400(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/SubscribeInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/CCMsgSdk/SubscribeInfo;->removeFromJSONArray(Lorg/json/JSONArray;)V

    .line 265
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 267
    :try_start_0
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    const-string v1, "unsub"

    invoke-static {v0, v1, p1, v3}, Lcom/CCMsgSdk/CCMsgController;->access$1100(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 273
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$1400(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/SubscribeInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/CCMsgSdk/SubscribeInfo;->mSubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 274
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v2}, Lcom/CCMsgSdk/CCMsgController;->access$502(Lcom/CCMsgSdk/CCMsgController;Z)Z

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 237
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 238
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 240
    iget-object v2, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v2}, Lcom/CCMsgSdk/CCMsgController;->access$1400(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/SubscribeInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/CCMsgSdk/SubscribeInfo;->appendFromJSONArray(Lorg/json/JSONArray;)V

    .line 241
    iget-object v2, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v2}, Lcom/CCMsgSdk/CCMsgController;->access$1400(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/SubscribeInfo;

    move-result-object v2

    iput p1, v2, Lcom/CCMsgSdk/SubscribeInfo;->context:I

    .line 243
    iget-object v2, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v2}, Lcom/CCMsgSdk/CCMsgController;->access$000(Lcom/CCMsgSdk/CCMsgController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 246
    :try_start_1
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    const-string v1, "sub"

    invoke-static {v0, v1, p1, v2}, Lcom/CCMsgSdk/CCMsgController;->access$1100(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    .line 254
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v1

    iget v1, v1, Lcom/CCMsgSdk/RegistInfo;->context:I

    invoke-virtual {p1, v0, v1}, Lcom/CCMsgSdk/CCMsgController;->regist(Lorg/json/JSONObject;I)V

    goto/16 :goto_1

    .line 221
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 222
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 223
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    .line 224
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v1

    iput p1, v1, Lcom/CCMsgSdk/RegistInfo;->context:I

    .line 225
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v1}, Lcom/CCMsgSdk/CCMsgController;->access$000(Lcom/CCMsgSdk/CCMsgController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    const-string v2, "regist"

    invoke-static {v1, v2, p1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$1100(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$1200(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/AddressManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/CCMsgSdk/AddressManager;->addressListEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 230
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$1200(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/AddressManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/CCMsgSdk/AddressManager;->queryAddressList()V

    return-void

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$1300(Lcom/CCMsgSdk/CCMsgController;)V

    goto/16 :goto_1

    .line 213
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 215
    :try_start_2
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v0, p1}, Lcom/CCMsgSdk/CCMsgController;->access$1000(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServerMessage exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCMsgSdk]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    const-string p1, "DISCONNECT"

    goto :goto_0

    :cond_4
    const-string p1, "CONNECT_ERROR"

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$700(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v2}, Lcom/CCMsgSdk/CCMsgController;->access$002(Lcom/CCMsgSdk/CCMsgController;Z)Z

    .line 205
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/CCMsgSdk/CCMsgController;->access$802(Lcom/CCMsgSdk/CCMsgController;Lcom/JavaWebsocket/client/WebSocketClient;)Lcom/JavaWebsocket/client/WebSocketClient;

    .line 206
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v2}, Lcom/CCMsgSdk/CCMsgController;->access$600(Lcom/CCMsgSdk/CCMsgController;Z)V

    .line 207
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$500(Lcom/CCMsgSdk/CCMsgController;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 208
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$900(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :pswitch_6
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$002(Lcom/CCMsgSdk/CCMsgController;Z)Z

    .line 192
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v2}, Lcom/CCMsgSdk/CCMsgController;->access$402(Lcom/CCMsgSdk/CCMsgController;I)I

    .line 193
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$502(Lcom/CCMsgSdk/CCMsgController;Z)Z

    .line 194
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    .line 195
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/CCMsgSdk/RegistInfo;->mInfo:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {v2}, Lcom/CCMsgSdk/CCMsgController;->access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;

    move-result-object v2

    iget v2, v2, Lcom/CCMsgSdk/RegistInfo;->context:I

    invoke-virtual {p1, v1, v2}, Lcom/CCMsgSdk/CCMsgController;->regist(Lorg/json/JSONObject;I)V

    .line 197
    :cond_5
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController$2;->this$0:Lcom/CCMsgSdk/CCMsgController;

    invoke-static {p1, v0}, Lcom/CCMsgSdk/CCMsgController;->access$600(Lcom/CCMsgSdk/CCMsgController;Z)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
