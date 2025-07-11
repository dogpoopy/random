.class public Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Info"

.field private static mInfo:Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;


# instance fields
.field private mExtensionInfos:Lorg/json/JSONObject;

.field private mObfuFileNameArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mInfo:Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mInfo:Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    .line 33
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mInfo:Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    return-object v0
.end method


# virtual methods
.method public addExtensionInfo(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "trace"

    const-string v1, "ExtensionInfo [addExtensionInfo] start"

    .line 61
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtensionInfo [addExtensionInfo] infos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtensionInfo [start] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiInfoToLocalFile()V

    return-void

    :cond_2
    :goto_1
    const-string p1, "ExtensionInfo [addExtensionInfo] param error"

    .line 64
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addObfuFileName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "trace"

    const-string v1, "ExtensionInfo [addObfuFileName] start"

    .line 37
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtensionInfo [addObfuFileName] fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 50
    iget-object v3, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiInfoToLocalFile()V

    return-void

    :cond_3
    :goto_1
    const-string p1, "ExtensionInfo [addObfuFileName] param error"

    .line 40
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clean()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ExtensionInfo [clean] start"

    .line 120
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    .line 123
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    .line 125
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    .line 126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    .line 128
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->cleanExtensionInfo()V

    return-void
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "trace"

    const-string v1, "ExtensionInfo [getResult] start"

    .line 89
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtensionInfo [getResult] mObfuFileNameArray length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "obfu"

    .line 97
    iget-object v3, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mObfuFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtensionInfo [getResult] mExtensionInfos length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 104
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->mExtensionInfos:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtensionInfo [getResult] Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method
