.class public final Lcom/appsflyer/internal/AFg1nSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFg1qSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static afErrorLog:J = 0x9963c7917d813f3L

.field private static afRDLog:I = 0x0

.field private static afWarnLog:I = 0x1


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1zSDK;

.field private final AFInAppEventType:Lcom/appsflyer/internal/AFi1fSDK;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1vSDK;

.field private final AFLogger:Lcom/appsflyer/internal/AFg1zSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFb1gSDK;

.field private final afVerboseLog:Lkotlin/Lazy;

.field private final d:Lcom/appsflyer/internal/AFg1bSDK;

.field private final e:Lcom/appsflyer/internal/AFd1xSDK;

.field private final force:Lkotlin/Lazy;

.field private final i:Lcom/appsflyer/internal/AFd1lSDK;

.field private final registerClient:Lcom/appsflyer/internal/AFh1gSDK;

.field private final unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

.field private final v:Lcom/appsflyer/internal/AFd1sSDK;

.field private final valueOf:Landroid/content/Context;

.field private final values:Lcom/appsflyer/internal/AFi1xSDK;

.field private final w:Lcom/appsflyer/internal/AFg1sSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFd1vSDK;Lcom/appsflyer/internal/AFi1fSDK;Lcom/appsflyer/internal/AFb1zSDK;Lcom/appsflyer/internal/AFg1bSDK;Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFh1gSDK;Lcom/appsflyer/internal/AFg1zSDK;Lcom/appsflyer/internal/AFb1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFg1sSDK;Lcom/appsflyer/internal/AFd1sSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->values:Lcom/appsflyer/internal/AFi1xSDK;

    .line 80
    iput-object p3, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1vSDK;

    .line 81
    iput-object p4, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1fSDK;

    .line 82
    iput-object p5, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1zSDK;

    .line 83
    iput-object p6, p0, Lcom/appsflyer/internal/AFg1nSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    .line 84
    iput-object p7, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    .line 85
    iput-object p8, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 86
    iput-object p9, p0, Lcom/appsflyer/internal/AFg1nSDK;->registerClient:Lcom/appsflyer/internal/AFh1gSDK;

    .line 87
    iput-object p10, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFLogger:Lcom/appsflyer/internal/AFg1zSDK;

    .line 88
    iput-object p11, p0, Lcom/appsflyer/internal/AFg1nSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1gSDK;

    .line 89
    iput-object p12, p0, Lcom/appsflyer/internal/AFg1nSDK;->i:Lcom/appsflyer/internal/AFd1lSDK;

    .line 90
    iput-object p13, p0, Lcom/appsflyer/internal/AFg1nSDK;->w:Lcom/appsflyer/internal/AFg1sSDK;

    .line 91
    iput-object p14, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 94
    sget-object p1, Lcom/appsflyer/internal/AFg1nSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFg1nSDK$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->force:Lkotlin/Lazy;

    .line 95
    sget-object p1, Lcom/appsflyer/internal/AFg1nSDK$4;->AFInAppEventType:Lcom/appsflyer/internal/AFg1nSDK$4;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->afVerboseLog:Lkotlin/Lazy;

    return-void
.end method

.method private final AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 502
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "collectAndroidId"

    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x3b

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    :goto_0
    if-eq v1, v3, :cond_1

    goto :goto_3

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 509
    sget v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v4, v4, 0x2

    .line 502
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 509
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    .line 504
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->force()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 505
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->v()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 512
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const/16 v0, 0x52

    .line 509
    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 512
    throw p1

    :cond_6
    move-object p1, v0

    :cond_7
    :goto_4
    return-object p1
.end method

.method private final AFInAppEventParameterName()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 95
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->afVerboseLog:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private final AFInAppEventParameterName(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v2, "yyyy-MM-dd_HHmmssZ"

    .line 3020
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "installDate"

    const-string v4, "UTC"

    .line 4015
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4016
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x36

    if-nez p1, :cond_0

    const/16 p1, 0x36

    goto :goto_0

    :cond_0
    const/16 p1, 0x47

    :goto_0
    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Exception while collecting install date. "

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 603
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "phone"

    .line 603
    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    :goto_1
    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eq p0, v1, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x46

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private AFInAppEventParameterName(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 784
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "collectFacebookAttrId"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_8

    .line 784
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v4, 0x23

    if-nez v0, :cond_2

    const/16 v0, 0x23

    goto :goto_1

    :cond_2
    const/16 v0, 0x59

    :goto_1
    const-string v5, "com.facebook.katana"

    const-string v6, "Exception while collecting facebook\'s attribution ID. "

    if-eq v0, v4, :cond_3

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 774
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    :goto_2
    check-cast p2, Ljava/lang/String;

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_4

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 774
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 781
    :goto_3
    invoke-static {v6, p2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 776
    :goto_4
    check-cast p2, Ljava/lang/Throwable;

    const-string v0, "com.facebook.katana not found"

    invoke-static {v0, p2, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 778
    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :goto_5
    move-object p2, v3

    :goto_6
    if-eqz p2, :cond_5

    .line 774
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    goto :goto_7

    :cond_4
    const/4 v1, 0x0

    :goto_7
    const-string v0, "fb"

    .line 784
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 774
    throw p1

    :cond_5
    :goto_8
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x47

    if-eqz p1, :cond_6

    const/16 p1, 0x47

    goto :goto_9

    :cond_6
    const/16 p1, 0x43

    :goto_9
    if-eq p1, p2, :cond_7

    return-void

    :cond_7
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method private AFInAppEventParameterName(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "ro.product.cpu.abi"

    .line 280
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.product.cpu.abi2"

    .line 281
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os.arch"

    .line 282
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.build.display.id"

    .line 283
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_display_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 296
    sget p2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0x63

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    const/4 v1, 0x2

    rem-int/2addr p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    const-string v4, "appsFlyerCount"

    if-eq p2, v2, :cond_1

    .line 285
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient(Ljava/util/Map;)V

    .line 288
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 9164
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {p2, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result p2

    if-gt p2, v1, :cond_3

    goto :goto_2

    .line 285
    :cond_1
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient(Ljava/util/Map;)V

    .line 288
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 9164
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {p2, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result p2

    const/16 v2, 0xf

    if-gt p2, v1, :cond_2

    const/16 p2, 0x21

    goto :goto_1

    :cond_2
    const/16 p2, 0xf

    :goto_1
    if-eq p2, v2, :cond_3

    .line 289
    :goto_2
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1fSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFi1fSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 288
    sget p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p2, p2, 0x7d

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/2addr p2, v1

    .line 292
    :cond_3
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFb1zSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-interface {p2, v1}, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "dim"

    .line 293
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceData"

    .line 296
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;
    .locals 3

    .line 94
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->force:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/AppsFlyerProperties;

    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x47

    if-nez v1, :cond_0

    const/16 v1, 0x43

    goto :goto_0

    :cond_0
    const/16 v1, 0x47

    :goto_0
    if-eq v1, v2, :cond_1

    const/16 v1, 0x35

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return-object v0
.end method

.method private static AFInAppEventType(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 874
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 853
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 874
    throw p0

    :cond_1
    if-nez p0, :cond_2

    :goto_1
    return-object v2

    .line 858
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 859
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/InputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 860
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    const-string v4, "Found PreInstall property!"

    .line 861
    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 869
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 871
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object v3, v2

    .line 866
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v3, :cond_3

    .line 869
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    .line 871
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_0
    move-object v3, v2

    .line 864
    :catch_1
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PreInstall file wasn\'t found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v3, :cond_3

    .line 869
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 853
    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/2addr p0, v1

    .line 874
    :cond_3
    :goto_4
    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/2addr p0, v1

    return-object v2

    :catchall_5
    move-exception p0

    if-nez v3, :cond_5

    .line 853
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/2addr p1, v1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_5

    .line 869
    :cond_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception p1

    .line 871
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 809
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 803
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 804
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    .line 805
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 803
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-object p0

    .line 803
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 807
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 4

    .line 194
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 194
    throw p1

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 188
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFi1fSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFi1fSDK;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 192
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "error while getting sensors data"

    .line 190
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected exception from AFSensorManager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    :cond_3
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    return-void
.end method

.method private AFInAppEventType(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "prev_event_name"

    .line 395
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const-string v1, ""

    .line 0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "prev_event_timestamp"

    if-eqz v1, :cond_0

    .line 387
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 388
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const-wide/16 v5, -0x1

    invoke-interface {v4, v2, v5, v6}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 389
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prev_event"

    .line 390
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {p1, v0, p2}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x5e

    if-nez p1, :cond_1

    const/16 p1, 0x52

    goto :goto_0

    :cond_1
    const/16 p1, 0x5e

    :goto_0
    if-eq p1, p2, :cond_2

    const/4 p1, 0x5

    :try_start_2
    div-int/lit8 p1, p1, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "Error while processing previous event."

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static AFInAppEventType(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 684
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x61

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    const-string v2, "af_preinstalled"

    const-string v3, ""

    if-eq v0, v1, :cond_1

    .line 0
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method private AFKeystoreWrapper(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    const-string v3, "appsFlyerFirstInstall"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x58

    if-nez v1, :cond_0

    const/16 v5, 0x51

    goto :goto_0

    :cond_0
    const/16 v5, 0x58

    :goto_0
    if-eq v5, v4, :cond_4

    .line 427
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v4, 0x17

    if-nez v1, :cond_1

    const/16 v1, 0x40

    goto :goto_1

    :cond_1
    const/16 v1, 0x17

    :goto_1
    if-eq v1, v4, :cond_2

    .line 418
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient()Z

    move-result v1

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 427
    throw p1

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const-string v1, "AppsFlyer: first launch detected"

    .line 419
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 420
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_3

    .line 418
    :cond_3
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    move-object v1, v0

    .line 424
    :goto_3
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {p1, v3, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_4
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v2, p1

    check-cast v2, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "AppsFlyer: first launch date: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFg1mSDK;->i$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 427
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 621
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v3, "referrer"

    if-nez v0, :cond_3

    .line 609
    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_3
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v0, 0x0

    const-string v4, "extraReferrers"

    invoke-interface {p2, v4, v0}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 615
    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p2, p2, 0x29

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    .line 619
    :cond_4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {p2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p2

    .line 620
    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eq v5, v2, :cond_6

    goto :goto_4

    .line 621
    :cond_6
    sget v5, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v5, v5, 0x5d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v5, v5, 0x2

    .line 620
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_a

    .line 621
    sget v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v4, v4, 0x7

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x1

    :goto_6
    if-eq v1, v2, :cond_a

    goto :goto_7

    :catchall_0
    move-exception p1

    throw p1

    .line 620
    :cond_9
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 621
    :goto_7
    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private AFKeystoreWrapper(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 270
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "platformextension"

    const-string v4, ""

    if-eq v0, v1, :cond_1

    .line 0
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1gSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    goto :goto_2

    .line 270
    :cond_1
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1gSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x13

    if-eqz p2, :cond_2

    const/16 p2, 0x2f

    goto :goto_1

    :cond_2
    const/16 p2, 0x13

    :goto_1
    if-eq p2, v0, :cond_3

    .line 270
    :goto_2
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->values:Lcom/appsflyer/internal/AFi1xSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFi1xSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object p2

    const-string v0, "platform_extension_v2"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private static AFLogger(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 539
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 534
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "\u1415\u1477\u52c0\udb91\ub1d0\u3d53\u0432\ufe1d\uabf5"

    invoke-static {v3, v1, v2}, Lcom/appsflyer/internal/AFg1nSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "device"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "product"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "model"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "deviceType"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private AFLogger()Z
    .locals 4

    .line 435
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "sentSuccessfully"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x3d

    if-eqz v1, :cond_2

    const/16 v1, 0x3d

    goto :goto_2

    :cond_2
    const/16 v1, 0x41

    :goto_2
    if-eq v1, v3, :cond_3

    return v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0
.end method

.method private AFLogger$LogLevel(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 740
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "didConfigureTokenRefreshService="

    const-string v4, ""

    if-eqz v0, :cond_2

    .line 0
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1tSDK;->valueOf(Landroid/content/Context;)Z

    move-result v0

    .line 734
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 v3, 0x1c

    if-nez v0, :cond_1

    const/16 v0, 0x1c

    goto :goto_1

    :cond_1
    const/16 v0, 0x43

    :goto_1
    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 740
    :cond_2
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1tSDK;->valueOf(Landroid/content/Context;)Z

    move-result v0

    .line 734
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 735
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 736
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "tokenRefreshConfigured"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/4 v1, 0x1

    .line 739
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1tSDK;->values(Lcom/appsflyer/internal/AFd1xSDK;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "registeredUninstall"

    .line 740
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private AFVersionDeclaration(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 711
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, ""

    if-eq v0, v2, :cond_2

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->i:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 710
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x45

    if-eqz v0, :cond_1

    const/16 v4, 0x45

    goto :goto_1

    :cond_1
    const/16 v4, 0x4b

    :goto_1
    if-eq v4, v2, :cond_4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 0
    :cond_2
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->i:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0, v4}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_4

    .line 720
    :cond_4
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    const-string v4, "uid"

    if-nez v2, :cond_5

    .line 711
    :try_start_2
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x1d

    div-int/2addr p1, v1

    goto :goto_2

    :cond_5
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    .line 714
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR: could not get uid "

    .line 715
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 11

    const/16 v0, 0x62

    if-eqz p0, :cond_0

    const/16 v1, 0x21

    goto :goto_0

    :cond_0
    const/16 v1, 0x62

    :goto_0
    const/4 v2, 0x0

    if-eq v1, v0, :cond_3

    .line 21078
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->$10:I

    const/16 v1, 0x53

    add-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->$11:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x4e

    goto :goto_1

    :cond_1
    const/16 v0, 0x53

    :goto_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v0, 0x3e

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_3
    :goto_2
    check-cast p0, [C

    .line 21062
    new-instance v0, Lcom/appsflyer/internal/AFj1oSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFj1oSDK;-><init>()V

    .line 21065
    sget-wide v3, Lcom/appsflyer/internal/AFg1nSDK;->afErrorLog:J

    const-wide v5, 0x77c785fa92797c12L    # 9.708796586141944E268

    xor-long/2addr v3, v5

    invoke-static {v3, v4, p0, p1}, Lcom/appsflyer/internal/AFj1oSDK;->values(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    .line 21070
    iput p1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    :goto_3
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 21078
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->$11:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    .line 21072
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFInAppEventParameterName:I

    .line 21073
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    iget v3, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    aget-char v3, p0, v3

    iget v4, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    rem-int/2addr v4, p1

    aget-char v4, p0, v4

    xor-int/2addr v3, v4

    int-to-long v3, v3

    iget v7, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFInAppEventParameterName:I

    int-to-long v7, v7

    sget-wide v9, Lcom/appsflyer/internal/AFg1nSDK;->afErrorLog:J

    xor-long/2addr v9, v5

    mul-long v7, v7, v9

    xor-long/2addr v3, v7

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, p0, v1

    .line 21070
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    goto :goto_3

    .line 21078
    :cond_4
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v2

    return-void
.end method

.method private static afDebugLog(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 703
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "lang"

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 703
    throw p0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 0
    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 691
    :goto_1
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "Exception while collecting display language name. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    :try_start_3
    const-string v0, "lang_code"

    .line 695
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 703
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_3

    :catch_1
    move-exception v0

    .line 697
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "Exception while collecting display language code. "

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    :try_start_4
    const-string v0, "country"

    .line 701
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 703
    check-cast p0, Ljava/lang/Throwable;

    const-string v0, "Exception while collecting country name. "

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private afErrorLog(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 642
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->w:Lcom/appsflyer/internal/AFg1sSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1sSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p1, v1, :cond_1

    const/16 p1, 0x57

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method private afErrorLogForExcManagerOnly(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 744
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    const/16 v1, 0x21

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x5e

    goto :goto_0

    :cond_0
    const/16 v2, 0x21

    :goto_0
    if-eq v2, v1, :cond_1

    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 20028
    iget-object v1, v0, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    const-string v2, "amazon_aid"

    .line 745
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20033
    iget-object v0, v0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Ljava/lang/Boolean;

    .line 746
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon_aid_limit"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    :cond_1
    return-void
.end method

.method private final afInfoLog(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 566
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 564
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v0

    const/16 v1, 0x38

    if-nez v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 566
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x44

    if-eqz v0, :cond_2

    const/16 v0, 0x44

    goto :goto_1

    :cond_2
    const/16 v0, 0x48

    :goto_1
    const-string v2, "batteryLevel"

    if-eq v0, v1, :cond_3

    .line 565
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1vSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;

    move-result-object v0

    .line 18010
    iget v0, v0, Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;->values:F

    .line 566
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1vSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;

    move-result-object v0

    .line 18010
    iget v0, v0, Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;->values:F

    .line 566
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3e

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private afLogForce(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 753
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "is_stop_tracking_used"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x53

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x53

    :goto_0
    if-eq v0, v2, :cond_3

    .line 753
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x22

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    goto :goto_1

    :cond_1
    const/16 v0, 0x5e

    :goto_1
    const-string v3, "istu"

    if-eq v0, v2, :cond_2

    .line 752
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v0

    .line 753
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v0

    .line 753
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x1e

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method private afRDLog(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 670
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1rSDK;->values()Ljava/lang/String;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v2, v1}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 656
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_3

    .line 670
    :cond_2
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v2, 0xd

    if-eqz v1, :cond_3

    const/16 v6, 0x38

    goto :goto_2

    :cond_3
    const/16 v6, 0xd

    :goto_2
    if-eq v6, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    const/4 v5, 0x1

    :goto_5
    if-eq v5, v4, :cond_6

    sget v5, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v5, v5, 0x1b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "af_latestchannel"

    .line 659
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 663
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "af_installstore"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_8
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->i()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    if-eqz v1, :cond_9

    const/16 v5, 0x4e

    goto :goto_6

    :cond_9
    const/16 v5, 0x17

    :goto_6
    if-eq v5, v2, :cond_a

    .line 667
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "af_preinstall_name"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_a
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    :cond_b
    if-eq v3, v4, :cond_c

    return-void

    :cond_c
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    .line 671
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "af_currentstore"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static afVerboseLog(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 637
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/appsflyer/internal/AFc1vSDK;->INSTANCE:Lcom/appsflyer/internal/AFc1vSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFc1vSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v0

    .line 634
    sget-object v1, Lcom/appsflyer/internal/AFc1vSDK;->INSTANCE:Lcom/appsflyer/internal/AFc1vSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFc1vSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 637
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_3

    .line 635
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x26

    if-lez v4, :cond_2

    const/16 v4, 0x17

    goto :goto_1

    :cond_2
    const/16 v4, 0x26

    :goto_1
    if-eq v4, v5, :cond_5

    .line 637
    sget v4, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v4, v4, 0x5f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    const-string v4, "originalAppsflyerId"

    const-string v5, "reinstallCounter"

    if-eq v2, v3, :cond_4

    .line 636
    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    .line 636
    :cond_4
    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method private afWarnLog(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 648
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "sdkExtension"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    const/4 v3, 0x1

    :cond_3
    if-nez v3, :cond_4

    .line 648
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 411
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eq v2, v1, :cond_1

    .line 412
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "AF_STORE"

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x3e

    if-eqz v1, :cond_2

    const/16 v1, 0x3e

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    :goto_1
    if-eq v1, v2, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private d(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    .line 16060
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 16061
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 376
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    .line 16238
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v3, "gcd"

    invoke-interface {v1, v3}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 377
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/16 v4, 0x4a

    if-nez v1, :cond_0

    const/16 v1, 0x31

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_3

    .line 379
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v4, 0x5f

    if-nez v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const/16 v1, 0x5f

    :goto_1
    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    :cond_4
    if-eq v6, v5, :cond_5

    goto :goto_4

    :cond_5
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 378
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 379
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .line 401
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    const-string v4, "INSTALL_STORE"

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 406
    :goto_1
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 406
    throw v0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 403
    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eq v1, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->d()Ljava/lang/String;

    move-result-object v3

    .line 405
    :goto_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4, v3}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_1
    move-exception v0

    .line 401
    throw v0
.end method

.method private e(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 367
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "oneLinkSlug"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkVersion"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 370
    sget v3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0x40

    if-eqz v3, :cond_0

    const/16 v3, 0x3d

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    :goto_0
    const-string v5, "onelink_id"

    .line 367
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 370
    throw p1

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eq v3, v0, :cond_3

    goto :goto_4

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x3e

    if-nez v0, :cond_4

    const/16 v0, 0x3e

    goto :goto_3

    :cond_4
    const/16 v0, 0x35

    :goto_3
    const-string v4, "onelink_ver"

    if-eq v0, v3, :cond_5

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    :goto_4
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_1
    move-exception p1

    .line 370
    throw p1
.end method

.method private force(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 628
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    .line 18066
    iget-wide v6, v0, Lcom/appsflyer/internal/AFg1bSDK;->i:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_4

    goto :goto_0

    .line 0
    :cond_1
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->d:Lcom/appsflyer/internal/AFg1bSDK;

    .line 18066
    iget-wide v6, v0, Lcom/appsflyer/internal/AFg1bSDK;->i:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eq v1, v5, :cond_3

    goto :goto_1

    .line 627
    :cond_3
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "prev_session_dur"

    .line 628
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    :cond_4
    :goto_1
    return-void
.end method

.method private final force()Z
    .locals 4

    .line 878
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "collectAndroidIdForceByUser"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x37

    if-nez v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    .line 879
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "collectIMEIForceByUser"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x1f

    if-eqz v0, :cond_4

    const/16 v0, 0x1f

    goto :goto_4

    :cond_4
    const/16 v0, 0x34

    :goto_4
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :cond_7
    :goto_5
    return v3
.end method

.method private getLevel(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFLogger:Lcom/appsflyer/internal/AFg1zSDK;

    .line 20065
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 759
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eq v4, v3, :cond_1

    goto :goto_2

    .line 760
    :cond_1
    sget v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v4, v4, 0x57

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v1, v3, :cond_4

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    .line 759
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    .line 760
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "appsflyerKey"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    :try_start_1
    array-length p1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    throw p1

    :cond_6
    :goto_4
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    :cond_7
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 7

    .line 442
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "preInstallName"

    if-nez v0, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    :try_start_0
    array-length v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eq v5, v3, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 442
    throw v0

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x34

    if-eqz v0, :cond_2

    const/16 v6, 0xf

    goto :goto_1

    :cond_2
    const/16 v6, 0x34

    :goto_1
    if-eq v6, v5, :cond_4

    .line 456
    :goto_2
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 440
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 456
    throw v0

    :cond_3
    return-object v0

    .line 441
    :cond_4
    iget-object v5, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v5, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 440
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    :goto_3
    if-eq v1, v3, :cond_6

    .line 442
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_2
    array-length v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 440
    throw v0

    .line 442
    :cond_6
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v4, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 444
    :cond_7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 456
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 446
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->w()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    if-nez v0, :cond_8

    const/16 v5, 0x32

    goto :goto_4

    :cond_8
    const/16 v5, 0x47

    :goto_4
    if-eq v5, v2, :cond_9

    .line 439
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "AF_PRE_INSTALL_NAME"

    .line 447
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_c

    .line 439
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eq v2, v3, :cond_b

    .line 450
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v1, v4, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v2, v4, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x5c

    :try_start_3
    div-int/2addr v2, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    .line 439
    throw v0

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 454
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object v0
.end method

.method private final i(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x47

    if-lt v0, v1, :cond_0

    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const/4 v1, 0x0

    if-eq v0, v2, :cond_2

    .line 574
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    const-string v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/app/UiModeManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/UiModeManager;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 577
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    :cond_3
    :goto_1
    const/16 v2, 0x36

    if-eqz v0, :cond_4

    const/16 v3, 0x1c

    goto :goto_2

    :cond_4
    const/16 v3, 0x36

    :goto_2
    if-eq v3, v2, :cond_5

    .line 576
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 577
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "tv"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/16 p1, 0x8

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    return-void
.end method

.method private static registerClient()Ljava/lang/String;
    .locals 9

    .line 249
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/16 v3, 0x58

    if-lt v1, v2, :cond_0

    const/16 v1, 0x54

    goto :goto_0

    :cond_0
    const/16 v1, 0x58

    :goto_0
    if-eq v1, v3, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 254
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long v3, v3, v1

    .line 255
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v5

    mul-long v5, v5, v1

    .line 264
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 258
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    mul-int v2, v2, v1

    int-to-long v3, v2

    .line 259
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    mul-int v0, v0, v1

    int-to-long v5, v0

    :goto_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    .line 261
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    long-to-double v2, v3

    .line 262
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v2, v2

    long-to-double v4, v5

    .line 263
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    double-to-long v0, v4

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private final registerClient(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 161
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "versionCode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 147
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v4, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v4

    .line 148
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v6, 0x30

    if-le v5, v4, :cond_0

    const/16 v4, 0x26

    goto :goto_0

    :cond_0
    const/16 v4, 0x30

    :goto_0
    if-eq v4, v6, :cond_4

    goto :goto_2

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 147
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v4, v1, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v4

    .line 148
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v5, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eq v4, v2, :cond_3

    goto :goto_3

    .line 150
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v4, v1, v5}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    :cond_4
    :goto_3
    :try_start_1
    const-string v1, "app_version_code"

    .line 152
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version_name"

    .line 153
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 4168
    iget-object v5, v4, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 5025
    iget-object v5, v5, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 5168
    iget-object v4, v4, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 6025
    iget-object v4, v4, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 5084
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4089
    invoke-static {v5, v4}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "targetSDKver"

    .line 154
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 6168
    iget-object v4, v4, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 7025
    iget-object v4, v4, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 7149
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 156
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v6, "date1"

    .line 157
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName()Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "date2"

    .line 158
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName()Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u1beb\u1b8d\u6439\u872c\u3051\u0bb1\u589c\u7f81\ua41b\u2498\uc7bb\u70d3\u648d\ue53b\u063e\ub16e\u2506\ua5a8\u46b7"

    .line 159
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/appsflyer/internal/AFg1nSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v4, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName()Ljava/text/SimpleDateFormat;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Exception while collecting app version data "

    .line 161
    invoke-static {v0, p1, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private final unregisterClient(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1vSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;

    move-result-object v0

    .line 15000
    iget v1, v0, Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;->values:F

    .line 16000
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 357
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "btl"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2f

    if-eqz v0, :cond_0

    const/16 v2, 0x2f

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    :goto_0
    if-eq v2, v1, :cond_1

    goto :goto_2

    .line 359
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "btch"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private unregisterClient()Z
    .locals 3

    .line 430
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x28

    if-nez v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return v2

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-nez v0, :cond_3

    const/16 v0, 0x17

    goto :goto_1

    :cond_3
    const/16 v0, 0x3b

    :goto_1
    if-eq v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private final v()Ljava/lang/String;
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v1, 0x0

    const-string v2, "androidIdCached"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 530
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object v2

    :catch_0
    move-exception v2

    .line 524
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/16 v2, 0xe

    if-eqz v0, :cond_2

    const/16 v3, 0xe

    goto :goto_2

    :cond_2
    const/16 v3, 0x25

    :goto_2
    if-eq v3, v2, :cond_3

    return-object v1

    .line 530
    :cond_3
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 527
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "use cached AndroidId: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private final v(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1iSDK;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    if-eq v0, v1, :cond_1

    .line 583
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "inst_app"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    :cond_1
    return-void
.end method

.method private static valueOf()J
    .locals 4

    .line 244
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_1
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method private static valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 795
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "CACHED_CHANNEL"

    if-eq v0, v1, :cond_2

    .line 790
    invoke-interface {p0, v3, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x5c

    if-eqz v0, :cond_1

    const/16 v4, 0x5c

    goto :goto_1

    :cond_1
    const/16 v4, 0x13

    :goto_1
    if-eq v4, v2, :cond_4

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 795
    throw p0

    .line 790
    :cond_2
    invoke-interface {p0, v3, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    if-eqz v0, :cond_3

    const/16 v4, 0x5e

    goto :goto_2

    :cond_3
    const/16 v4, 0x28

    :goto_2
    if-eq v4, v2, :cond_5

    .line 791
    :cond_4
    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    .line 794
    :cond_5
    :goto_3
    invoke-interface {p0, v3, p1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    return-object p1
.end method

.method private final valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 812
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private static valueOf(Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18106
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "eventName"

    .line 678
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19070
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    :goto_0
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "eventValue"

    .line 679
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private valueOf(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "deviceTrackingDisabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 478
    sget p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p2, p2, 0x53

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    const-string v0, "true"

    if-eqz p2, :cond_1

    .line 465
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    array-length p1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 478
    throw p1

    .line 465
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 467
    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->AFLogger:Lcom/appsflyer/internal/AFg1zSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v1

    .line 468
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const/16 v6, 0x21

    if-nez v2, :cond_6

    const/16 v2, 0x21

    goto :goto_4

    :cond_6
    const/4 v2, 0x7

    :goto_4
    if-eq v2, v6, :cond_7

    goto :goto_7

    .line 465
    :cond_7
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v6, 0xf

    if-nez v2, :cond_8

    const/16 v2, 0x26

    goto :goto_5

    :cond_8
    const/16 v2, 0xf

    :goto_5
    const-string v7, "imei"

    .line 469
    invoke-interface {p1, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v2, v6, :cond_9

    :try_start_1
    array-length v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 465
    throw p1

    :cond_9
    :goto_6
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    .line 471
    :cond_a
    :goto_7
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x3b

    if-eqz p2, :cond_b

    const/16 v2, 0xa

    goto :goto_8

    :cond_b
    const/16 v2, 0x3b

    :goto_8
    if-eq v2, v1, :cond_c

    .line 473
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v2, "androidIdCached"

    invoke-interface {v1, v2, p2}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android_id"

    .line 474
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    const-string p2, "Android ID was not collected."

    .line 476
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 478
    :goto_9
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 479
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 17020
    iget-object v2, p2, Lcom/appsflyer/internal/AFa1aSDK;->values:Ljava/lang/Boolean;

    .line 480
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "isManual"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17028
    iget-object v2, p2, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    .line 481
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "val"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17033
    iget-object p2, p2, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Ljava/lang/Boolean;

    if-eqz p2, :cond_d

    const-string v0, "isLat"

    .line 484
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string p2, "oaid"

    .line 486
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private static values(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 847
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 841
    :try_start_0
    array-length v0, v3

    const/16 v0, 0x32

    if-eqz p0, :cond_1

    const/16 v4, 0x32

    goto :goto_1

    :cond_1
    const/16 v4, 0x13

    :goto_1
    if-eq v4, v0, :cond_3

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_5

    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 842
    new-instance v0, Ljava/io/File;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 845
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    :cond_5
    :goto_3
    sget p0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x6

    if-nez p0, :cond_6

    const/4 p0, 0x6

    goto :goto_4

    :cond_6
    const/16 p0, 0x3a

    :goto_4
    if-eq p0, v0, :cond_7

    return-object v3

    :cond_7
    :try_start_1
    array-length p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private values()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 241
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private values(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFc1bSDK;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->unregisterClient()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 560
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 549
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->afInfoLog(Ljava/util/Map;)V

    .line 550
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->i(Ljava/util/Map;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->v(Ljava/util/Map;)V

    .line 552
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->i:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFc1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)V

    goto :goto_2

    .line 549
    :cond_3
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->afInfoLog(Ljava/util/Map;)V

    .line 550
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->i(Ljava/util/Map;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->v(Ljava/util/Map;)V

    .line 552
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->i:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFc1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)V

    const/16 v0, 0x14

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 554
    :goto_2
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->w(Ljava/util/Map;)V

    .line 555
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->e(Ljava/util/Map;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->d(Ljava/util/Map;)V

    .line 557
    invoke-static {p1, p3}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/util/Map;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->force(Ljava/util/Map;)V

    if-eqz p4, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_5

    return-void

    .line 552
    :cond_5
    sget p2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0x7

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p2, p2, 0x2

    .line 560
    invoke-virtual {p4, p1}, Lcom/appsflyer/internal/AFc1bSDK;->values(Ljava/util/Map;)V

    .line 552
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x43

    if-nez p1, :cond_6

    const/16 p1, 0x38

    goto :goto_3

    :cond_6
    const/16 p1, 0x43

    :goto_3
    if-eq p1, p2, :cond_7

    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    .line 560
    throw p1
.end method

.method private static values(Ljava/io/File;)Z
    .locals 4

    .line 850
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x16

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eq v1, v2, :cond_2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq p0, v0, :cond_4

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_4

    :goto_3
    return v3

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    return v0
.end method

.method private final w()Ljava/lang/String;
    .locals 5

    const-string v0, "ro.appsflyer.preinstall.path"

    .line 817
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 819
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 835
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "AF_PRE_INSTALL_PATH"

    if-nez v0, :cond_0

    .line 821
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 835
    throw v0

    .line 821
    :cond_0
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 825
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/io/File;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const-string v0, "/data/local/tmp/pre_install.appsflyer"

    .line 826
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 828
    :cond_3
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "/etc/pre_install.appsflyer"

    .line 830
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 832
    :cond_4
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_6

    .line 835
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    .line 835
    :cond_6
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object v2
.end method

.method private w(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 598
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

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

    const-wide/16 v4, 0x0

    const-string v6, "AppsFlyerTimePassedSincePrevLaunch"

    if-eqz v0, :cond_1

    .line 0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v6, v4, v5}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v7

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 590
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v6, v9, v10}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    cmp-long v0, v7, v4

    if-lez v0, :cond_3

    goto :goto_2

    .line 598
    :cond_1
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    const-wide/16 v7, 0x1

    invoke-interface {v0, v6, v7, v8}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v7

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 590
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->e:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v6, v9, v10}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    const/16 v0, 0x2e

    cmp-long v3, v7, v4

    if-lez v3, :cond_2

    const/16 v3, 0x2e

    goto :goto_1

    :cond_2
    const/16 v3, 0x16

    :goto_1
    if-eq v3, v0, :cond_4

    :cond_3
    const-wide/16 v3, -0x1

    goto :goto_3

    .line 593
    :cond_4
    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 592
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v5, 0x63

    if-eqz v0, :cond_5

    const/16 v0, 0x52

    goto :goto_3

    :cond_5
    const/16 v0, 0x63

    .line 598
    :goto_3
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "timepassedsincelastlaunch"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    :goto_4
    if-eq v1, v2, :cond_7

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_7
    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 5

    .line 119
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    const-string v2, ""

    if-eq v0, v1, :cond_2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v1

    const/16 v3, 0x3b

    const/4 v4, 0x0

    :try_start_0
    div-int/2addr v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-eq v4, v3, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 119
    throw p1

    .line 0
    :cond_2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 2015
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 2016
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    .line 104
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFc1bSDK;)V

    goto :goto_3

    .line 106
    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2106
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 106
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/util/Map;Ljava/lang/String;)V

    .line 109
    :goto_3
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->getLevel(Ljava/util/Map;)V

    .line 110
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1nSDK;->afVerboseLog(Ljava/util/Map;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->afErrorLog(Ljava/util/Map;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog(Ljava/util/Map;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->AFVersionDeclaration(Ljava/util/Map;)V

    .line 114
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFg1nSDK;->AFKeystoreWrapper(Ljava/util/Map;Z)V

    .line 115
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->AFLogger$LogLevel(Ljava/util/Map;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1nSDK;->afLogForce(Ljava/util/Map;)V

    .line 117
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V

    const-string p1, "af_events_api"

    const-string v1, "1"

    .line 119
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final AFInAppEventType(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "currencyCode"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eq v4, v2, :cond_2

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not a legal value."

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_3
    const-string v0, "currency"

    .line 215
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "IS_UPDATE"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    const-string v1, "isUpdate"

    .line 219
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "additionalCustomData"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 235
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    const-string v4, "customData"

    if-nez v2, :cond_6

    .line 223
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 235
    throw p1

    .line 223
    :cond_6
    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "AppUserId"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    if-eqz v0, :cond_8

    const/16 v4, 0x48

    goto :goto_4

    :cond_8
    const/16 v4, 0x54

    :goto_4
    if-eq v4, v2, :cond_9

    goto :goto_5

    :cond_9
    const-string v2, "appUserId"

    .line 227
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "userEmails"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    if-eqz v0, :cond_a

    const/16 v4, 0xa

    goto :goto_6

    :cond_a
    const/16 v4, 0x12

    :goto_6
    if-eq v4, v2, :cond_b

    goto :goto_8

    .line 223
    :cond_b
    sget v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    const/16 v4, 0x2b

    add-int/2addr v2, v4

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v5, 0x28

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    const/16 v4, 0x28

    :goto_7
    const-string v2, "user_emails"

    .line 231
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v4, v5, :cond_d

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 223
    throw p1

    .line 234
    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 9017
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1aSDK;

    const/16 v1, 0x29

    if-eqz v0, :cond_e

    const/16 v2, 0x39

    goto :goto_9

    :cond_e
    const/16 v2, 0x29

    :goto_9
    if-eq v2, v1, :cond_12

    .line 231
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 9040
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1aSDK;->AFKeystoreWrapper:[Ljava/lang/String;

    const/16 v1, 0x30

    if-eqz v0, :cond_f

    const/16 v2, 0x30

    goto :goto_a

    :cond_f
    const/4 v2, 0x7

    :goto_a
    if-eq v2, v1, :cond_10

    goto :goto_b

    .line 234
    :cond_10
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_11

    const-string v1, "sharing_filter"

    .line 235
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x20

    :try_start_2
    div-int/2addr p1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 234
    throw p1

    :cond_11
    const-string v1, "sharing_filter"

    .line 235
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_b
    return-void
.end method

.method public final AFKeystoreWrapper()J
    .locals 3

    .line 246
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x31

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 319
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "advertiserId"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v4, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 319
    throw p1

    .line 0
    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 319
    :cond_3
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 318
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1aSDK;

    .line 319
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAID_retry"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;ZLkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    const-string v2, ""

    if-eq v0, v1, :cond_1

    .line 0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/util/Map;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->registerClient(Ljava/util/Map;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog(Ljava/util/Map;)V

    .line 130
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/util/Map;Z)V

    .line 131
    invoke-direct {p0, p1, p3}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/util/Map;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->registerClient(Ljava/util/Map;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog(Ljava/util/Map;)V

    .line 130
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Ljava/util/Map;Z)V

    .line 131
    invoke-direct {p0, p1, p3}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)V

    const/16 p1, 0x47

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 6

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v1

    .line 349
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13125
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType:Ljava/lang/String;

    const-string v2, "open_referrer"

    .line 349
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13135
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1pSDK;->d:Ljava/lang/String;

    .line 350
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-eq v4, v3, :cond_4

    .line 351
    sget v4, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v4, v4, 0x2b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 350
    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 351
    :cond_4
    :goto_2
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 14135
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->d:Ljava/lang/String;

    const-string v0, "af_web_referrer"

    .line 351
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final valueOf(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 12014
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 342
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "af_deeplink"

    .line 337
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v2, :cond_3

    .line 342
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, "Skip \'af\' payload as deeplink was found by path"

    .line 338
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 340
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 13014
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 340
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "isPush"

    const-string v3, "true"

    .line 341
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final valueOf(Ljava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 330
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "counter"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "iaecounter"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFLogger()Z

    move-result p2

    const/4 p3, 0x5

    if-nez p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/16 p2, 0x5a

    :goto_0
    if-eq p2, p3, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    sget p2, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0xf

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "isFirstCall"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final values(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 6

    .line 181
    sget v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const-string v0, ""

    .line 0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v2

    .line 167
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventParameterName(Ljava/util/Map;Z)V

    .line 168
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 169
    invoke-static {v2}, Lcom/appsflyer/internal/AFg1nSDK;->AFLogger(Ljava/util/Map;)V

    .line 170
    invoke-static {v2}, Lcom/appsflyer/internal/AFg1nSDK;->afDebugLog(Ljava/util/Map;)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/appsflyer/internal/AFg1nSDK;->values(Ljava/util/Map;)V

    .line 172
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1nSDK;->v:Lcom/appsflyer/internal/AFd1sSDK;

    .line 8018
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1sSDK;->valueOf:Ljava/lang/String;

    .line 172
    invoke-direct {p0, v2, p1}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf(Ljava/util/Map;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFg1nSDK;->afErrorLogForExcManagerOnly(Ljava/util/Map;)V

    new-array p1, v1, [Lkotlin/Pair;

    .line 175
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "mcc"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const/4 v0, 0x1

    .line 176
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1nSDK;->valueOf:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "mnc"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, p1, v0

    .line 174
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "cell"

    .line 178
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->values()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sig"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Lcom/appsflyer/internal/AFg1nSDK;->valueOf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "last_boot_time"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/appsflyer/internal/AFg1nSDK;->registerClient()Ljava/lang/String;

    move-result-object p1

    const-string v0, "disk"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/2addr p1, v1

    const/16 v0, 0x5e

    if-nez p1, :cond_0

    const/16 p1, 0x5e

    goto :goto_0

    :cond_0
    const/16 p1, 0x57

    :goto_0
    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x2f

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final values(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1nSDK;->registerClient:Lcom/appsflyer/internal/AFh1gSDK;

    .line 10017
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1gSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1cSDK;

    const/16 v1, 0x39

    if-eqz v0, :cond_0

    const/16 v2, 0x33

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    :goto_0
    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    .line 306
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFh1eSDK;

    move-result-object v0

    :try_start_0
    array-length v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 10017
    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFh1eSDK;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_b

    .line 11004
    iget-object v1, v0, Lcom/appsflyer/internal/AFh1eSDK;->values:Ljava/lang/String;

    const-string v2, "network"

    .line 301
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFh1eSDK;->AFInAppEventType()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ivc"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1nSDK;->AFInAppEventType()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "disableCollectNetworkData"

    invoke-virtual {v1, v4, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eq v1, v4, :cond_5

    goto :goto_7

    .line 300
    :cond_5
    sget v1, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    :goto_4
    if-eq v1, v4, :cond_7

    .line 11006
    iget-object v1, v0, Lcom/appsflyer/internal/AFh1eSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const/16 v4, 0x3c

    .line 306
    :try_start_1
    div-int/2addr v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_8

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 300
    throw p1

    .line 11006
    :cond_7
    iget-object v1, v0, Lcom/appsflyer/internal/AFh1eSDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_5
    const-string v2, "operator"

    .line 307
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12005
    :cond_8
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1eSDK;->valueOf:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v1, "carrier"

    .line 310
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget p1, Lcom/appsflyer/internal/AFg1nSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFg1nSDK;->afWarnLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4e

    if-nez p1, :cond_9

    const/16 p1, 0x4e

    goto :goto_6

    :cond_9
    const/16 p1, 0xa

    :goto_6
    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :cond_b
    :goto_7
    return-void
.end method
