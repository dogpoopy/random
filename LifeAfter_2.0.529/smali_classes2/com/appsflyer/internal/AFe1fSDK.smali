.class public abstract Lcom/appsflyer/internal/AFe1fSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "*>;>;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/internal/AFe1cSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static final AFLogger:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final AFInAppEventParameterName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/appsflyer/internal/AFe1bSDK;",
            ">;"
        }
    .end annotation
.end field

.field public final AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

.field public AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

.field private d:Ljava/lang/Throwable;

.field private e:J

.field private final registerClient:I

.field private final unregisterClient:Ljava/lang/String;

.field private v:Z

.field public final valueOf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/appsflyer/internal/AFe1bSDK;",
            ">;"
        }
    .end annotation
.end field

.field public volatile values:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFe1fSDK;->AFLogger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName:Ljava/util/Set;

    .line 39
    sget-object v0, Lcom/appsflyer/internal/AFe1fSDK;->AFLogger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->registerClient:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Z

    .line 51
    iput v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    .line 66
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    .line 67
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 69
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    return-void

    .line 71
    :cond_0
    iget p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->registerClient:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1fSDK;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;)I"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    iget v0, v0, Lcom/appsflyer/internal/AFe1bSDK;->afErrorLog:I

    iget-object v1, p1, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    iget v1, v1, Lcom/appsflyer/internal/AFe1bSDK;->afErrorLog:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    iget-object v1, p1, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 287
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->registerClient:I

    iget p1, p1, Lcom/appsflyer/internal/AFe1fSDK;->registerClient:I

    sub-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public AFInAppEventParameterName()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Z

    return-void
.end method

.method protected abstract AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected AFInAppEventType(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected abstract AFKeystoreWrapper()J
.end method

.method protected final AFLogger()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->v:Z

    return v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->e()Lcom/appsflyer/internal/AFe1cSDK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/appsflyer/internal/AFe1fSDK;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1fSDK;)I

    move-result p1

    return p1
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->d:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final e()Lcom/appsflyer/internal/AFe1cSDK;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AppsFlyer"

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    .line 202
    iput-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->d:Ljava/lang/Throwable;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    iget v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFe1cSDK;

    move-result-object v2

    .line 208
    iput-object v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/appsflyer/internal/AFe1fSDK;->e:J

    .line 217
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->valueOf()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 211
    :try_start_1
    iput-object v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->d:Ljava/lang/Throwable;

    .line 212
    sget-object v3, Lcom/appsflyer/internal/AFe1cSDK;->values:Lcom/appsflyer/internal/AFe1cSDK;

    iput-object v3, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    .line 213
    invoke-virtual {p0, v2}, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType(Ljava/lang/Throwable;)V

    .line 214
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/appsflyer/internal/AFe1fSDK;->e:J

    .line 217
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->valueOf()V

    .line 218
    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFe1fSDK;

    .line 304
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    iget-object v2, p1, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    if-eq v1, v2, :cond_2

    return v0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 313
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    iget v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->registerClient:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1fSDK;->unregisterClient:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->registerClient:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected valueOf()V
    .locals 0

    return-void
.end method

.method protected abstract values()Z
.end method
