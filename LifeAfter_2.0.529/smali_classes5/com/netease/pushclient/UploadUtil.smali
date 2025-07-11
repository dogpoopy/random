.class public Lcom/netease/pushclient/UploadUtil;
.super Ljava/lang/Object;
.source "UploadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK UploadUtil"

.field private static requestBody:Ljava/lang/String; = null

.field private static url:Ljava/lang/String; = "https://sigma-statistics-push.proxima.nie.netease.com"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendRequest(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string v0, "UniSDK UploadUtil"

    const-string v1, "SendRequest"

    .line 23
    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/pushclient/UploadUtil;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/pushclient/UploadUtil;->requestBody:Ljava/lang/String;

    .line 26
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/netease/pushclient/UploadUtil$1;

    invoke-direct {v0}, Lcom/netease/pushclient/UploadUtil$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const-string p0, ""

    return-object p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/pushclient/UploadUtil;->requestBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/pushclient/UploadUtil;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static setUrl(Ljava/lang/String;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/netease/pushclient/UploadUtil;->url:Ljava/lang/String;

    return-void
.end method
