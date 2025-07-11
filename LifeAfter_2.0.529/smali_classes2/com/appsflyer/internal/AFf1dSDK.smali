.class public final Lcom/appsflyer/internal/AFf1dSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1dSDK$AFa1zSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0003\u001a\u00020\u00088\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00058GX\u0087\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u0007R\u001b\u0010\r\u001a\u00020\u00058GX\u0087\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000b\u001a\u0004\u0008\u000c\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000e8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000f"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFf1dSDK;",
        "",
        "",
        "valueOf",
        "()J",
        "",
        "values",
        "()Z",
        "Lcom/appsflyer/internal/AFd1rSDK;",
        "Lcom/appsflyer/internal/AFd1rSDK;",
        "AFInAppEventType",
        "Lkotlin/Lazy;",
        "AFInAppEventParameterName",
        "AFKeystoreWrapper",
        "Lcom/appsflyer/internal/AFf1gSDK;",
        "Lcom/appsflyer/internal/AFf1gSDK;",
        "p0",
        "p1",
        "<init>",
        "(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFf1gSDK;)V",
        "AFa1zSDK"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AFKeystoreWrapper:J

.field public static final AFa1zSDK:Lcom/appsflyer/internal/AFf1dSDK$AFa1zSDK;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1gSDK;

.field private final AFInAppEventType:Lkotlin/Lazy;

.field private final valueOf:Lkotlin/Lazy;

.field private final values:Lcom/appsflyer/internal/AFd1rSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appsflyer/internal/AFf1dSDK$AFa1zSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFf1dSDK$AFa1zSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFf1dSDK;->AFa1zSDK:Lcom/appsflyer/internal/AFf1dSDK$AFa1zSDK;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appsflyer/internal/AFf1dSDK;->AFKeystoreWrapper:J

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFf1gSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1dSDK;->values:Lcom/appsflyer/internal/AFd1rSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1gSDK;

    .line 14
    new-instance p1, Lcom/appsflyer/internal/AFf1dSDK$1;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFf1dSDK$1;-><init>(Lcom/appsflyer/internal/AFf1dSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventType:Lkotlin/Lazy;

    .line 18
    new-instance p1, Lcom/appsflyer/internal/AFf1dSDK$2;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFf1dSDK$2;-><init>(Lcom/appsflyer/internal/AFf1dSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1dSDK;->valueOf:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic values(Lcom/appsflyer/internal/AFf1dSDK;)Lcom/appsflyer/internal/AFd1rSDK;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1dSDK;->values:Lcom/appsflyer/internal/AFd1rSDK;

    return-object p0
.end method


# virtual methods
.method public final AFInAppEventParameterName()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1dSDK;->valueOf:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final AFInAppEventType()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventType:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final valueOf()J
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1dSDK;->values:Lcom/appsflyer/internal/AFd1rSDK;

    const-string v1, "com.appsflyer.rc.cache.max-age-fallback"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/appsflyer/internal/AFf1dSDK;

    .line 43
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t read maxAgeFallback from Manifest: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    sget-wide v0, Lcom/appsflyer/internal/AFf1dSDK;->AFKeystoreWrapper:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 44
    :goto_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 48
    :cond_1
    sget-wide v0, Lcom/appsflyer/internal/AFf1dSDK;->AFKeystoreWrapper:J

    return-wide v0
.end method

.method public final values()Z
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1gSDK;

    .line 1062
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, v0

    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "active config is missing - fetching from CDN"

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFg1mSDK;->i$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1

    .line 1068
    :cond_0
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2012
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1jSDK;->AFInAppEventParameterName()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1gSDK;

    .line 2075
    iget-wide v5, v5, Lcom/appsflyer/internal/AFf1gSDK;->valueOf:J

    sub-long/2addr v3, v5

    .line 60
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appsflyer/internal/AFf1dSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFf1gSDK;

    .line 2082
    iget-wide v6, v6, Lcom/appsflyer/internal/AFf1gSDK;->AFKeystoreWrapper:J

    .line 60
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    if-nez v0, :cond_3

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method
