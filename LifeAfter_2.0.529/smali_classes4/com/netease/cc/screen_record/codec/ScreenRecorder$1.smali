.class Lcom/netease/cc/screen_record/codec/ScreenRecorder$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "projection callback onStop(interrupted by others)"

    .line 67
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->quit()V

    return-void
.end method
