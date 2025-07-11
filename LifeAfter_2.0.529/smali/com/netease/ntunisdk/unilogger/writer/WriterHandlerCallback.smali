.class public Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;
.super Ljava/lang/Object;
.source "WriterHandlerCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private file:Ljava/io/File;

.field private has:Z

.field private sink:Lcom/netease/ntunisdk/okio/BufferedSink;

.field private start:Z

.field private unitName:Ljava/lang/String;

.field private unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->has:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 26
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    .line 27
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->start:Z

    .line 33
    iput-object p2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    .line 34
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->addNewFile()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    return-object p0
.end method

.method private addNewFile()V
    .locals 2

    .line 104
    sget-object v0, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerLogDirPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->createFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriterHandlerCallback [addNewFile] unitName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    return-void
.end method

.method private createFileName()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->createUnitResultTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ".log"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [createFileName] unitName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->showUnitResult(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUnitResultTag()Ljava/lang/String;
    .locals 5

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    if-eqz v2, :cond_e

    .line 114
    iget-object v2, v2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    .line 115
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v2, v2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->orMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "udid"

    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->udid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v4, "uid"

    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v4, "roleid"

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v4, "gameid"

    .line 122
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v4, "local_ip"

    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v2, v2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    if-eqz v2, :cond_e

    .line 131
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-object v2, v2, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->andMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "package"

    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v4, "model"

    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->model:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    const-string v4, "os_ver"

    .line 136
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    const-string v4, "region"

    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->region:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    const-string v4, "sdk_version"

    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_b
    const-string v4, "unisdk_version"

    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->unisdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_c
    const-string v4, "channel_id"

    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_d
    const-string v4, "channel_version"

    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->channelVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 153
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [createUnitResultTag] unitName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->showUnitResult(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriterHandlerCallback [createUnitResultTag] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    .line 160
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zipAndUpload(Ljava/io/File;)V
    .locals 7

    const-string v0, "WriterHandlerCallback [zipAndUpload] start"

    .line 236
    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->v_inner(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    if-nez v0, :cond_1

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WriterHandlerCallback [zipAndUpload] unitResult.uploadEnable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " dont zip and upload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->e_inner(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_1
    new-instance v0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$1;-><init>(Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;)V

    .line 258
    new-instance v6, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;

    invoke-direct {v6, p0, v0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback$2;-><init>(Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;Lcom/netease/ntunisdk/unilogger/uploader/UploadCallBack;)V

    .line 270
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerLogDirPath:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/unilogger/zip/ZipProxy;->zipSingleFileInOtherThread(Ljava/io/File;ZZLjava/lang/String;Lcom/netease/ntunisdk/unilogger/zip/ZipCallBack;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "WriterHandlerCallback [zipAndUpload] file is error"

    .line 238
    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->e_inner(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 40
    iget-boolean v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->start:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 42
    :try_start_0
    const-class v0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 44
    invoke-static {v2}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/File;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 48
    monitor-exit v0

    return v3

    .line 51
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 p1, 0x3

    goto/16 :goto_0

    .line 82
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriterHandlerCallback [handleMessage] unitName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  close sink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v2}, Lcom/netease/ntunisdk/okio/BufferedSink;->close()V

    .line 84
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 85
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->start:Z

    goto/16 :goto_0

    .line 67
    :cond_3
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->has:Z

    .line 68
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v2}, Lcom/netease/ntunisdk/okio/BufferedSink;->emit()Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriterHandlerCallback [handleMessage] [logger-trace] unitName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sink write to file, filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", fileLinit * 9/10="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->getFileLimit()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    mul-long v3, v3, v5

    const-wide/16 v7, 0x9

    mul-long v3, v3, v7

    const-wide/16 v9, 0xa

    div-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/unilogger/configs/ConfigProxy;->getFileLimit()J

    move-result-wide v11

    mul-long v11, v11, v5

    mul-long v11, v11, v7

    div-long/2addr v11, v9

    cmp-long v4, v2, v11

    if-lez v4, :cond_5

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriterHandlerCallback [handleMessage] unitName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", file is full\uff0ccreate new file\uff0c ori filepath\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    invoke-interface {v2}, Lcom/netease/ntunisdk/okio/BufferedSink;->close()V

    .line 74
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 75
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->zipAndUpload(Ljava/io/File;)V

    .line 76
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->addNewFile()V

    .line 77
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/File;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [handleMessage] file is full\uff0ccreate new file\uff0c cur filePath="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_4
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 54
    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    const-string v4, "\n"

    invoke-interface {v2, v4}, Lcom/netease/ntunisdk/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 56
    iget-boolean v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->has:Z

    if-nez v2, :cond_5

    .line 57
    iput-boolean v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->has:Z

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriterHandlerCallback [handleMessage] [logger-trace] unitName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", write to sink, filePath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandler;->getInstance()Lcom/netease/ntunisdk/unilogger/writer/WriterHandler;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 60
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandler;->getInstance()Lcom/netease/ntunisdk/unilogger/writer/WriterHandler;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, p1, v3, v4}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 92
    :cond_5
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [handleMessage] unitName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public updateUnitResult(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;)V
    .locals 4

    .line 174
    const-class v0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [updateUnitResult] [logger-trace] start, unitName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    if-nez v1, :cond_0

    .line 176
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    return-void

    .line 180
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->showUnitResult(Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 185
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitResult:Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/unilogger/configs/Config$UnitResult;->uploadEnable:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 186
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->createUnitResultTag()Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", filePath="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", new Tag ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  rename file"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 191
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->uniLoggerLogDirPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->createFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 194
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    .line 196
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    if-eqz p1, :cond_1

    .line 197
    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSink;->emit()Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->appendingSink(Ljava/io/File;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 200
    iput-boolean v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->start:Z

    .line 201
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  rename file\uff0ccur filePath="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 201
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 205
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  same name, dont need to rename file\uff0c filePath="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 208
    :cond_3
    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    :try_start_5
    invoke-direct {p0}, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->addNewFile()V

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  close before, open now\uff0c filePath="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 211
    iput-boolean v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->start:Z

    .line 212
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->has:Z

    .line 213
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 217
    :cond_4
    iput-boolean v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->start:Z

    .line 218
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->deleteFile(Ljava/io/File;)Z

    move-result p1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delete file filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v2, "is not exist"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delete result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 221
    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 222
    :try_start_7
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    if-eqz p1, :cond_6

    .line 223
    invoke-interface {p1}, Lcom/netease/ntunisdk/okio/BufferedSink;->close()V

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    .line 225
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->file:Ljava/io/File;

    .line 227
    :cond_6
    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriterHandlerCallback [updateUnitResult] unitName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/unilogger/writer/WriterHandlerCallback;->unitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",  Exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w_inner(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
