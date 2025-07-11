.class Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;
.super Ljava/lang/Object;
.source "CheckHighSpeedListCore.java"

# interfaces
.implements Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/qos/CheckHighSpeedListCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/config/CheckResult;)V
    .locals 6

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckHighSpeedList \u52a0\u901f\u5217\u8868UDP \u56de\u8c03\u7ed3\u679c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighSpeedListCore"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    const-wide/16 v4, 0x320

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$000(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {p1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$108(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CheckHighSpeedList UDP mHighSpeedIpCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$200(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$100(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {p1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$200(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v0}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$100(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 82
    iget-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {p1}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$300(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)I

    move-result p1

    .line 84
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/pharos/qos/CheckHighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    invoke-static {v2}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;->access$000(Lcom/netease/pharos/qos/CheckHighSpeedListCore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->setHighSpeedUdpResult(Ljava/util/ArrayList;)V

    .line 85
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u9ad8\u901f\u5217\u8868 \u6700\u7ec8\u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 93
    invoke-virtual {v0, p1}, Lcom/netease/pharos/PharosListener;->onPharosServer(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string p1, "qosResult is null"

    .line 96
    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
