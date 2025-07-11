.class Lcom/netease/pharos/linkcheck/ScanProxy$1;
.super Ljava/lang/Object;
.source "ScanProxy.java"

# interfaces
.implements Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/linkcheck/ScanProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/linkcheck/ScanProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ScanProxy"

    .line 70
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v1}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$000(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v1}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$000(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/linkcheck/Proxy;->getmCycleList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckCycleTypeList\u5faa\u73af debug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckCycleTypeList\u5faa\u73af="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v3}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$000(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckCycleTypeList\u5faa\u73af Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v0}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$000(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$1;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$000(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 102
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/qos/QosProxy;->clean()V

    .line 103
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/qos/QosProxy;->start_qosCore()V

    .line 105
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/linkcheck/Proxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object p1

    .line 106
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/linkcheck/Proxy;->setmPharosResultCache(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method
