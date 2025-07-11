.class Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

.field final synthetic val$encoder:Lcom/netease/cc/screen_record/codec/BaseEncoder;

.field final synthetic val$format:Landroid/media/MediaFormat;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->val$encoder:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->val$format:Landroid/media/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->val$encoder:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;->val$format:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
