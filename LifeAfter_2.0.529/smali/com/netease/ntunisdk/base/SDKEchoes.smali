.class public Lcom/netease/ntunisdk/base/SDKEchoes;
.super Ljava/lang/Object;
.source "SDKEchoes.java"


# static fields
.field private static x:Lcom/netease/ntunisdk/base/SDKEchoes;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->a:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->b:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->c:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->d:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->e:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->f:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->g:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->h:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->i:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->j:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->k:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->l:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->m:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->n:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->o:I

    .line 44
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->p:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->q:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->r:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->s:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->t:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->u:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->v:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->w:I

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SDKEchoes;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/base/SDKEchoes;
    .locals 1

    .line 64
    sget-object v0, Lcom/netease/ntunisdk/base/SDKEchoes;->x:Lcom/netease/ntunisdk/base/SDKEchoes;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/netease/ntunisdk/base/SDKEchoes;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/SDKEchoes;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SDKEchoes;->x:Lcom/netease/ntunisdk/base/SDKEchoes;

    .line 68
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SDKEchoes;->x:Lcom/netease/ntunisdk/base/SDKEchoes;

    return-object v0
.end method


# virtual methods
.method public createEhco2SAParams()Lorg/json/JSONObject;
    .locals 3

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "catagory"

    .line 212
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    .line 213
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    .line 214
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_ver"

    .line 215
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_ver"

    .line 216
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobile_type"

    .line 218
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "server_list"

    .line 219
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time_zone"

    .line 220
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "area_zone"

    .line 221
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 222
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "usr_id"

    .line 224
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "usr_nickname"

    .line 225
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "usr_server"

    .line 226
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "usr_status"

    .line 227
    iget v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "feedback_msg"

    .line 228
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pharos_id"

    .line 230
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orbit_sessionid"

    .line 231
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dumpid"

    .line 233
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SDKEchoes;->getDumpId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "project"

    .line 235
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 243
    :catch_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v2, "custom_log"

    .line 246
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 249
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createEhco2SAParams ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKEchoes"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public echo2SA()V
    .locals 4

    .line 183
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDK_ECHOES_URL"

    const-string v2, "https://sigma-echoes.proxima.nie.netease.com/query/"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SDKEchoes"

    if-eqz v1, :cond_0

    const-string v0, "null or empty url, echo service will not go on"

    .line 186
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v3, "EB"

    invoke-interface {v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "netease.com"

    const-string v3, "easebar.com"

    .line 191
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "echo2SA url="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SDKEchoes;->createEhco2SAParams()Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/base/SDKEchoes$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/base/SDKEchoes$1;-><init>(Lcom/netease/ntunisdk/base/SDKEchoes;)V

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wpost_http_https(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    :cond_2
    return-void
.end method

.method public getAreaZone()Ljava/lang/String;
    .locals 3

    .line 136
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u5730\u533a="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKEchoes"

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpId()Ljava/lang/String;
    .locals 3

    .line 258
    iget v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->w:I

    .line 260
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "echo2Flatform [ProcessResult] transid="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKEchoes"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->w:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->t:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo2Flatform [ProcessResult] mDumpid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->t:Ljava/lang/String;

    const-string v2, "ECHOES_DUMPID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 5

    .line 110
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f51\u7edc\u76d1\u63a7\u6a21\u5757---\u65f6\u5dee="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKEchoes"

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "+"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\\+|\\:"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/16 v0, 0x64

    const/4 v3, 0x1

    .line 121
    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getmFeedbackMsg()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->p:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 81
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ECHOES_TID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->u:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ECHOES_USR_AVATARID"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->v:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->a:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->b:Ljava/lang/String;

    const-string v0, "ad"

    .line 86
    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->c:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDC_LOG_OS_VER"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->d:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDC_LOG_APP_VER"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->e:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->g:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ECHOES_SERVERLIST"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->h:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SDKEchoes;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->i:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SDKEchoes;->getAreaZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->j:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UDID"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->k:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_UID"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->l:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_NAME"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->m:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_HOSTNAME"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->n:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ECHOES_USR_STATUS"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->o:I

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKPharos;->getInstance()Lcom/netease/ntunisdk/base/SDKPharos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SDKPharos;->getPharosid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->q:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkDownload;->getOrbitSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->r:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ECHOES_CUSTOM_LOG"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->s:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->f:Ljava/lang/String;

    return-void
.end method

.method public ntOpenEchoes()V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SDKEchoes;->init()V

    .line 146
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ECHOES_URL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "echo2Flatform url="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SDKEchoes"

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "tid="

    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->u:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&usr_nickname="

    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->m:Ljava/lang/String;

    .line 154
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&usr_id="

    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->l:Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&usr_server="

    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->n:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&usr_avatarid="

    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->v:Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "?"

    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "WEBVIEW_CLBTN"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenWebView(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setmFeedbackMsg(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKEchoes;->p:Ljava/lang/String;

    return-void
.end method
