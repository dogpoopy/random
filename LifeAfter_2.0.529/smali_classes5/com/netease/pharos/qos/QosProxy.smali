.class public Lcom/netease/pharos/qos/QosProxy;
.super Ljava/lang/Object;
.source "QosProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QosProxy"

.field private static sQosProxy:Lcom/netease/pharos/qos/QosProxy;


# instance fields
.field private mIsInit:Z

.field private mIsStart:Z

.field private mQosCore:Lcom/netease/pharos/qos/QosCore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 24
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsStart:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/QosProxy;
    .locals 2

    .line 33
    sget-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/netease/pharos/qos/QosProxy;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/netease/pharos/qos/QosProxy;

    invoke-direct {v1}, Lcom/netease/pharos/qos/QosProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-string v0, "QosProxy"

    const-string v1, "QosProxy [clean] start"

    .line 126
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->clean()V

    :cond_0
    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 134
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsStart:Z

    return-void
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->getDest()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getQosEffective()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->getQosEffective()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getQosResult()Lorg/json/JSONObject;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->getQosResult()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    const-string v1, "QosProxy"

    if-nez v0, :cond_1

    const-string v0, "QosProxy [init] start"

    .line 46
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/netease/pharos/qos/QosCore;

    invoke-direct {v0}, Lcom/netease/pharos/qos/QosCore;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapQos()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/pharos/qos/QosCore;->init(Lorg/json/JSONObject;)V

    .line 53
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->parse()I

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    goto :goto_0

    :cond_1
    const-string v0, "QosProxy [init] already init"

    .line 57
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start_qosCore()V
    .locals 4

    const-string v0, "QosProxy"

    const-string v1, "QosProxy [start_qosCore] start"

    .line 62
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v1, :cond_0

    const-string v1, "\u5f00\u59cbQos\u6a21\u5757"

    .line 65
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v1}, Lcom/netease/pharos/qos/QosCore;->checkIsNeedToQos()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QosProxy [start_qosCore] JSONException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
