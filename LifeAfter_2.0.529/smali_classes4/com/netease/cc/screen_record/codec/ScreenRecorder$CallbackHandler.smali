.class Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;
.super Landroid/os/Handler;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    .line 199
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "path"

    .line 238
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 242
    :goto_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    move-result-object p1

    sget v1, Lcom/netease/cc/screen_record/codec/Constants;->EVENT_COVER_RESULT:I

    invoke-interface {p1, v1, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;->onEvent(ILorg/json/JSONObject;)V

    goto :goto_2

    .line 207
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$000(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    .line 208
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;->onStart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 213
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$200(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$300(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    .line 219
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$400(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->mCacheBuffer:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_2
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$500(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)I

    move-result v1

    .line 223
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$600(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V

    .line 225
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 226
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    if-gez v1, :cond_5

    .line 228
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Error in mux caching"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CallbackHandler;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->access$100(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;->onStop(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 223
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void
.end method
