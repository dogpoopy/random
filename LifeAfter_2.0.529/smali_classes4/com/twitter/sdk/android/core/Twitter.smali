.class public Lcom/twitter/sdk/android/core/Twitter;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field private static final CONSUMER_KEY:Ljava/lang/String; = "com.twitter.sdk.android.CONSUMER_KEY"

.field private static final CONSUMER_SECRET:Ljava/lang/String; = "com.twitter.sdk.android.CONSUMER_SECRET"

.field static final DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

.field private static final NOT_INITIALIZED_MESSAGE:Ljava/lang/String; = "Must initialize Twitter before using getInstance()"

.field public static final TAG:Ljava/lang/String; = "Twitter"

.field static volatile instance:Lcom/twitter/sdk/android/core/Twitter;


# instance fields
.field private final context:Landroid/content/Context;

.field private final debug:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

.field private final lifecycleManager:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

.field private final logger:Lcom/twitter/sdk/android/core/Logger;

.field private final twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/twitter/sdk/android/core/DefaultLogger;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/Twitter;->DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/sdk/android/core/TwitterConfig;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/twitter/sdk/android/core/internal/IdManager;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/IdManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    .line 55
    new-instance v0, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->lifecycleManager:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    .line 57
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "com.twitter.sdk.android.CONSUMER_KEY"

    invoke-static {v0, v2, v1}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->getStringResourceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    const-string v3, "com.twitter.sdk.android.CONSUMER_SECRET"

    invoke-static {v2, v3, v1}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->getStringResourceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/Twitter;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 65
    :goto_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-string v0, "twitter-worker"

    .line 66
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->buildThreadPoolExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 71
    :goto_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->logger:Lcom/twitter/sdk/android/core/Logger;

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->logger:Lcom/twitter/sdk/android/core/Logger;

    goto :goto_2

    .line 74
    :cond_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->logger:Lcom/twitter/sdk/android/core/Logger;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->logger:Lcom/twitter/sdk/android/core/Logger;

    .line 77
    :goto_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->debug:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/Twitter;->debug:Z

    goto :goto_3

    .line 80
    :cond_3
    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterConfig;->debug:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/Twitter;->debug:Z

    :goto_3
    return-void
.end method

.method static checkInitialized()V
    .locals 2

    .line 142
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize Twitter before using getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized createTwitter(Lcom/twitter/sdk/android/core/TwitterConfig;)Lcom/twitter/sdk/android/core/Twitter;
    .locals 2

    const-class v0, Lcom/twitter/sdk/android/core/Twitter;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/twitter/sdk/android/core/Twitter;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/Twitter;-><init>(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    sput-object v1, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    .line 135
    sget-object p0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 138
    :cond_0
    :try_start_1
    sget-object p0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/twitter/sdk/android/core/Twitter;
    .locals 1

    .line 151
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->checkInitialized()V

    .line 152
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    return-object v0
.end method

.method public static getLogger()Lcom/twitter/sdk/android/core/Logger;
    .locals 1

    .line 206
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->DEFAULT_LOGGER:Lcom/twitter/sdk/android/core/Logger;

    return-object v0

    .line 210
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/Twitter;->logger:Lcom/twitter/sdk/android/core/Logger;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->createTwitter(Lcom/twitter/sdk/android/core/TwitterConfig;)Lcom/twitter/sdk/android/core/Twitter;

    return-void
.end method

.method public static initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->createTwitter(Lcom/twitter/sdk/android/core/TwitterConfig;)Lcom/twitter/sdk/android/core/Twitter;

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 195
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/Twitter;->instance:Lcom/twitter/sdk/android/core/Twitter;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/Twitter;->debug:Z

    return v0
.end method


# virtual methods
.method public getActivityLifecycleManager()Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->lifecycleManager:Lcom/twitter/sdk/android/core/internal/ActivityLifecycleManager;

    return-object v0
.end method

.method public getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    .line 160
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterContext;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/Twitter;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".TwitterKit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/TwitterContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdManager()Lcom/twitter/sdk/android/core/internal/IdManager;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->idManager:Lcom/twitter/sdk/android/core/internal/IdManager;

    return-object v0
.end method

.method public getTwitterAuthConfig()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/twitter/sdk/android/core/Twitter;->twitterAuthConfig:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method
