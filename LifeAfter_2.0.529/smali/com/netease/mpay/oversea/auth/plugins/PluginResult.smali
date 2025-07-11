.class public final Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
.super Ljava/lang/Object;
.source "PluginResult.java"


# static fields
.field public static RESULT_FAILED:I = 0x1

.field public static RESULT_SUCCESS:I


# instance fields
.field public data:Lorg/json/JSONObject;

.field public isEnd:Z

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILorg/json/JSONObject;Z)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->isEnd:Z

    .line 16
    iput p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->status:I

    .line 17
    iput-object p2, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    .line 18
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->isEnd:Z

    return-void
.end method

.method public static newInstance(ILcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
    .locals 2

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    const-string v0, "plugin"

    .line 31
    invoke-interface {p2}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "status"

    .line 33
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    new-instance v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    invoke-interface {p2}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->isEndNode()Z

    move-result p2

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;-><init>(ILorg/json/JSONObject;Z)V

    return-object v0
.end method

.method public static newInstance(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;
    .locals 4

    .line 45
    sget v0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    const-string v1, "plugin"

    const-string v2, "status"

    if-nez p0, :cond_1

    .line 47
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    invoke-interface {p1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_0
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->status:I

    .line 57
    iget-object p0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->data:Lorg/json/JSONObject;

    if-nez p0, :cond_3

    .line 59
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_2

    .line 62
    :try_start_1
    invoke-interface {p1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_2
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :catch_0
    :cond_3
    :goto_0
    invoke-static {v0, p0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->newInstance(ILorg/json/JSONObject;Lcom/netease/mpay/oversea/auth/plugins/Plugin;)Lcom/netease/mpay/oversea/auth/plugins/PluginResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .line 22
    iget v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->status:I

    sget v1, Lcom/netease/mpay/oversea/auth/plugins/PluginResult;->RESULT_SUCCESS:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
