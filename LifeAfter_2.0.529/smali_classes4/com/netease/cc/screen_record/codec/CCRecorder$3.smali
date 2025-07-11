.class Lcom/netease/cc/screen_record/codec/CCRecorder$3;
.super Ljava/lang/Object;
.source "CCRecorder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/CCRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 738
    check-cast p2, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;

    .line 739
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-virtual {p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$LocalBinder;->getService()Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$102(Lcom/netease/cc/screen_record/codec/CCRecorder;Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;)Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    .line 740
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$202(Lcom/netease/cc/screen_record/codec/CCRecorder;Z)Z

    .line 742
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$100(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    move-result-object p1

    new-instance p2, Lcom/netease/cc/screen_record/codec/CCRecorder$3$1;

    invoke-direct {p2, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$3$1;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder$3;)V

    invoke-virtual {p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->setCallback(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;)V

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$400(Lcom/netease/cc/screen_record/codec/CCRecorder;)Landroid/media/projection/MediaProjection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[CCR]"

    invoke-static {p2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$300(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$400(Lcom/netease/cc/screen_record/codec/CCRecorder;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$202(Lcom/netease/cc/screen_record/codec/CCRecorder;Z)Z

    return-void
.end method
