.class public Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;
.super Ljava/lang/Object;
.source "ClientLogMessage.java"


# instance fields
.field private final callType:Ljava/lang/String;

.field private final originJson:Lorg/json/JSONObject;

.field private final source:Ljava/lang/String;

.field private final submitJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->source:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->callType:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->originJson:Lorg/json/JSONObject;

    .line 36
    iput-object p4, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->submitJson:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getCallType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->callType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginJson()Lorg/json/JSONObject;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->originJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitJson()Lorg/json/JSONObject;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;->submitJson:Lorg/json/JSONObject;

    return-object v0
.end method
