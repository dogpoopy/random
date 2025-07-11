.class public Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;
.super Ljava/lang/Object;
.source "MessageProxy.java"


# static fields
.field private static sMessageProxy:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;


# instance fields
.field private hasStorageMessageContextInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->hasStorageMessageContextInfo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->storageProcessErrorStateInfo(I)Z

    move-result p0

    return p0
.end method

.method private fillActivityInfo(Lorg/json/JSONObject;)V
    .locals 6

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getActivityNameMap()Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    iget-object v4, v4, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;->activityName:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;

    iget-object v5, v5, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;->state:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "activity_state"

    .line 112
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private fillHandleMessage(Lorg/json/JSONObject;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getAnrMessage(Lorg/json/JSONObject;)V

    return-void
.end method

.method private fillNonHandleMessage(Lorg/json/JSONObject;)V
    .locals 4

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 87
    invoke-static {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->getAllMessageFromMessageQueue(Z)V

    .line 89
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->getNonHandleMessageArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 92
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;

    .line 93
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->parse2Json()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "nonhandle_message"

    .line 96
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->sMessageProxy:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->sMessageProxy:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->sMessageProxy:Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    return-object v0
.end method

.method private storageProcessErrorStateInfo(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "trace"

    const-string v1, "MessageProxy [storageProcessErrorStateInfo] start"

    .line 119
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    :goto_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "MessageProxy [storageProcessErrorStateInfo] iprocessErrorStateInfoList is null"

    .line 129
    invoke-static {v0, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v5, :cond_1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageProxy [storageProcessErrorStateInfo] longMsg= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ProcessState_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v3, 0x1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const-string p1, "MessageProxy [storageProcessErrorStateInfo] \u83b7\u53d6cpu\u4fe1\u606f\u6210\u529f"

    .line 143
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_4

    const-string p1, "MessageProxy [storageProcessErrorStateInfo] \u83b7\u53d6cpu\u4fe1\u606f\u5931\u8d25\uff0c\u4e14\u8d85\u65f6\u65f6\u95f4\u5df2\u5230"

    .line 150
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v3

    .line 154
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageProxy [storageProcessErrorStateInfo] \u7b49\u5f85\u83b7\u53d6cpu\u4fe1\u606f\uff0c\u8fd8\u5269\u8d85\u65f6\u65f6\u95f4\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0
.end method


# virtual methods
.method public storageMessageContextInfo()V
    .locals 6

    .line 43
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->hasStorageMessageContextInfo:Z

    const-string v1, "trace"

    if-eqz v0, :cond_0

    const-string v0, "MessageProxy [storageMessageContextInfo] \u4efb\u52a1\u5df2\u6267\u884c"

    .line 44
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "MessageProxy [storageMessageContextInfo] start"

    .line 47
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->hasStorageMessageContextInfo:Z

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->fillHandleMessage(Lorg/json/JSONObject;)V

    .line 54
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->fillNonHandleMessage(Lorg/json/JSONObject;)V

    .line 55
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->fillActivityInfo(Lorg/json/JSONObject;)V

    .line 56
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageContext_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :cond_1
    :goto_0
    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy$1;-><init>(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    .line 76
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->hasStorageMessageContextInfo:Z

    return-void
.end method
