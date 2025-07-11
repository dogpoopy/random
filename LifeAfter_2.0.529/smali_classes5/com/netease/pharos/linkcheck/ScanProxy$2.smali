.class Lcom/netease/pharos/linkcheck/ScanProxy$2;
.super Ljava/lang/Object;
.source "ScanProxy.java"

# interfaces
.implements Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;


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

    .line 111
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/config/CheckResult;)V
    .locals 14

    const-string v0, "has report"

    const-string v1, "ScanProxy"

    .line 116
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u94fe\u8def\u63a2\u6d4b \u56de\u8c03\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u94fe\u8def\u63a2\u6d4b \u56de\u8c03\u7ed3\u679c Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    .line 123
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmExtra()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getStddev()D

    move-result-wide v4

    const-string v6, "nap_icmp"

    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "LinkCheckListener callBack Exception ="

    const/4 v8, -0x1

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    const-string v13, "icmp stddev="

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getStddev()D

    move-result-wide v4

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr v4, v11

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_1
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmAvgRtt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 138
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmLoss()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/netease/pharos/linkcheck/Result;->setmNapIcmpLost(I)V

    .line 146
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Lcom/netease/pharos/linkcheck/Result;->setmNapIcmpRtt(D)V

    .line 147
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/netease/pharos/linkcheck/Result;->setmNapIcmpDest(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/netease/pharos/linkcheck/Result;->setmNapIcmpStddev(D)V

    goto/16 :goto_3

    :cond_0
    const-string v6, "rap_icmp"

    .line 150
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr v4, v11

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :try_start_2
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmAvgRtt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 157
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmLoss()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_2
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/netease/pharos/linkcheck/Result;->setmRapIcmpLost(I)V

    .line 164
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Lcom/netease/pharos/linkcheck/Result;->setmRapIcmpRtt(D)V

    .line 165
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/netease/pharos/linkcheck/Result;->setmRapIcmpDest(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/netease/pharos/linkcheck/Result;->setmRapIcmpStddev(D)V

    goto/16 :goto_3

    :cond_1
    const-string v6, "rap_transfer"

    .line 168
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 170
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v8

    .line 171
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgSpeed()J

    move-result-wide v10

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pLoss="

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", avgTime="

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", speed="

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/netease/pharos/linkcheck/Result;->setmRapTransferFail(D)V

    .line 174
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lcom/netease/pharos/linkcheck/Result;->setmRapTransferRtt(J)V

    .line 175
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v10, v11}, Lcom/netease/pharos/linkcheck/Result;->setmRapTransferSpeed(J)V

    .line 176
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/netease/pharos/linkcheck/Result;->setmRapTransferDest(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/netease/pharos/linkcheck/Result;->setmRapTransferStddev(D)V

    goto/16 :goto_3

    :cond_2
    const-string v6, "rap_udp"

    .line 179
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 181
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v8

    .line 183
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/netease/pharos/linkcheck/Result;->setmRapUdpLost(D)V

    .line 184
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lcom/netease/pharos/linkcheck/Result;->setmRapUdpRtt(J)V

    .line 185
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/netease/pharos/linkcheck/Result;->setmRapUdpDest(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/netease/pharos/linkcheck/Result;->setmRapUdpStddev(D)V

    goto/16 :goto_3

    :cond_3
    const-string v6, "sap_transfer"

    .line 188
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 189
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 190
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v8

    .line 191
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgSpeed()J

    move-result-wide v10

    .line 192
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/netease/pharos/linkcheck/Result;->setmSapTransferFail(D)V

    .line 193
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lcom/netease/pharos/linkcheck/Result;->setmSapTransferRtt(J)V

    .line 194
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v10, v11}, Lcom/netease/pharos/linkcheck/Result;->setmSapTransferSpeed(J)V

    .line 195
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/netease/pharos/linkcheck/Result;->setmSapTransferDest(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/netease/pharos/linkcheck/Result;->setmSapTransferStddev(D)V

    goto :goto_3

    :cond_4
    const-string v6, "sap_udp"

    .line 198
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 199
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 200
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v8

    .line 202
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Lcom/netease/pharos/linkcheck/Result;->setmSapUdpLost(D)V

    .line 203
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lcom/netease/pharos/linkcheck/Result;->setmSapUdpRtt(J)V

    .line 204
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/netease/pharos/linkcheck/Result;->setmSapUdpDest(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/netease/pharos/linkcheck/Result;->setmSapUdpStddev(D)V

    goto :goto_3

    :cond_5
    const-string v3, "resolve"

    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->getmIpList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 211
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/netease/pharos/linkcheck/Result;->setmResolveHost(Ljava/util/ArrayList;)V

    .line 215
    :cond_6
    :goto_3
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/linkcheck/Proxy;->getmOnceList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 217
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v3}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$100(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 218
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v3}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$100(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_7
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u76ee\u524d\u5df2\u5355\u6b21\u63a2\u6d4b\u91cf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v3}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$100(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5355\u6b21\u63a2\u6d4b\u6a21\u5757\u603b\u91cf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkCheckListener callBack Exception2 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-eqz p1, :cond_9

    .line 230
    :try_start_4
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$100(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 232
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_8
    iget-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy$2;->this$0:Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-static {p1}, Lcom/netease/pharos/linkcheck/ScanProxy;->access$100(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 239
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/qos/QosProxy;->clean()V

    .line 240
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/qos/QosProxy;->init()V

    .line 241
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/qos/QosProxy;->start_qosCore()V

    .line 244
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pharos/linkcheck/Proxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object p1

    .line 245
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/linkcheck/Proxy;->setmPharosResultCache(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosListener Exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method
