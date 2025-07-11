.class public Lcom/netease/inner/pushclient/vivo/Vivo;
.super Ljava/lang/Object;
.source "Vivo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_inst:Lcom/netease/inner/pushclient/vivo/Vivo;


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

    const-class v1, Lcom/netease/inner/pushclient/vivo/Vivo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/netease/inner/pushclient/vivo/Vivo;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/vivo/Vivo;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->s_inst:Lcom/netease/inner/pushclient/vivo/Vivo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/netease/inner/pushclient/vivo/Vivo;->m_appid:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/netease/inner/pushclient/vivo/Vivo;->m_appkey:Ljava/lang/String;

    return-void
.end method

.method public static getInst()Lcom/netease/inner/pushclient/vivo/Vivo;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->s_inst:Lcom/netease/inner/pushclient/vivo/Vivo;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 24
    sget-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkSupportVIVOPush(Landroid/content/Context;)Z
    .locals 5

    .line 32
    sget-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/netease/inner/pushclient/vivo/Vivo;->m_ctx:Landroid/content/Context;

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.netease.inner.pushclient.vivo.PushClient"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkSupportVIVOPush"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 36
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    iget-object v3, p0, Lcom/netease/inner/pushclient/vivo/Vivo;->m_ctx:Landroid/content/Context;

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

    .line 39
    sget-object v1, Lcom/netease/inner/pushclient/vivo/Vivo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSupportVIVOPush, VIVO push jars(pushsdk-v2.3.4.jar) not found:"

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
    .locals 5

    .line 45
    sget-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/netease/inner/pushclient/vivo/Vivo;->m_ctx:Landroid/content/Context;

    :try_start_0
    const-string p1, "com.netease.inner.pushclient.vivo.PushClient"

    .line 58
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "registerPush"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 59
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/netease/inner/pushclient/vivo/Vivo;->m_ctx:Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    sget-object v0, Lcom/netease/inner/pushclient/vivo/Vivo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vivo_SDK_Client jars not found:"

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
