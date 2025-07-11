.class public final Lcom/appsflyer/internal/AFf1mSDK;
.super Lcom/appsflyer/internal/AFf1tSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFf1tSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final afDebugLog:Ljava/util/UUID;

.field private final afInfoLog:Z

.field private final force:Lcom/appsflyer/internal/AFe1zSDK;

.field private i:Ljava/lang/String;

.field public registerClient:Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;Ljava/util/UUID;Landroid/net/Uri;)V
    .locals 12

    .line 44
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    sget-object v3, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-direct {p0, v0, v2, p1, v3}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1zSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->force:Lcom/appsflyer/internal/AFe1zSDK;

    .line 51
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1mSDK;->afDebugLog:Ljava/util/UUID;

    .line 55
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 56
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x2

    :try_start_1
    new-array v0, p2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v4

    sget-object p1, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    const v2, -0x1096f4d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float p1, v3, p1

    add-int/lit8 p1, p1, 0x24

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-char v3, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    invoke-static {p1, v3, v5}, Lcom/appsflyer/internal/AFc1fSDK;->AFInAppEventType(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v3, p2, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    const-class v5, Lcom/appsflyer/internal/AFc1jSDK;

    aput-object v5, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    const v2, -0x791a7067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, ""

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    invoke-static {v4, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->AFInAppEventType(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v6, "values"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :try_start_4
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    const v2, -0x4d58146f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x33

    const v6, 0xb9b5

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    sub-int/2addr v6, v11

    int-to-char v6, v6

    invoke-static {v3, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x24

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->AFInAppEventType(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v6, "AFInAppEventType"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :try_start_5
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    const v6, -0x55ec179f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    const v3, 0xb9b4

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int/2addr v3, v7

    int-to-char v3, v3

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x24

    invoke-static {v2, v3, v7}, Lcom/appsflyer/internal/AFc1fSDK;->AFInAppEventType(ICI)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v3, "AFInAppEventParameterName"

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :try_start_6
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_8

    .line 61
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 62
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->v:Ljava/lang/String;

    .line 63
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1mSDK;->w:Ljava/lang/String;

    .line 64
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1mSDK;->i:Ljava/lang/String;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    throw p2

    :cond_4
    throw p1

    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :cond_5
    throw p1

    :catchall_2
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    throw p2

    :cond_6
    throw p1

    :catchall_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    throw p2

    :cond_7
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "OneLinkValidator: reflection init failed"

    .line 68
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_8
    :goto_4
    iput-boolean v4, p0, Lcom/appsflyer/internal/AFf1mSDK;->afInfoLog:Z

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public final afInfoLog()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->afInfoLog:Z

    return v0
.end method

.method protected final force()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final unregisterClient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->force:Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1mSDK;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1mSDK;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1mSDK;->afDebugLog:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/appsflyer/internal/AFe1zSDK;->values(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object p1

    return-object p1
.end method

.method public final valueOf()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->valueOf()V

    .line 95
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->registerClient:Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;

    if-eqz v0, :cond_5

    .line 1236
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    .line 1101
    sget-object v2, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    if-ne v1, v2, :cond_0

    .line 2107
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v1, :cond_0

    .line 3107
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    .line 1102
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;->AFInAppEventType(Ljava/util/Map;)V

    return-void

    .line 1104
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->d()Ljava/lang/Throwable;

    move-result-object v1

    .line 1105
    instance-of v2, v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    const-string v3, "Can\'t get OneLink data"

    if-eqz v2, :cond_3

    .line 1108
    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Can\'t parse one link data"

    .line 1109
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 3120
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1mSDK;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 3121
    :goto_0
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 4120
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1mSDK;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 4121
    :goto_1
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final values()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1mSDK;->v:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
