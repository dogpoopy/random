.class Lcom/netease/cc/screen_record/codec/CCRecorder$3$1;
.super Ljava/lang/Object;
.source "CCRecorder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/CCRecorder$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/cc/screen_record/codec/CCRecorder$3;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/CCRecorder$3;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3$1;->this$1:Lcom/netease/cc/screen_record/codec/CCRecorder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartCommand()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "onstart cb"

    .line 745
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$3$1;->this$1:Lcom/netease/cc/screen_record/codec/CCRecorder$3;

    iget-object v0, v0, Lcom/netease/cc/screen_record/codec/CCRecorder$3;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$300(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    return-void
.end method
