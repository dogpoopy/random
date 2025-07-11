.class public final Lcom/appsflyer/internal/AFd1fSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1iSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static afInfoLog:J = 0x230278db5826ee4L

.field private static force:I = 0x0

.field private static v:I = 0x1


# instance fields
.field private final AFInAppEventParameterName:Lkotlin/Lazy;

.field private AFInAppEventType:Lcom/appsflyer/internal/AFd1nSDK;

.field private final AFKeystoreWrapper:Lkotlin/Lazy;

.field private final AFLogger:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final registerClient:Ljava/lang/String;

.field private unregisterClient:Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;

.field private final valueOf:Lkotlin/Lazy;

.field private final values:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1nSDK;

    .line 34
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$2;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$2;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$1;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$1;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$5;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$5;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->valueOf:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$8;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$8;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->values:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$4;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$4;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger:Lkotlin/Lazy;

    const-string p1, "6.13.0"

    .line 45
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->registerClient:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$3;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$3;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->d:Lkotlin/Lazy;

    .line 55
    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK$10;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1fSDK$10;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->e:Lkotlin/Lazy;

    return-void
.end method

.method private final AFInAppEventParameterName(Lcom/appsflyer/internal/AFh1lSDK;)V
    .locals 8

    .line 190
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    const-string v2, "af_send_exc_min"

    const-string v3, "af_send_exc_to_server_window"

    if-eq v0, v1, :cond_1

    .line 8045
    iget v0, p1, Lcom/appsflyer/internal/AFh1lSDK;->valueOf:I

    .line 8049
    iget p1, p1, Lcom/appsflyer/internal/AFh1lSDK;->AFInAppEventType:I

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long/2addr v4, v6

    .line 188
    :goto_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    .line 189
    invoke-interface {p1, v3, v4, v5}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 190
    invoke-interface {p1, v2, v0}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;I)V

    goto :goto_2

    .line 8045
    :cond_1
    iget v0, p1, Lcom/appsflyer/internal/AFh1lSDK;->valueOf:I

    .line 8049
    iget p1, p1, Lcom/appsflyer/internal/AFh1lSDK;->AFInAppEventType:I

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 190
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x5d

    if-nez p1, :cond_2

    const/16 p1, 0x5d

    goto :goto_3

    :cond_2
    const/16 p1, 0x2b

    :goto_3
    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;
    .locals 3

    .line 35
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1rSDK;

    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static final AFInAppEventType(Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 3

    .line 83
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, ""

    if-eq v0, v1, :cond_1

    .line 0
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->w()V

    goto :goto_1

    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->w()V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private final AFInAppEventType(Lcom/appsflyer/internal/AFh1lSDK;)Z
    .locals 12

    .line 266
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "af_send_exc_to_server_window"

    invoke-interface {v2, v5, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v5

    .line 11053
    iget-wide v7, p1, Lcom/appsflyer/internal/AFh1lSDK;->AFKeystoreWrapper:J

    .line 259
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    const/4 v2, 0x0

    cmp-long v11, v7, v9

    if-gez v11, :cond_0

    return v2

    :cond_0
    const/16 v7, 0x5a

    cmp-long v8, v5, v3

    if-eqz v8, :cond_1

    const/16 v3, 0x2a

    goto :goto_0

    :cond_1
    const/16 v3, 0x5a

    :goto_0
    if-eq v3, v7, :cond_3

    cmp-long v3, v5, v0

    if-gez v3, :cond_2

    goto :goto_1

    .line 266
    :cond_2
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1fSDK;->values(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x2c

    if-nez p1, :cond_4

    const/16 p1, 0x2c

    goto :goto_2

    :cond_4
    const/16 p1, 0x32

    :goto_2
    if-eq p1, v0, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private final AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1lSDK;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1lSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, ""

    .line 198
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x37f1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "\uc74b\uf0aa\ua8aa\u6094\u1889"

    invoke-static {v4, v1, v3}, Lcom/appsflyer/internal/AFd1fSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    .line 199
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "model"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v2

    .line 200
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v3

    .line 8168
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 9025
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 8084
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    .line 200
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    .line 201
    new-instance v5, Lcom/appsflyer/internal/AFb1gSDK;

    invoke-direct {v5}, Lcom/appsflyer/internal/AFb1gSDK;-><init>()V

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "p_ex"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x4

    .line 202
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "api"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x5

    .line 203
    iget-object v5, p0, Lcom/appsflyer/internal/AFd1fSDK;->registerClient:Ljava/lang/String;

    const-string v6, "sdk"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x6

    .line 204
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v5

    .line 9098
    iget-object v6, v5, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v6, v5}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "uid"

    .line 204
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x7

    .line 205
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1lSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object p1

    const-string v5, "exc_config"

    invoke-static {v5, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v3

    .line 197
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v0, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-object p1
.end method

.method private static final AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 4

    .line 77
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, ""

    if-eq v0, v2, :cond_1

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->afInfoLog()V

    const/16 p0, 0x42

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->afInfoLog()V

    :goto_1
    return-void
.end method

.method private final AFLogger()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 38
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1d

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 11

    .line 12090
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->$10:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v0, 0x24

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    .line 0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 12066
    new-instance v0, Lcom/appsflyer/internal/AFj1mSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFj1mSDK;-><init>()V

    .line 12069
    iput p1, v0, Lcom/appsflyer/internal/AFj1mSDK;->AFInAppEventType:I

    .line 12072
    array-length p1, p0

    new-array p1, p1, [J

    .line 12075
    iput v2, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    :goto_2
    iget v1, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    array-length v3, p0

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 12077
    iget v1, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    iget v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    aget-char v3, p0, v3

    int-to-long v5, v3

    iget v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    int-to-long v7, v3

    iget v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->AFInAppEventType:I

    int-to-long v9, v3

    mul-long v7, v7, v9

    xor-long/2addr v5, v7

    sget-wide v7, Lcom/appsflyer/internal/AFd1fSDK;->afInfoLog:J

    const-wide v9, -0x56b7c207d7265633L    # -8.064199328594879E-110

    xor-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, p1, v1

    .line 12075
    iget v1, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    .line 12090
    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 12084
    :cond_3
    array-length v1, p1

    new-array v1, v1, [C

    .line 12085
    iput v2, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    :goto_3
    iget v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    array-length v5, p0

    if-ge v3, v5, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_6

    .line 12090
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    sget p1, Lcom/appsflyer/internal/AFd1fSDK;->$10:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1fSDK;->$11:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1

    aput-object p0, p2, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    aput-object p0, p2, v2

    return-void

    .line 12087
    :cond_6
    iget v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    iget v5, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    aget-wide v5, p1, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v1, v3

    .line 12085
    iget v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/appsflyer/internal/AFj1mSDK;->valueOf:I

    goto :goto_3
.end method

.method private final afInfoLog()V
    .locals 7

    .line 148
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2c

    if-nez v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_7

    .line 147
    :goto_1
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->valueOf(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result v1

    const/16 v3, 0x5d

    if-eqz v1, :cond_2

    const/16 v1, 0x5d

    goto :goto_2

    :cond_2
    const/16 v1, 0x4d

    :goto_2
    if-eq v1, v3, :cond_3

    .line 155
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v1, v0

    check-cast v1, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "skipping"

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFg1mSDK;->v$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 146
    :cond_3
    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eq v1, v3, :cond_5

    .line 148
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->e()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 6065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_4

    .line 148
    :cond_5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->e()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 6065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 148
    :try_start_1
    array-length v2, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    .line 149
    :goto_4
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFh1lSDK;)Ljava/util/Map;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventParameterName()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFd1fSDK;->valueOf(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFd1fSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 146
    throw v0

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    .line 148
    throw v0
.end method

.method private final d()Lcom/appsflyer/internal/AFd1xSDK;
    .locals 4

    .line 36
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->valueOf:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1xSDK;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->valueOf:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    sget v2, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x17

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_2

    :cond_2
    const/16 v2, 0x17

    :goto_2
    if-eq v2, v3, :cond_3

    const/16 v2, 0x42

    :try_start_1
    div-int/2addr v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    return-object v0

    :catchall_1
    move-exception v0

    throw v0
.end method

.method private final e()Lcom/appsflyer/internal/AFg1zSDK;
    .locals 3

    .line 37
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->values:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFg1zSDK;

    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private final declared-synchronized i()V
    .locals 10

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 121
    sget v2, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v2, v1

    .line 3053
    iget-wide v2, v0, Lcom/appsflyer/internal/AFh1lSDK;->AFKeystoreWrapper:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    .line 99
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 102
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v0

    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "TTL is already passed"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFg1mSDK;->v$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    const-string v2, "af_send_exc_to_server_window"

    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType()Z

    .line 121
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 139
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    if-eq v4, v3, :cond_6

    .line 121
    sget v4, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/2addr v4, v3

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_4

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->values(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eq v0, v3, :cond_5

    goto :goto_3

    .line 108
    :cond_4
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->values(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result v0

    if-ne v0, v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    .line 136
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    const-string v1, "af_send_exc_to_server_window"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType()Z

    goto/16 :goto_19

    .line 109
    :cond_8
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_15

    .line 4041
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1lSDK;->values:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v6, ""

    .line 109
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4054
    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "(\\d+).(\\d+).(\\d+).*"

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4056
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v6

    invoke-interface {v6, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    if-eqz v6, :cond_9

    const/4 v8, 0x7

    goto :goto_6

    :cond_9
    const/4 v8, 0x4

    :goto_6
    if-eq v8, v7, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v6, 0x0

    :goto_8
    const v7, 0xf4240

    mul-int v6, v6, v7

    .line 4057
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v7

    invoke-interface {v7, v1}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 121
    sget v8, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v8, v8, 0x23

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v8, v1

    const/16 v9, 0x11

    if-eqz v8, :cond_c

    const/16 v8, 0x11

    goto :goto_9

    :cond_c
    const/16 v8, 0x5d

    :goto_9
    if-eq v8, v9, :cond_d

    .line 4057
    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_e

    goto :goto_a

    .line 121
    :cond_d
    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v8, 0xa

    :try_start_2
    div-int/2addr v8, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_e

    .line 4057
    :goto_a
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 121
    throw v0

    :cond_e
    const/4 v7, 0x0

    :goto_b
    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    .line 4058
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 121
    sget v7, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v7, v7, 0x3f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v7, v1

    if-eqz v7, :cond_10

    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    array-length v7, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_f

    const/4 v7, 0x0

    goto :goto_c

    :cond_f
    const/4 v7, 0x1

    :goto_c
    if-eq v7, v3, :cond_13

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_5
    throw v0

    .line 4058
    :cond_10
    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v7, 0x1

    goto :goto_d

    :cond_11
    const/4 v7, 0x0

    :goto_d
    if-eq v7, v3, :cond_12

    goto :goto_f

    :cond_12
    :goto_e
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_10

    :cond_13
    :goto_f
    const/4 v0, 0x0

    :goto_10
    add-int/2addr v0, v6

    goto :goto_11

    :cond_14
    const/4 v0, -0x1

    .line 109
    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :cond_15
    move-object v0, v5

    .line 110
    :goto_12
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 139
    sget v7, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v7, v7, 0x45

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/2addr v7, v1

    .line 5041
    iget-object v6, v6, Lcom/appsflyer/internal/AFh1lSDK;->values:Ljava/lang/String;

    if-eqz v6, :cond_16

    .line 139
    sget v7, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v7, v7, 0x15

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/2addr v7, v1

    .line 110
    invoke-static {v6}, Lcom/appsflyer/internal/AFe1wSDK;->valueOf(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v6

    goto :goto_13

    .line 139
    :cond_16
    sget v6, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/2addr v6, v3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v6, v1

    move-object v6, v5

    .line 111
    :goto_13
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 6041
    iget-object v7, v7, Lcom/appsflyer/internal/AFh1lSDK;->values:Ljava/lang/String;

    const/16 v8, 0x51

    if-eqz v7, :cond_17

    const/16 v9, 0x51

    goto :goto_14

    :cond_17
    const/16 v9, 0x54

    :goto_14
    if-eq v9, v8, :cond_18

    goto :goto_15

    .line 139
    :cond_18
    sget v8, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v8, v8, 0x5f

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v8, v1

    if-eqz v8, :cond_19

    invoke-static {v7}, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v5, v7

    goto :goto_15

    :catchall_2
    move-exception v0

    :try_start_7
    throw v0

    .line 111
    :cond_19
    invoke-static {v7}, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v5

    :cond_1a
    :goto_15
    if-nez v0, :cond_1b

    goto :goto_17

    .line 116
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v7, 0x2a

    if-eq v0, v4, :cond_1c

    const/16 v0, 0x2a

    goto :goto_16

    :cond_1c
    const/16 v0, 0x4f

    :goto_16
    if-eq v0, v7, :cond_1d

    goto :goto_18

    :cond_1d
    :goto_17
    if-nez v6, :cond_1e

    .line 117
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1fSDK;->registerClient:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1gSDK;->values([Ljava/lang/String;)Z

    goto/16 :goto_19

    :cond_1e
    :goto_18
    if-eqz v6, :cond_20

    .line 139
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 121
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    .line 122
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 123
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 121
    invoke-interface {v0, v1, v4}, Lcom/appsflyer/internal/AFd1gSDK;->valueOf(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/16 v0, 0x30

    :try_start_8
    div-int/2addr v0, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_19

    :catchall_3
    move-exception v0

    .line 139
    :try_start_9
    throw v0

    .line 121
    :cond_1f
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    .line 122
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 123
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 121
    invoke-interface {v0, v1, v4}, Lcom/appsflyer/internal/AFd1gSDK;->valueOf(II)V

    goto :goto_19

    :cond_20
    if-eqz v5, :cond_21

    .line 126
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    .line 127
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 128
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 126
    invoke-interface {v0, v1, v4}, Lcom/appsflyer/internal/AFd1gSDK;->valueOf(II)V

    goto :goto_19

    .line 131
    :cond_21
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    const-string v1, "af_send_exc_to_server_window"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType()Z

    .line 139
    :goto_19
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    goto :goto_1a

    :cond_22
    const/4 v1, 0x1

    :goto_1a
    if-eq v1, v3, :cond_24

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result v2

    :cond_23
    invoke-interface {v0, v2}, Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;->onConfigurationChanged(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit p0

    return-void

    :cond_24
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic lambda$2iwzUuXw5eveW4avBOQXo7bEOtk(Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1fSDK;->valueOf(Lcom/appsflyer/internal/AFd1fSDK;)V

    return-void
.end method

.method public static synthetic lambda$WA0A5Tz7Be8w6pi80N5D7lrrJqQ(Lcom/appsflyer/internal/AFd1fSDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFd1fSDK;->values(Lcom/appsflyer/internal/AFd1fSDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$inciV4YJp1-k_oGwuOFfBDkp3Vw(Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1fSDK;)V

    return-void
.end method

.method public static synthetic lambda$rhq9ti25gQOzWs9DyoyiHcFzNEw(Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1fSDK;)V

    return-void
.end method

.method private final registerClient()Lcom/appsflyer/internal/AFh1lSDK;
    .locals 3

    .line 3010
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    .line 49
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->valueOf()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object v0

    .line 1064
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1eSDK;->valueOf:Lcom/appsflyer/internal/AFf1gSDK;

    .line 2062
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    const/16 v1, 0x34

    if-eqz v0, :cond_0

    const/16 v2, 0x34

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    :goto_0
    if-eq v2, v1, :cond_1

    goto :goto_2

    .line 2068
    :cond_1
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    const/16 v1, 0x4b

    if-eqz v0, :cond_2

    const/16 v2, 0x58

    goto :goto_1

    :cond_2
    const/16 v2, 0x4b

    :goto_1
    if-eq v2, v1, :cond_3

    .line 3010
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->valueOf:Lcom/appsflyer/internal/AFh1lSDK;

    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private unregisterClient()Lcom/appsflyer/internal/AFd1jSDK;
    .locals 3

    .line 55
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1jSDK;

    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return-object v0
.end method

.method private final valueOf()Lcom/appsflyer/internal/AFf1eSDK;
    .locals 3

    .line 34
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFKeystoreWrapper:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFf1eSDK;

    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return-object v0
.end method

.method private static valueOf(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFd1oSDK;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 209
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    new-array v0, v1, [Lkotlin/Pair;

    const-string v2, "deviceInfo"

    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    invoke-static {p1}, Lcom/appsflyer/internal/AFd1eSDK;->values(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v3, "excs"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/2addr p1, v1

    const/16 v0, 0x26

    if-eqz p1, :cond_0

    const/16 p1, 0x4d

    goto :goto_0

    :cond_0
    const/16 p1, 0x26

    :goto_0
    if-eq p1, v0, :cond_1

    const/16 p1, 0x21

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-object p0
.end method

.method private static final valueOf(Lcom/appsflyer/internal/AFd1fSDK;)V
    .locals 2

    .line 71
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->i()V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->i()V

    :goto_1
    sget p0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private final valueOf(Lcom/appsflyer/internal/AFh1lSDK;)Z
    .locals 13

    .line 247
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "af_send_exc_to_server_window"

    invoke-interface {v2, v5, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v5

    .line 10053
    iget-wide v7, p1, Lcom/appsflyer/internal/AFh1lSDK;->AFKeystoreWrapper:J

    .line 232
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v11, 0x0

    cmp-long v12, v7, v9

    if-gez v12, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eq v7, v2, :cond_5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    const/16 v3, 0xa

    cmp-long v4, v5, v0

    if-gez v4, :cond_2

    const/16 v0, 0xa

    goto :goto_2

    :cond_2
    const/16 v0, 0x4f

    :goto_2
    if-eq v0, v3, :cond_5

    .line 242
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    const/4 v1, -0x1

    const-string v3, "af_send_exc_min"

    invoke-interface {v0, v3, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    .line 247
    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v1, v1, 0x2

    .line 243
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1gSDK;->valueOf()I

    move-result v1

    if-ge v1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eq v0, v2, :cond_5

    .line 247
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1fSDK;->values(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result p1

    return p1

    :cond_5
    return v11
.end method

.method public static final synthetic values(Lcom/appsflyer/internal/AFd1fSDK;)Lcom/appsflyer/internal/AFd1nSDK;
    .locals 2

    .line 30
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1nSDK;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static final values(Lcom/appsflyer/internal/AFd1fSDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 61
    sget v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v3, v3, 0x41

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v3, v3, 0x2

    .line 60
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 61
    :cond_2
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    if-eq v1, v2, :cond_4

    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/appsflyer/internal/AFd1gSDK;->values(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    :goto_4
    return-void
.end method

.method private final values(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10016
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    .line 217
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Authorization"

    .line 219
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 220
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->unregisterClient()Lcom/appsflyer/internal/AFd1jSDK;

    move-result-object p2

    const/16 v1, 0x7d0

    .line 10016
    invoke-interface {p2, v0, p1, v1}, Lcom/appsflyer/internal/AFd1jSDK;->AFKeystoreWrapper([BLjava/util/Map;I)V

    sget p1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x6

    if-nez p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 p1, 0x26

    :goto_0
    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private final values(Lcom/appsflyer/internal/AFh1lSDK;)Z
    .locals 2

    .line 271
    new-instance v0, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->registerClient:Ljava/lang/String;

    .line 12041
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1lSDK;->values:Ljava/lang/String;

    const-string v1, ""

    .line 271
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFd1cSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method private final declared-synchronized w()V
    .locals 8

    monitor-enter p0

    .line 176
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    .line 167
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->registerClient()Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v3, v2, :cond_1

    goto :goto_3

    .line 7049
    :cond_1
    iget v3, v0, Lcom/appsflyer/internal/AFh1lSDK;->AFInAppEventType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    const-string v3, "af_send_exc_to_server_window"

    invoke-interface {v1, v3}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->d()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v3

    const-string v4, "af_send_exc_to_server_window"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 181
    :cond_4
    sget v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 176
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFh1lSDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 181
    :try_start_2
    throw v0

    .line 176
    :cond_5
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFh1lSDK;)V

    .line 179
    :goto_2
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFh1lSDK;)Z

    move-result v1

    .line 181
    :goto_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;

    if-eqz v0, :cond_6

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;->onConfigurationChanged(Z)V

    .line 176
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFd1gSDK;
    .locals 2

    .line 52
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1gSDK;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1fSDK;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFd1gSDK;

    :goto_1
    return-object v0
.end method

.method public final AFKeystoreWrapper()V
    .locals 2

    .line 82
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$rhq9ti25gQOzWs9DyoyiHcFzNEw;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$rhq9ti25gQOzWs9DyoyiHcFzNEw;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x42

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return-void
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;)V
    .locals 3

    .line 70
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v2, :cond_1

    .line 69
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$2iwzUuXw5eveW4avBOQXo7bEOtk;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$2iwzUuXw5eveW4avBOQXo7bEOtk;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/16 p1, 0x55

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1fSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$2iwzUuXw5eveW4avBOQXo7bEOtk;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$2iwzUuXw5eveW4avBOQXo7bEOtk;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final values()V
    .locals 2

    .line 76
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$inciV4YJp1-k_oGwuOFfBDkp3Vw;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$inciV4YJp1-k_oGwuOFfBDkp3Vw;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$inciV4YJp1-k_oGwuOFfBDkp3Vw;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$inciV4YJp1-k_oGwuOFfBDkp3Vw;-><init>(Lcom/appsflyer/internal/AFd1fSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final values(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 58
    sget v0, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1fSDK;->AFLogger()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$WA0A5Tz7Be8w6pi80N5D7lrrJqQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsflyer/internal/-$$Lambda$AFd1fSDK$WA0A5Tz7Be8w6pi80N5D7lrrJqQ;-><init>(Lcom/appsflyer/internal/AFd1fSDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget p1, Lcom/appsflyer/internal/AFd1fSDK;->v:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1fSDK;->force:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
