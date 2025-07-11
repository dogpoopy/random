.class public Lcom/netease/inner/pushclient/huawei/Huawei;
.super Ljava/lang/Object;
.source "Huawei.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static s_inst:Lcom/netease/inner/pushclient/huawei/Huawei;


# instance fields
.field private callback:Lcom/netease/pushclient/PushManagerImpl$HmsCallback;

.field m_appid:Ljava/lang/String;

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

    const-class v1, Lcom/netease/inner/pushclient/huawei/Huawei;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/netease/inner/pushclient/huawei/Huawei;

    invoke-direct {v0}, Lcom/netease/inner/pushclient/huawei/Huawei;-><init>()V

    sput-object v0, Lcom/netease/inner/pushclient/huawei/Huawei;->s_inst:Lcom/netease/inner/pushclient/huawei/Huawei;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_appid:Ljava/lang/String;

    return-void
.end method

.method public static getInst()Lcom/netease/inner/pushclient/huawei/Huawei;
    .locals 1

    .line 27
    sget-object v0, Lcom/netease/inner/pushclient/huawei/Huawei;->s_inst:Lcom/netease/inner/pushclient/huawei/Huawei;

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 23
    sget-object v0, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkHms(Landroid/content/Context;Lcom/netease/pushclient/PushManagerImpl$HmsCallback;)V
    .locals 4

    .line 62
    sget-object v0, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_ctx:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->callback:Lcom/netease/pushclient/PushManagerImpl$HmsCallback;

    :try_start_0
    const-string p1, "com.netease.inner.pushclient.huawei.PushClient"

    .line 66
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "checkHms"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 67
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_ctx:Landroid/content/Context;

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    sget-object p2, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkHms, error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/netease/inner/pushclient/huawei/Huawei;->hmsFail()V

    :goto_0
    return-void
.end method

.method public hmsFail()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->callback:Lcom/netease/pushclient/PushManagerImpl$HmsCallback;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/netease/pushclient/PushManagerImpl$HmsCallback;->hmsFail()V

    :cond_0
    return-void
.end method

.method public hmsSuccess()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->callback:Lcom/netease/pushclient/PushManagerImpl$HmsCallback;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/netease/pushclient/PushManagerImpl$HmsCallback;->hmsSuccess()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 8

    const-string v0, "registerPush"

    const-string v1, "com.netease.inner.pushclient.huawei.PushClient"

    .line 31
    sget-object v2, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_ctx:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v2

    const-string v3, "huawei"

    invoke-virtual {v2, p1, v3}, Lcom/netease/inner/pushclient/PushManager;->getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_appid:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_appid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_appid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    const-string v0, "AppID is empty"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 41
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 42
    iget-object v6, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_ctx:Landroid/content/Context;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_appid:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 47
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Class;

    .line 48
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 49
    iget-object v2, p0, Lcom/netease/inner/pushclient/huawei/Huawei;->m_ctx:Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    sget-object p1, Lcom/netease/inner/pushclient/huawei/Huawei;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPush, error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
