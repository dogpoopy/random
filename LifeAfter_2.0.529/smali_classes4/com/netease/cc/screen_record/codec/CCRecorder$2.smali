.class Lcom/netease/cc/screen_record/codec/CCRecorder$2;
.super Ljava/lang/Object;
.source "CCRecorder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/RecorderUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/CCRecorder;->enableLog(ZLjava/lang/String;)V
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

    .line 652
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$2;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 660
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 675
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 665
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 655
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 670
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
