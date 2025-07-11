.class Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

.field final synthetic val$encoder:Lcom/netease/cc/screen_record/codec/Encoder;

.field final synthetic val$error_code:I


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/Encoder;I)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->val$encoder:Lcom/netease/cc/screen_record/codec/Encoder;

    iput p3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->val$error_code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->val$encoder:Lcom/netease/cc/screen_record/codec/Encoder;

    iget v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;->val$error_code:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V

    :cond_0
    return-void
.end method
