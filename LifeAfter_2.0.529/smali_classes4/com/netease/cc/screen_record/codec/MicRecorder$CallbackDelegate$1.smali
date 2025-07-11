.class Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

.field final synthetic val$encoder:Lcom/netease/cc/screen_record/codec/Encoder;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->val$encoder:Lcom/netease/cc/screen_record/codec/Encoder;

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->val$encoder:Lcom/netease/cc/screen_record/codec/Encoder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;->val$exception:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
