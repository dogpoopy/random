.class public Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;
.super Ljava/lang/Object;
.source "TextCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextCache"

.field private static volatile instance:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;


# instance fields
.field private final callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

.field private jfGameId:Ljava/lang/String;

.field private final regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;",
            ">;"
        }
    .end annotation
.end field

.field private textDir:Ljava/lang/String;

.field public textHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x5

    const/16 v3, 0xa

    const-wide/16 v4, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 37
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 38
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$1;-><init>(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->fetchRemoteLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method

.method private download(Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 8

    .line 196
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->loadLocalHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    :try_start_0
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->loadRemoteHash(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 199
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 200
    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

    if-eqz v3, :cond_0

    .line 201
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

    invoke-interface {v2, p1, v1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;->onFinish(Ljava/lang/String;ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void

    .line 205
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TextCache hash changed. reset download Url as: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->downloadAndLoading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextCache the hash is changed. and the result of re-downloading is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "TextCache The hash does not change. the original cache file is used"

    .line 213
    invoke-static {v5}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v3, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->flushText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextCache The hash remains unchanged. and the result of running the original cache file is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :goto_0
    if-nez v5, :cond_2

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextCache failed to load for the first time. reload "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->downloadAndLoading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TextCache the first load fails, and the result of the reload is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 223
    :goto_1
    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

    if-eqz v3, :cond_7

    .line 224
    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

    if-nez v5, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    invoke-interface {v3, p1, v4, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;->onFinish(Ljava/lang/String;ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    if-eqz v0, :cond_6

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "TextCache the remote copy fails to load. the hash value exists. and the local cache copy is used"

    .line 229
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->flushText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "TextCache the remote copy failed to load, but the local cache was used successfully"

    .line 232
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "TextCache failed to load remote copy, failed to use local cache"

    .line 234
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 237
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->callback:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;

    if-eqz v0, :cond_7

    .line 238
    invoke-interface {v0, p1, v1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$Callback;->onFinish(Ljava/lang/String;ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private fetchDynamicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 277
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->downloadAndUpdateCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 280
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->downloadAndUpdateCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private fetchLocalHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hash"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private fetchRemoteLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 5

    .line 142
    sget v0, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->PUBLISH_AREA:I

    .line 143
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->jfGameId:Ljava/lang/String;

    sget v3, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_APP_MODE:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2, v0, v4}, Lcom/netease/mpay/httpdns/HttpDns;->init(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TextCache The downloaded url is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "The current language type is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p2, p4}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->download(Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;
    .locals 2

    .line 51
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->instance:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->instance:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    invoke-direct {v1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->instance:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->instance:Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    return-object v0
.end method

.method private static getPublish()I
    .locals 2

    const/4 v0, -0x1

    .line 63
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_FLAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    if-eqz v1, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_2

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    const/16 v0, 0xb

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :catch_0
    return v0
.end method

.method private updateRegionValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pt-br"

    .line 265
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "pt-pt"

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private updateTextHashMap(Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->loadLocalHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->loadDynamicText(Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextCache The text is dynamically executed to update the HashMap. The current language is"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disable(Ljava/lang/String;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public downloadAndLoading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 245
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->fetchDynamicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 247
    invoke-virtual {p0, p3, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->flushText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :cond_0
    if-eqz p2, :cond_1

    .line 250
    invoke-direct {p0, p1, p3}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->fetchLocalHash(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public flushText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 256
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 257
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->loadDynamicText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initConfig(Landroid/content/Context;)V
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ngplugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextCache dynamic text folder created successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextCache dynamic text folder creation failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-string v1, "data"

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p1, "TextCache init the dynamic text configuration"

    .line 94
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final isEnable(Ljava/lang/String;)Z
    .locals 2

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;->isEnable()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public loadDynamicText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->parserCachedFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadLocalHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hash"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public register(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 7

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextCache register enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " switchHashMap put urlKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->switchHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;

    invoke-direct {v1, p2, p5}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextInput;-><init>(ZLcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pt-br"

    .line 114
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "pt-pt"

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    sget-object p2, Lcom/netease/ntunisdk/ngplugin/common/PluginConstant;->TEXT_SERVER_FLAG:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$2;-><init>(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_1
    return-void
.end method

.method public register(ZLjava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->register(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method

.method public registerAll()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->registerAll(Landroid/content/Context;)V

    return-void
.end method

.method public registerAll(Landroid/content/Context;)V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->regionHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache$3;-><init>(Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllTextFile(Landroid/content/Context;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ngplugin"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/DynamicTextUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextCache removeAllTextFile result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    return-void
.end method

.method public setJfGameId(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->jfGameId:Ljava/lang/String;

    return-void
.end method

.method public updateRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextCache The language is reset. the latest language type is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->updateRegionValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->updateTextHashMap(Ljava/lang/String;)V

    return-void
.end method
