.class Lcom/netease/download/config/ConfigProxy$1;
.super Ljava/lang/Object;
.source "ConfigProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/config/ConfigProxy;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/config/ConfigProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dnsIpNodeUnitList:Ljava/util/ArrayList;

.field final synthetic val$projectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/download/config/ConfigProxy;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netease/download/config/ConfigProxy$1;->this$0:Lcom/netease/download/config/ConfigProxy;

    iput-object p2, p0, Lcom/netease/download/config/ConfigProxy$1;->val$dnsIpNodeUnitList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/netease/download/config/ConfigProxy$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/netease/download/config/ConfigProxy$1;->val$projectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 172
    new-instance v0, Lcom/netease/download/config/ConfigCore;

    invoke-direct {v0}, Lcom/netease/download/config/ConfigCore;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/netease/download/config/ConfigProxy$1;->val$dnsIpNodeUnitList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, "ConfigProxy"

    const/16 v4, 0xb

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/netease/download/config/ConfigProxy$1;->val$dnsIpNodeUnitList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/download/dns/DnsParams$Unit;

    .line 176
    iget-object v5, v5, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfigProxy [downloadConfig] dnsIpNodeUnitList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/netease/download/config/ConfigProxy$1;->val$dnsIpNodeUnitList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Lcom/netease/download/config/ConfigProxy$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/netease/download/config/ConfigProxy$1;->val$projectId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v4, v2}, Lcom/netease/download/config/ConfigCore;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    if-nez v4, :cond_0

    .line 193
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfigProxy [downloadConfig] \u8bf7\u6c42\u914d\u7f6e\u6587\u4ef6\uff0c\u91c7\u7528dns\u8bf7\u6c42\uff0c\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    if-eqz v4, :cond_a

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfigProxy [downloadConfig] \u8bf7\u6c42\u914d\u7f6e\u6587\u4ef6\uff0c\u91c7\u7528lvsip, \u662f\u5426\u521b\u5efa\u8fc7ip="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/lvsip/Lvsip;->isCteateIp()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->isCteateIp()Z

    move-result v1

    if-nez v1, :cond_8

    .line 200
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConfigProxy [downloadConfig] \u6d77\u5916="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "1"

    .line 202
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "0"

    .line 204
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "-1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 207
    :cond_5
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    sget-object v5, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/netease/download/lvsip/Lvsip;->init([Ljava/lang/String;)V

    goto :goto_2

    .line 205
    :cond_6
    :goto_0
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    sget-object v5, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/netease/download/lvsip/Lvsip;->init([Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :cond_7
    :goto_1
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    sget-object v5, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/netease/download/lvsip/Lvsip;->init([Ljava/lang/String;)V

    .line 210
    :goto_2
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->createLvsip()V

    .line 213
    :cond_8
    :goto_3
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 214
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/lvsip/Lvsip;->getNewIpFromArray()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConfigProxy [downloadConfig] \u8bf7\u6c42\u914d\u7f6e\u6587\u4ef6\u73af\u8282--\u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 217
    iget-object v4, p0, Lcom/netease/download/config/ConfigProxy$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/download/config/ConfigProxy$1;->val$projectId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/netease/download/config/ConfigCore;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method
