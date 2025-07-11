.class public Lcom/netease/inner/pushclient/oppo/OPPO;
.super Ljava/lang/Object;
.source "OPPO.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_inst:Lcom/netease/inner/pushclient/oppo/OPPO;


# instance fields
.field m_appid:Ljava/lang/String;

.field m_appkey:Ljava/lang/String;

.field private m_ctx:Landroid/content/Context;

.field m_regid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/inner/pushclient/oppo/OPPO;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/netease/inner/pushclient/oppo/OPPO;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/oppo/OPPO;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->s_inst:Lcom/netease/inner/pushclient/oppo/OPPO;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_appid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_appkey:Ljava/lang/String;

    return-void
.end method

.method public static getInst()Lcom/netease/inner/pushclient/oppo/OPPO;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->s_inst:Lcom/netease/inner/pushclient/oppo/OPPO;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 25
    sget-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkSupportOPPOPush(Landroid/content/Context;)Z
    .locals 5

    .line 33
    sget-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_ctx:Landroid/content/Context;

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.netease.inner.pushclient.oppo.PushClient"

    .line 36
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkSupportOPPOPush"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 37
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    iget-object v3, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_ctx:Landroid/content/Context;

    aput-object v3, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/netease/inner/pushclient/oppo/OPPO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSupportOPPOPush, OPPO push jars(mcssdk-1.0.1.jar) not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 7

    const-string v0, "\u8c03\u8bd5"

    const-string v1, "\u8fdb\u5165OPPO\u521d\u59cb\u5316"

    .line 45
    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_ctx:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, p1, v1}, Lcom/netease/inner/pushclient/PushManager;->getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_appid:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/netease/inner/pushclient/PushManager;->getAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_appkey:Ljava/lang/String;

    :try_start_0
    const-string p1, "com.netease.inner.pushclient.oppo.PushClient"

    .line 59
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "registerPush"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 60
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

    .line 61
    iget-object v2, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_ctx:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_appid:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/netease/inner/pushclient/oppo/OPPO;->m_appkey:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    sget-object v0, Lcom/netease/inner/pushclient/oppo/OPPO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiPush_SDK_Client jars not found:"

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
