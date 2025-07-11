.class public Lcom/google/firebase/remoteconfig/RemoteConfigComponent;
.super Ljava/lang/Object;
.source "RemoteConfigComponent.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/interop/FirebaseRemoteConfigInterop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/RemoteConfigComponent$GlobalBackgroundListener;
    }
.end annotation


# static fields
.field public static final ACTIVATE_FILE_NAME:Ljava/lang/String; = "activate"

.field public static final CONNECTION_TIMEOUT_IN_SECONDS:J = 0x3cL

.field public static final DEFAULTS_FILE_NAME:Ljava/lang/String; = "defaults"

.field private static final DEFAULT_CLOCK:Lcom/google/android/gms/common/util/Clock;

.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "firebase"

.field private static final DEFAULT_RANDOM:Ljava/util/Random;

.field public static final FETCH_FILE_NAME:Ljava/lang/String; = "fetch"

.field private static final FIREBASE_REMOTE_CONFIG_FILE_NAME_PREFIX:Ljava/lang/String; = "frc"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "settings"

.field private static final frcNamespaceInstancesStatic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;"
        }
    .end annotation
.end field

.field private final appId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private customHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final frcNamespaceInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->DEFAULT_CLOCK:Lcom/google/android/gms/common/util/Clock;

    .line 80
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->DEFAULT_RANDOM:Ljava/util/Random;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstancesStatic:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Lcom/google/firebase/inject/Provider;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/abt/FirebaseABTesting;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 108
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Lcom/google/firebase/inject/Provider;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Lcom/google/firebase/inject/Provider;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/abt/FirebaseABTesting;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;Z)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstances:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->customHeaders:Ljava/util/Map;

    .line 128
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->context:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 130
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 131
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 132
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

    .line 133
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    .line 135
    invoke-virtual {p3}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->appId:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent$GlobalBackgroundListener;->access$000(Landroid/content/Context;)V

    if-eqz p7, :cond_0

    .line 143
    new-instance p1, Lcom/google/firebase/remoteconfig/-$$Lambda$JphcAw4WRwN1xNnOaDt-yvLu7x8;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/-$$Lambda$JphcAw4WRwN1xNnOaDt-yvLu7x8;-><init>(Lcom/google/firebase/remoteconfig/RemoteConfigComponent;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->notifyRCInstances(Z)V

    return-void
.end method

.method private getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "frc"

    aput-object v2, v0, v1

    .line 244
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->appId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s.json"

    .line 245
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->context:Landroid/content/Context;

    .line 249
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    move-result-object p1

    .line 248
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->getInstance(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object p1

    return-object p1
.end method

.method private getGetHandler(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;
    .locals 2

    .line 301
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)V

    return-object v0
.end method

.method static getMetadataClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "frc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    const-string p2, "settings"

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s"

    .line 307
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 311
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;-><init>(Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private static getPersonalization(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/remoteconfig/internal/Personalization;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;)",
            "Lcom/google/firebase/remoteconfig/internal/Personalization;"
        }
    .end annotation

    .line 317
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "firebase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 318
    new-instance p0, Lcom/google/firebase/remoteconfig/internal/Personalization;

    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/Personalization;-><init>(Lcom/google/firebase/inject/Provider;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRolloutsStateSubscriptionsHandler(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;)Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;
    .locals 2

    .line 327
    invoke-static {p2}, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;->create(Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;)Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;

    move-result-object p2

    .line 329
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateFactory;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static isAbtSupported(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "firebase"

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getFetchHandler$0()Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized notifyRCInstances(Z)V
    .locals 3

    const-class v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    monitor-enter v0

    .line 361
    :try_start_0
    sget-object v1, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstancesStatic:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 362
    invoke-virtual {v2, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigUpdateBackgroundState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 364
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method declared-synchronized get(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstances:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    new-instance v15, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    iget-object v11, v9, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->context:Landroid/content/Context;

    .line 214
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->isAbtSupported(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v14, p4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v14, v1

    :goto_0
    iget-object v6, v9, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->context:Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p11

    .line 222
    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getRealtime(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;)Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    move-result-object v22

    move-object v10, v15

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object v1, v15

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v23, p12

    invoke-direct/range {v10 .. v23}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;)V

    .line 231
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->startLoadingConfigsFromDisk()V

    .line 232
    iget-object v2, v9, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstances:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v2, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstancesStatic:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->frcNamespaceInstances:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string v0, "fetch"

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object v7

    const-string v0, "activate"

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object v8

    const-string v0, "defaults"

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getCacheClient(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-result-object v9

    .line 166
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->appId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getMetadataClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    move-result-object v12

    .line 168
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getGetHandler(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    move-result-object v11

    .line 169
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    .line 170
    invoke-static {v0, p1, v1}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getPersonalization(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/remoteconfig/internal/Personalization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/remoteconfig/-$$Lambda$VmV5F5uC_4rzJ5W_vvRR1Ea_wSk;

    invoke-direct {v1, v0}, Lcom/google/firebase/remoteconfig/-$$Lambda$VmV5F5uC_4rzJ5W_vvRR1Ea_wSk;-><init>(Lcom/google/firebase/remoteconfig/internal/Personalization;)V

    invoke-virtual {v11, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->addListener(Lcom/google/android/gms/common/util/BiConsumer;)V

    .line 176
    :cond_0
    invoke-direct {p0, v8, v11}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getRolloutsStateSubscriptionsHandler(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;)Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;

    move-result-object v13

    .line 178
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

    iget-object v6, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 187
    invoke-virtual {p0, p1, v7, v12}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getFetchHandler(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    move-result-object v10

    move-object v1, p0

    move-object v3, p1

    .line 178
    invoke-virtual/range {v1 .. v13}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->get(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getDefault()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    const-string v0, "firebase"

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->get(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getFetchHandler(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;
    .locals 11

    monitor-enter p0

    .line 268
    :try_start_0
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 270
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->isPrimaryApp(Lcom/google/firebase/FirebaseApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigComponent$USEUB2r-dY7rQSucdXyvQR4z8Fg;->INSTANCE:Lcom/google/firebase/remoteconfig/-$$Lambda$RemoteConfigComponent$USEUB2r-dY7rQSucdXyvQR4z8Fg;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->DEFAULT_CLOCK:Lcom/google/android/gms/common/util/Clock;

    sget-object v5, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->DEFAULT_RANDOM:Ljava/util/Random;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 275
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getFrcBackendApiClient(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    move-result-object v7

    iget-object v9, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->customHeaders:Ljava/util/Map;

    move-object v0, v10

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/Clock;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFrcBackendApiClient(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .locals 10

    .line 255
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 256
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->context:Landroid/content/Context;

    .line 261
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getFetchTimeoutInSeconds()J

    move-result-wide v6

    .line 262
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getFetchTimeoutInSeconds()J

    move-result-wide v8

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method declared-synchronized getRealtime(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;)Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;
    .locals 11

    move-object v1, p0

    monitor-enter p0

    .line 288
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    iget-object v10, v1, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerRolloutsStateSubscriber(Ljava/lang/String;Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsStateSubscriber;)V
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->get(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getRolloutsStateSubscriptionsHandler()Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;

    move-result-object p1

    .line 379
    invoke-virtual {p1, p2}, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;->registerRolloutsStateSubscriber(Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsStateSubscriber;)V

    return-void
.end method

.method public declared-synchronized setCustomHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 240
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->customHeaders:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
