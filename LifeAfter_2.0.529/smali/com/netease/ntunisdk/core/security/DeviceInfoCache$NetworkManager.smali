.class public Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/security/DeviceInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->b:Ljava/util/Set;

    invoke-static {}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WARNING: NO DEVICE_INFO_SDK_EXIST!"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$1;-><init>(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;)V

    const-string v3, "mpay"

    const-string v4, "deviceInfo"

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->addModuleCallback(Ljava/lang/String;ZLjava/lang/String;Lcom/netease/ntunisdk/modules/api/ModulesCallback;)I

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;)V
    .locals 1

    iget-object p0, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;->onDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;I)V
    .locals 1

    iget-object p0, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;->onConnected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;
    .locals 2

    sget-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    return-object v0
.end method


# virtual methods
.method public registerListener(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterListener(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$NetworkChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
