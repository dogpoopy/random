.class public Lcom/netease/inner/pushclient/flyme/Flyme;
.super Ljava/lang/Object;
.source "Flyme.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_inst:Lcom/netease/inner/pushclient/flyme/Flyme;


# instance fields
.field m_appid:Ljava/lang/String;

.field m_appkey:Ljava/lang/String;

.field private m_ctx:Landroid/content/Context;

.field m_regid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/inner/pushclient/flyme/Flyme;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/flyme/Flyme;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/netease/inner/pushclient/flyme/Flyme;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/flyme/Flyme;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/flyme/Flyme;->s_inst:Lcom/netease/inner/pushclient/flyme/Flyme;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appid:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appkey:Ljava/lang/String;

    return-void
.end method

.method public static getInst()Lcom/netease/inner/pushclient/flyme/Flyme;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/inner/pushclient/flyme/Flyme;->s_inst:Lcom/netease/inner/pushclient/flyme/Flyme;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 24
    sget-object v0, Lcom/netease/inner/pushclient/flyme/Flyme;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 7

    .line 32
    sget-object v0, Lcom/netease/inner/pushclient/flyme/Flyme;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_ctx:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    const-string v1, "flyme"

    invoke-virtual {v0, p1, v1}, Lcom/netease/inner/pushclient/PushManager;->getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appid:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/netease/inner/pushclient/PushManager;->getAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appkey:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    sget-object p1, Lcom/netease/inner/pushclient/flyme/Flyme;->TAG:Ljava/lang/String;

    const-string v0, "AppID is empty"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appkey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    sget-object p1, Lcom/netease/inner/pushclient/flyme/Flyme;->TAG:Ljava/lang/String;

    const-string v0, "AppKey is empty"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    const-string p1, "com.netease.inner.pushclient.flyme.PushClient"

    .line 45
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "registerPush"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 46
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_ctx:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appid:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/netease/inner/pushclient/flyme/Flyme;->m_appkey:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    sget-object v0, Lcom/netease/inner/pushclient/flyme/Flyme;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flyme_SDK_Client jars not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
