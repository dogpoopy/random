.class public final Lcom/appsflyer/internal/AFb1vSDK;
.super Lcom/appsflyer/AppsFlyerLib;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;,
        Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field public static final AFInAppEventParameterName:Ljava/lang/String;

.field static final AFInAppEventType:Ljava/lang/String;

.field public static final AFKeystoreWrapper:Ljava/lang/String;

.field private static afErrorLog:I = 0x1

.field private static afRDLog:I

.field private static afWarnLog:J

.field private static d:Lcom/appsflyer/internal/AFb1vSDK;

.field static valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;


# instance fields
.field private AFLogger:J

.field private afInfoLog:Z

.field private afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;

.field private e:J

.field private final force:Lcom/appsflyer/internal/AFd1kSDK;

.field private i:Landroid/app/Application;

.field private registerClient:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unregisterClient:J

.field private v:Z

.field public volatile values:Lcom/appsflyer/AppsFlyerConversionListener;

.field private w:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper()V

    const-string v0, "281"

    .line 108
    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    const-string v0, "6.13"

    .line 111
    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/androidevent?buildnumber=6.13.0&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const/4 v0, 0x0

    .line 137
    sput-object v0, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 142
    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFb1vSDK;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/AFb1vSDK;->d:Lcom/appsflyer/internal/AFb1vSDK;

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public constructor <init>()V
    .locals 3

    .line 204
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    const-wide/16 v0, -0x1

    .line 143
    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    .line 144
    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger:J

    .line 145
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->v:Z

    .line 205
    invoke-static {}, Lcom/appsflyer/AFVersionDeclaration;->init()V

    .line 206
    new-instance v1, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    .line 207
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFg1gSDK;->valueOf()V

    .line 208
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFg1gSDK;->AFInAppEventType()V

    .line 211
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;B)V

    .line 3145
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1dSDK;->AFKeystoreWrapper:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1xSDK;Z)I
    .locals 3

    .line 1800
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "appsFlyerInAppEventCount"

    invoke-static {p0, v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK;)Landroid/app/Application;
    .locals 2

    .line 106
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x38

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static declared-synchronized AFInAppEventParameterName(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    const-class v0, Lcom/appsflyer/internal/AFb1vSDK;

    monitor-enter v0

    .line 1786
    :try_start_0
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 1777
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;

    const/16 v2, 0x5a

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    if-eq v1, v2, :cond_3

    .line 1786
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v3, :cond_2

    .line 1778
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1780
    :try_start_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "appsflyer-data"

    .line 1781
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v2, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :goto_2
    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1778
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1780
    :try_start_3
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "appsflyer-data"

    .line 1781
    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v3, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1783
    :goto_3
    :try_start_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1784
    throw p0

    .line 1786
    :cond_3
    :goto_4
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/internal/AFb1vSDK;->w:Landroid/content/SharedPreferences;

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static AFInAppEventParameterName()Ljava/lang/String;
    .locals 4

    .line 973
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    const/4 v2, 0x0

    const-string v3, "AppUserId"

    if-eq v0, v1, :cond_1

    invoke-static {v3}, Lcom/appsflyer/internal/AFb1vSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/appsflyer/internal/AFb1vSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x2b

    if-nez v1, :cond_2

    const/16 v1, 0x2b

    goto :goto_2

    :cond_2
    const/16 v1, 0x2a

    :goto_2
    if-eq v1, v3, :cond_3

    return-object v0

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 2

    .line 35129
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x55

    if-nez v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 1147
    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v0, :cond_3

    .line 34013
    :goto_2
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1zSDK;->values:Ljava/lang/String;

    .line 34119
    iput-object v0, p0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType:Ljava/lang/String;

    .line 35014
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1zSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 35129
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1pSDK;->d:Ljava/lang/String;

    .line 1147
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 35129
    throw p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 2

    .line 106
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 3

    .line 495
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Lcom/appsflyer/internal/AFd1nSDK;->afRDLog()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventParameterName()V

    if-eq v0, v2, :cond_1

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :goto_1
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x17

    if-nez p0, :cond_2

    const/16 p0, 0x17

    goto :goto_2

    :cond_2
    const/16 p0, 0x5b

    :goto_2
    if-eq p0, v0, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x33

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private AFInAppEventParameterName(Ljava/util/Map;)V
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

    .line 1385
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "collectAndroidIdForceByUser"

    .line 1386
    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1408
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1387
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "collectIMEIForceByUser"

    .line 1388
    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_a

    .line 1408
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v2, "advertiserId"

    if-eqz v0, :cond_3

    .line 1391
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x58

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 1408
    throw p1

    .line 1391
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    if-eqz v0, :cond_4

    const/16 v0, 0x3b

    goto :goto_2

    :cond_4
    const/4 v0, 0x6

    :goto_2
    if-eq v0, v1, :cond_a

    .line 1394
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 49018
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1sSDK;->valueOf:Ljava/lang/String;

    .line 1394
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_7

    .line 1408
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_2
    const-string v0, "android_id"

    .line 1395
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_4

    :cond_5
    const/16 v0, 0x5e

    :goto_4
    if-eq v0, v1, :cond_6

    goto :goto_5

    :cond_6
    const-string v0, "validateGaidAndIMEI :: removing: android_id"

    .line 1397
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1400
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 49082
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    .line 1400
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "imei"

    .line 1401
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x11

    if-eqz p1, :cond_8

    const/16 p1, 0x53

    goto :goto_6

    :cond_8
    const/16 p1, 0x11

    :goto_6
    if-eq p1, v0, :cond_9

    const-string p1, "validateGaidAndIMEI :: removing: imei"

    .line 1403
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    const-string v0, "failed to remove IMEI or AndroidID key from params; "

    .line 1408
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Z
    .locals 3

    .line 561
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x37

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I
    .locals 2

    .line 1796
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "appsFlyerCount"

    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method

.method private AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    if-nez p1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    if-eq v1, v0, :cond_1

    .line 1683
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    return-object p1

    .line 1682
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1683
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x6

    if-eqz p2, :cond_2

    const/16 p2, 0x17

    goto :goto_1

    :cond_2
    const/4 p2, 0x6

    :goto_1
    if-eq p2, v0, :cond_3

    const/16 p2, 0x39

    :try_start_0
    div-int/lit8 p2, p2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-object p1
.end method

.method public static AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "CACHED_CHANNEL"

    .line 1756
    invoke-interface {p0, v1, v0}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    if-eqz v2, :cond_0

    const/16 v4, 0x1d

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    :goto_0
    if-eq v4, v3, :cond_1

    .line 1760
    invoke-interface {p0, v1, p1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 1761
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/2addr p0, v3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object v2
.end method

.method public static AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "readServerResponse error"

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1888
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_1

    .line 1930
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v5, v5, 0x4b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1890
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x1d

    div-int/2addr v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1893
    :cond_1
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1894
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    .line 1898
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    .line 1890
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x47

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    const/16 v2, 0xa

    .line 1899
    :try_start_4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x1

    goto :goto_1

    .line 1908
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 1911
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1890
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_8

    :catchall_0
    move-exception v2

    move-object v10, v5

    move-object v5, v2

    move-object v2, v10

    goto :goto_4

    :catchall_1
    move-exception v5

    goto :goto_4

    :catchall_2
    move-exception v5

    move-object v6, v2

    .line 1903
    :goto_4
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not read connection response from: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1903
    invoke-static {p0, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v2, :cond_5

    .line 1908
    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_7

    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_7

    .line 1911
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    .line 1914
    :goto_7
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1917
    :cond_7
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1919
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "error while parsing readServerResponse"

    .line 1922
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1923
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v1, "string_response"

    .line 1925
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1926
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "RESPONSE_NOT_JSON error"

    .line 1928
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1930
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_8

    .line 1908
    :try_start_a
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    goto :goto_9

    :catchall_5
    move-exception v1

    goto :goto_b

    :cond_8
    :goto_9
    const/16 v1, 0x34

    if-eqz v6, :cond_9

    const/16 v2, 0x5b

    goto :goto_a

    :cond_9
    const/16 v2, 0x34

    :goto_a
    if-eq v2, v1, :cond_a

    .line 1911
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_c

    .line 1914
    :goto_b
    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1916
    :cond_a
    :goto_c
    goto :goto_e

    :goto_d
    throw p0

    :goto_e
    goto :goto_d
.end method

.method public static AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1497
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "meta"

    .line 1492
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x44

    if-eqz v1, :cond_0

    const/16 v1, 0x44

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    if-eq v1, v2, :cond_2

    .line 1495
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 1493
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    :goto_1
    return-object v1
.end method

.method private synthetic AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 50167
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    .line 299
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 300
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    .line 50167
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v5, v5, 0x7

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v5, v1

    const/16 v6, 0x2e

    if-nez v5, :cond_0

    const/16 v5, 0x5c

    goto :goto_0

    :cond_0
    const/16 v5, 0x2e

    :goto_0
    const-string v7, "android.intent.action.VIEW"

    if-eq v5, v6, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x61

    :try_start_0
    div-int/2addr v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x61

    if-eqz v5, :cond_1

    const/16 v5, 0x61

    goto :goto_1

    :cond_1
    const/16 v5, 0x1b

    :goto_1
    if-eq v5, v6, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 50174
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50175
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 50167
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v6, v6, 0x35

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, v3

    :goto_3
    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 50162
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x5b

    goto :goto_4

    :cond_5
    const/4 v5, 0x2

    :goto_4
    if-eq v5, v1, :cond_6

    .line 50167
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v5, v5, 0xb

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v5, v1

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    const-string v7, "ddl_sent"

    .line 50163
    invoke-interface {v2, v7}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_9

    const/16 v2, 0x1c

    if-nez v5, :cond_8

    const/4 v4, 0x6

    goto :goto_6

    :cond_8
    const/16 v4, 0x1c

    :goto_6
    if-eq v4, v2, :cond_9

    const-string p1, "No direct deep link"

    .line 50165
    invoke-virtual {v0, p1, v3}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 50167
    :cond_9
    iget-object v2, v0, Lcom/appsflyer/internal/AFc1jSDK;->e:Lcom/appsflyer/internal/AFd1nSDK;

    .line 50168
    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFc1oSDK;->values(Lcom/appsflyer/internal/AFc1kSDK;)Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    .line 50167
    invoke-virtual {v0, v2, p2, p1}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFc1oSDK;Landroid/content/Intent;Landroid/content/Context;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v1

    return-void
.end method

.method private AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")V"
        }
    .end annotation

    .line 1105
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1103
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1104
    invoke-virtual {p3, p2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 1105
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 5

    .line 38106
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1253
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1227
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-eq v3, v2, :cond_3

    const-string p1, "CustomerUserId not set, reporting is disabled"

    .line 1228
    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_3
    if-eqz v0, :cond_8

    .line 1235
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "launchProtectEnabled"

    .line 1236
    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1253
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1238
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39097
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/16 v0, 0x37

    if-eqz p1, :cond_4

    const/16 v1, 0x37

    goto :goto_3

    :cond_4
    const/16 v1, 0x38

    :goto_3
    if-eq v1, v0, :cond_5

    goto :goto_4

    :cond_5
    const/16 v0, 0xa

    const-string v1, "Event timeout. Check \'minTimeBetweenSessions\' param"

    .line 1241
    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 1253
    :goto_4
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_6
    const-string v0, "Allowing multiple launches within a 5 second time window."

    .line 1246
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1248
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    .line 1251
    :cond_8
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 1252
    new-instance v2, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;

    invoke-direct {v2, p0, p1, v1}, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFa1pSDK;B)V

    const-wide/16 v3, 0x0

    .line 1253
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private AFInAppEventType(Ljava/lang/String;)V
    .locals 6

    .line 1284
    new-instance v0, Lcom/appsflyer/internal/AFh1xSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1xSDK;-><init>()V

    .line 1285
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v1

    .line 40164
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v2, 0x0

    const-string v3, "appsFlyerCount"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v1

    .line 1285
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object v0

    .line 41110
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    const/16 v1, 0x36

    if-eqz p1, :cond_0

    const/16 v3, 0xf

    goto :goto_0

    :cond_0
    const/16 v3, 0x36

    :goto_0
    if-eq v3, v1, :cond_3

    .line 1291
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v3, v3, 0x59

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v3, v3, 0x2

    .line 1287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-le p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eq p1, v4, :cond_2

    goto :goto_2

    .line 1288
    :cond_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1289
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 1290
    new-instance v3, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;

    invoke-direct {v3, p0, v0, v2}, Lcom/appsflyer/internal/AFb1vSDK$AFa1uSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFa1pSDK;B)V

    const-wide/16 v4, 0x5

    .line 1291
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v3, v4, v5, v0}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    :cond_3
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4a

    if-eqz p1, :cond_4

    const/16 v1, 0x4a

    :cond_4
    if-eq v1, v0, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private static AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 549
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3d

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1xSDK;)I
    .locals 4

    .line 1529
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x36

    if-nez v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v2, 0x1

    const-string v3, "appsFlyerAdImpressionCount"

    invoke-static {p0, v3, v2}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3f

    .line 1623
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x16

    if-ne v0, v1, :cond_0

    const/16 v1, 0x16

    goto :goto_0

    :cond_0
    const/16 v1, 0x32

    :goto_0
    if-eq v1, v2, :cond_3

    .line 1627
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x30

    if-nez v0, :cond_1

    const/16 v0, 0x30

    goto :goto_1

    :cond_1
    const/16 v0, 0x1a

    :goto_1
    if-eq v0, v1, :cond_2

    return-object p0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    const-string p0, ""

    return-object p0
.end method

.method static AFKeystoreWrapper()V
    .locals 2

    const-wide v0, -0x1d41b50e0fc5e777L    # -4.4657701580218215E167

    sput-wide v0, Lcom/appsflyer/internal/AFb1vSDK;->afWarnLog:J

    return-void
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;)V
    .locals 6

    .line 968
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x62

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x62

    :goto_0
    const v2, 0x8000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    .line 952
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 953
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 952
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 953
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_4

    .line 954
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "appsflyer_backup_rules"

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    .line 957
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0, v1, p0, v3}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 959
    :cond_3
    :try_start_1
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules"

    invoke-virtual {p0, v0, v1, v3}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    .line 967
    :goto_2
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "checkBackupRules Exception"

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 968
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "checkBackupRules Exception: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/internal/AFg1mSDK;->v(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method private AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 3

    .line 1057
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1054
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1055
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v0

    .line 1056
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1oSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1fSDK;

    move-result-object p1

    .line 28110
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1bSDK;->values()Z

    move-result v1

    const/16 v2, 0x3f

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1057
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 28111
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "api_name"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28112
    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1fSDK;)V

    .line 1057
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    :goto_1
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName()V

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 2

    .line 1172
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4f

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    if-eq v0, v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1169
    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    :goto_1
    return-void

    .line 1172
    :cond_2
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1vSDK;)V
    .locals 2

    .line 106
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->e()V

    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/16 p0, 0x40

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-void
.end method

.method private synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1lSDK;)V
    .locals 3

    .line 188
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 186
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/appsflyer/internal/AFf1lSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFf1lSDK;

    const/16 v2, 0x21

    if-ne p1, v1, :cond_2

    .line 196
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_0
    const/16 p1, 0x19

    :goto_0
    if-eq p1, v2, :cond_1

    .line 188
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1iSDK;->AFKeystoreWrapper()V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1iSDK;->AFKeystoreWrapper()V

    const/16 p1, 0x57

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 196
    throw p1

    .line 192
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType()Z

    move-result p1

    const/16 v1, 0x25

    if-nez p1, :cond_3

    const/16 p1, 0x44

    goto :goto_2

    :cond_3
    const/16 p1, 0x25

    :goto_2
    if-eq p1, v1, :cond_4

    .line 194
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->values()V

    .line 196
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_4
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->valueOf()V

    return-void
.end method

.method private synthetic AFKeystoreWrapper(Z)V
    .locals 2

    .line 808
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x3b

    if-eqz p1, :cond_0

    const/16 p1, 0x2c

    goto :goto_0

    :cond_0
    const/16 p1, 0x3b

    :goto_0
    if-eq p1, v0, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFInAppEventParameterName()V

    return-void

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFKeystoreWrapper()V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eq p1, v0, :cond_3

    return-void

    :cond_3
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

.method private static AFLogger(Landroid/content/Context;)V
    .locals 4

    .line 1473
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1474
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "android.permission.INTERNET"

    .line 1475
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1478
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 1486
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    if-eqz v0, :cond_1

    .line 1479
    :try_start_1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1486
    throw p0

    .line 1479
    :cond_1
    :try_start_3
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 1481
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "com.google.android.gms.permission.AD_ID"

    .line 1482
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 1483
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml"

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1486
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    const/4 v2, 0x0

    .line 1479
    :cond_5
    :goto_2
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_6

    const/16 p0, 0x10

    :try_start_4
    div-int/2addr p0, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 1486
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "Exception while validation permissions. "

    invoke-virtual {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private AFLogger()Z
    .locals 11

    .line 1280
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    .line 1257
    iget-wide v2, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1259
    iget-wide v4, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    sub-long/2addr v2, v4

    .line 40020
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v4, v7, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1261
    iget-wide v7, p0, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient:J

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v5

    .line 1262
    iget-wide v7, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger:J

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v4

    .line 1264
    iget-wide v7, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    const/4 v9, 0x3

    cmp-long v10, v2, v7

    if-gez v10, :cond_0

    .line 1280
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x5f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v1

    .line 1264
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1266
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v0

    aput-object v4, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v1

    iget-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v6

    .line 1270
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1280
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x6d

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v1

    .line 1272
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v0

    aput-object v4, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    const-string v2, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1276
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eq v2, v6, :cond_3

    goto :goto_1

    .line 1280
    :cond_3
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v1

    const-string v2, "Sending first launch for this session!"

    .line 1277
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1280
    :cond_4
    :goto_1
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v2, v1

    const/16 v1, 0xf

    if-nez v2, :cond_5

    const/16 v2, 0x3c

    goto :goto_2

    :cond_5
    const/16 v2, 0xf

    :goto_2
    if-eq v2, v1, :cond_6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    return v0
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 13

    if-eqz p0, :cond_2

    .line 50194
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->$10:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->$11:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5c

    if-nez v0, :cond_0

    const/16 v0, 0x43

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    :goto_1
    check-cast p0, [C

    .line 50178
    new-instance v0, Lcom/appsflyer/internal/AFj1oSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFj1oSDK;-><init>()V

    .line 50181
    sget-wide v1, Lcom/appsflyer/internal/AFb1vSDK;->afWarnLog:J

    const-wide v3, 0x77c785fa92797c12L    # 9.708796586141944E268

    xor-long/2addr v1, v3

    invoke-static {v1, v2, p0, p1}, Lcom/appsflyer/internal/AFj1oSDK;->values(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    .line 50186
    iput p1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    :goto_2
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    array-length v2, p0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    if-eq v1, v6, :cond_4

    .line 50194
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->$11:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    .line 50188
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFInAppEventParameterName:I

    .line 50189
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    iget v2, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    aget-char v2, p0, v2

    iget v5, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    rem-int/2addr v5, p1

    aget-char v5, p0, v5

    xor-int/2addr v2, v5

    int-to-long v7, v2

    iget v2, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFInAppEventParameterName:I

    int-to-long v9, v2

    sget-wide v11, Lcom/appsflyer/internal/AFb1vSDK;->afWarnLog:J

    xor-long/2addr v11, v3

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    long-to-int v2, v7

    int-to-char v2, v2

    aput-char v2, p0, v1

    .line 50186
    iget v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/appsflyer/internal/AFj1oSDK;->AFKeystoreWrapper:I

    goto :goto_2

    .line 50194
    :cond_4
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v5

    return-void
.end method

.method private synthetic d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1445
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private synthetic d()V
    .locals 2

    .line 813
    new-instance v0, Lcom/appsflyer/internal/AFh1wSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1wSDK;-><init>()V

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFa1pSDK;)V

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;
    .locals 3

    .line 1119
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x32

    if-nez v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1115
    instance-of v0, p1, Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1119
    throw p1

    .line 1115
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1116
    :goto_1
    new-instance v0, Lcom/appsflyer/internal/AFh1zSDK;

    check-cast p1, Landroid/app/Activity;

    .line 1117
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFh1aSDK;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFh1zSDK;-><init>(Landroid/app/Activity;Lcom/appsflyer/internal/AFh1aSDK;)V

    return-object v0

    .line 1119
    :cond_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eq p1, v0, :cond_4

    return-object v2

    :cond_4
    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v2

    :catchall_1
    move-exception p1

    throw p1
.end method

.method private e()V
    .locals 4

    .line 50102
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1728
    invoke-static {}, Lcom/appsflyer/internal/AFf1vSDK;->unregisterClient()Z

    move-result v0

    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 50102
    throw v0

    .line 1728
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFf1vSDK;->unregisterClient()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50102
    :goto_1
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eq v0, v1, :cond_3

    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    return-void

    .line 1732
    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 1733
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFf1vSDK;

    invoke-direct {v2, v0}, Lcom/appsflyer/internal/AFf1vSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 50102
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v3, v1, v2}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    .line 1714
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pid"

    .line 1716
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x5b

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x5b

    :goto_0
    if-eq v0, v1, :cond_3

    .line 1722
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_1
    const-string v0, "preInstallName"

    .line 1717
    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1722
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    const/4 p0, 0x0

    :try_start_2
    array-length p0, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    :try_start_3
    const-string p0, "Cannot set preinstall attribution data without a media source"

    .line 1719
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Error parsing JSON for preinstall"

    .line 1722
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$53wPP1NdKig-z0lqsDzeRjVOMpg(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1nSDK;)V

    return-void
.end method

.method public static synthetic lambda$7N9B0gXDW286uQ0Q9RyhhK-TPE8(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$EV0mvP9ndvH5AiHAIQbS_Eg2foQ(Lcom/appsflyer/internal/AFb1vSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->d()V

    return-void
.end method

.method public static synthetic lambda$KoWFBHN3sZoI-u22aTZ-VCXniMo(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$lcbWX9I89aku7t_b6PC3eY2MD_k(Lcom/appsflyer/internal/AFb1vSDK;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Z)V

    return-void
.end method

.method public static synthetic lambda$zq2Hbh2yt3wmvJq4EPFOGI3Xv7s(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFf1lSDK;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFf1lSDK;)V

    return-void
.end method

.method private declared-synchronized registerClient()Lcom/appsflyer/internal/AFf1iSDK;
    .locals 4

    monitor-enter p0

    .line 200
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    array-length v3, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eq v1, v2, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 200
    :try_start_2
    throw v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v2, :cond_4

    .line 200
    :goto_2
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 185
    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$zq2Hbh2yt3wmvJq4EPFOGI3Xv7s;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$zq2Hbh2yt3wmvJq4EPFOGI3Xv7s;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;

    .line 184
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x20

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v2, 0x20

    .line 200
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1iSDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterClient()[Lcom/appsflyer/internal/AFi1nSDK;
    .locals 3

    .line 1975
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I
    .locals 3

    .line 1814
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1807
    invoke-interface {p0, p1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x4b

    if-eqz p2, :cond_0

    const/16 p2, 0x28

    goto :goto_0

    :cond_0
    const/16 p2, 0x4b

    :goto_0
    if-eq p2, v2, :cond_4

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eq v2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/2addr v0, v1

    .line 1811
    invoke-interface {p0, p1, v0}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;I)V

    .line 1809
    :cond_4
    :goto_2
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    return v0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFb1vSDK;J)J
    .locals 2

    .line 106
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2c

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    iput-wide p1, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger:J

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-wide p1

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public static valueOf()Lcom/appsflyer/internal/AFb1vSDK;
    .locals 2

    .line 215
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1b

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/appsflyer/internal/AFb1vSDK;->d:Lcom/appsflyer/internal/AFb1vSDK;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFb1vSDK;->d:Lcom/appsflyer/internal/AFb1vSDK;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private valueOf(Ljava/util/Map;)Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;"
        }
    .end annotation

    .line 1633
    new-instance v0, Lcom/appsflyer/internal/AFb1vSDK$3;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFb1vSDK$3;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1590
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    :cond_0
    const-string v1, "fb\\d*?://authorize.*"

    .line 1589
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1605
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x10

    const-string v4, "access_token"

    const/16 v5, 0x51

    if-eqz v1, :cond_3

    .line 1590
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v6, 0x27

    :try_start_0
    div-int/2addr v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    goto :goto_1

    :cond_2
    const/16 v1, 0x51

    :goto_1
    if-eq v1, v5, :cond_d

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1605
    throw p0

    .line 1590
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1591
    :goto_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    return-object p0

    .line 1595
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "&"

    .line 1596
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1597
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 1599
    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1601
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1602
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1603
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x10

    goto :goto_5

    :cond_6
    const/16 v8, 0x51

    :goto_5
    if-eq v8, v5, :cond_c

    .line 1619
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x41

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    .line 1604
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1605
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_8

    goto :goto_6

    :catchall_1
    move-exception p0

    .line 1619
    throw p0

    .line 1604
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1605
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1606
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 1608
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/16 v10, 0x5e

    if-eqz v9, :cond_9

    const/16 v9, 0x8

    goto :goto_7

    :cond_9
    const/16 v9, 0x5e

    :goto_7
    if-eq v9, v10, :cond_a

    .line 1619
    sget v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/2addr v9, v5

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v9, v9, 0x2

    .line 1609
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_a
    const-string v9, "?"

    .line 1610
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1611
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    sget v9, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/2addr v9, v5

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v9, v9, 0x2

    .line 1613
    :cond_b
    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1616
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method

.method public static valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 1

    const-string v0, "UTC"

    .line 1197
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1198
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private valueOf(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1212
    new-instance v0, Lcom/appsflyer/internal/AFh1sSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1sSDK;-><init>()V

    .line 1216
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36101
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 37064
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 37110
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    .line 37119
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType:Ljava/lang/String;

    .line 1217
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x61

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v0, 0x4f

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x4f

    :goto_0
    if-eq p2, v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method private static valueOf(Ljava/lang/String;Z)V
    .locals 3

    .line 553
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    :goto_1
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x1c

    :try_start_1
    div-int/2addr p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFb1vSDK;Z)Z
    .locals 3

    .line 106
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFb1vSDK;->v:Z

    if-eq v0, v2, :cond_1

    const/16 p0, 0x29

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :goto_1
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    return p1
.end method

.method private static values(Lcom/appsflyer/internal/AFd1xSDK;)I
    .locals 4

    .line 1525
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x22

    if-nez v0, :cond_0

    const/16 v0, 0x56

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    const/4 v2, 0x1

    const-string v3, "appsFlyerAdRevenueCount"

    invoke-static {p0, v3, v2}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;Ljava/lang/String;Z)I

    move-result p0

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFb1vSDK;)Lcom/appsflyer/internal/AFf1iSDK;
    .locals 2

    .line 106
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->registerClient()Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5c

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    if-eq v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static values(Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1503
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x17

    if-eqz v1, :cond_0

    const/16 v3, 0x17

    goto :goto_0

    :cond_0
    const/16 v3, 0x4d

    :goto_0
    if-eq v3, v2, :cond_1

    goto :goto_4

    .line 1506
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 1521
    sget v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v3, v3, 0x1b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0x32

    if-nez v3, :cond_2

    const/16 v3, 0x40

    goto :goto_1

    :cond_2
    const/16 v3, 0x32

    :goto_1
    const-string v5, "af"

    if-eq v3, v4, :cond_4

    .line 1508
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2a

    const/4 v4, 0x0

    .line 1509
    div-int/2addr v3, v4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    .line 1508
    :cond_4
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1510
    :cond_5
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v6, "Push Notification received af payload = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    :cond_6
    :goto_3
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 1517
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-object v0
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 557
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1123
    new-instance v0, Lcom/appsflyer/internal/AFh1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1uSDK;-><init>()V

    .line 31101
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 32064
    iput-object p3, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 1124
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;

    move-result-object p1

    .line 1123
    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x41

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method private values(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 13

    .line 1296
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 42025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "sendWithEvent - got null context. skipping event/launch."

    .line 1299
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 1303
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 42065
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1b

    .line 1304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_c

    .line 1310
    :cond_2
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    .line 1311
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Lcom/appsflyer/internal/AFd1xSDK;)V

    .line 1312
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1313
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendWithEvent from activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1316
    :cond_3
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v0

    .line 1317
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;

    move-result-object v4

    .line 42097
    iget-object v5, p1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const-string v6, "appsflyerKey"

    .line 1320
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x42

    if-eqz v6, :cond_4

    const/16 v8, 0x42

    goto :goto_1

    :cond_4
    const/16 v8, 0x46

    :goto_1
    const/4 v9, 0x2

    if-eq v8, v7, :cond_5

    goto :goto_3

    .line 1321
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5b

    if-nez v6, :cond_6

    const/16 v6, 0x1d

    goto :goto_2

    :cond_6
    const/16 v6, 0x5b

    :goto_2
    if-eq v6, v7, :cond_8

    :goto_3
    const-string p1, "Not sending data yet, waiting for dev key"

    .line 1322
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    const/16 p1, 0x29

    const-string v0, "No dev key"

    .line 1324
    invoke-interface {v5, p1, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 1371
    :cond_7
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v9

    return-void

    .line 1328
    :cond_8
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "AppsFlyerLib.sendWithEvent"

    .line 1329
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1332
    :cond_9
    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result v1

    .line 1334
    new-instance v5, Lcom/appsflyer/internal/AFi1cSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v6

    invoke-interface {v6}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    const-string v6, ""

    .line 1335
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42137
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v6

    .line 42138
    instance-of v7, p1, Lcom/appsflyer/internal/AFg1aSDK;

    .line 42139
    instance-of v8, p1, Lcom/appsflyer/internal/AFg1cSDK;

    .line 42140
    instance-of v10, p1, Lcom/appsflyer/internal/AFh1xSDK;

    .line 42141
    instance-of v11, p1, Lcom/appsflyer/internal/AFh1wSDK;

    const/16 v12, 0xd

    if-nez v11, :cond_a

    const/16 v11, 0x34

    goto :goto_4

    :cond_a
    const/16 v11, 0xd

    :goto_4
    if-eq v11, v12, :cond_13

    if-eqz v10, :cond_b

    goto/16 :goto_7

    :cond_b
    if-eqz v8, :cond_c

    .line 42245
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    :cond_c
    if-eqz v7, :cond_e

    .line 1371
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/2addr v6, v3

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v6, v9

    if-eqz v6, :cond_d

    .line 43242
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x5c

    :try_start_0
    div-int/2addr v8, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 1371
    throw p1

    .line 43242
    :cond_d
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_e
    const/16 v8, 0x3c

    if-eqz v6, :cond_f

    const/16 v6, 0x38

    goto :goto_5

    :cond_f
    const/16 v6, 0x3c

    :goto_5
    if-eq v6, v8, :cond_12

    .line 44231
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 45164
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v8, "appsFlyerCount"

    invoke-interface {v6, v8, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v6

    if-ge v6, v9, :cond_10

    const/4 v6, 0x1

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_11

    .line 43242
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v6, v6, 0x27

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v6, v9

    .line 45248
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFLogger:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 45251
    :cond_11
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->e:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 45254
    :cond_12
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->registerClient:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 42239
    :cond_13
    :goto_7
    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->values:Lcom/appsflyer/internal/AFi1aSDK;

    sget-object v8, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/appsflyer/internal/AFi1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46220
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/appsflyer/internal/AFi1cSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 47168
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 48025
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 47084
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 46220
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42151
    invoke-static {v6, v7}, Lcom/appsflyer/internal/AFi1cSDK;->valueOf(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 42152
    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/AFi1cSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1336
    invoke-direct {p0, v4}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Ljava/util/Map;)V

    .line 1338
    new-instance v6, Lcom/appsflyer/internal/AFc1tSDK;

    .line 1339
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v7

    .line 1340
    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    .line 1341
    invoke-virtual {p1, v4}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    .line 1342
    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object p1

    .line 1343
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1eSDK;->valueOf()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v6, v7, p1, v1}, Lcom/appsflyer/internal/AFc1tSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFa1pSDK;Ljava/util/Map;)V

    if-eqz v0, :cond_17

    .line 43242
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v9

    .line 1351
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->unregisterClient()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    .line 43242
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v5, v5, 0x4b

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v5, v9

    .line 1351
    aget-object v5, p1, v1

    .line 48052
    iget-object v7, v5, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 1352
    sget-object v8, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    if-ne v7, v8, :cond_14

    .line 1355
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Failed to get "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48056
    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " referrer, wait ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1360
    :cond_15
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1eSDK;->AFInAppEventType()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "fetching Facebook deferred AppLink data, wait ..."

    .line 1362
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1364
    :cond_16
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    .line 1369
    :cond_18
    :goto_a
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->valueOf()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    if-eqz v4, :cond_19

    const/4 v2, 0x1

    :cond_19
    if-eq v2, v3, :cond_1a

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_1a
    const-wide/16 v0, 0x1f4

    .line 1371
    :goto_b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v6, v0, v1, v2}, Lcom/appsflyer/internal/AFi1bSDK;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_1b
    :goto_c
    const-string p1, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    .line 1305
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string p1, "AppsFlyer will not track this event."

    .line 1306
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method private static values(Lorg/json/JSONObject;)V
    .locals 15

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v2, v2, 0x2

    .line 398
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 399
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "error at timeStampArr"

    .line 403
    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 412
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_2
    move-object v5, v2

    .line 413
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 417
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 424
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x6f

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v8, v8, 0x2

    move-object v8, v5

    const/4 v5, 0x0

    .line 420
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 422
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2

    .line 439
    sget v9, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v9, v9, 0x5b

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v9, v9, 0x2

    .line 423
    :try_start_4
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    cmp-long v14, v9, v12

    if-eqz v14, :cond_3

    const/4 v9, 0x1

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_2

    .line 439
    sget v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v9, v9, 0x67

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    const/4 v9, 0x0

    goto :goto_6

    :cond_4
    const/4 v9, 0x1

    :goto_6
    if-eq v9, v11, :cond_6

    .line 424
    :try_start_5
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v12, v11

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v8, v9, v12

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_7

    :cond_5
    const/4 v8, 0x0

    :goto_7
    if-eq v8, v11, :cond_2

    goto :goto_8

    :cond_6
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    cmp-long v8, v9, v11

    if-nez v8, :cond_7

    goto/16 :goto_2

    :cond_7
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object v8, v6

    goto/16 :goto_4

    :catch_1
    move-exception v5

    goto :goto_9

    :catch_2
    move-exception v6

    move-object v8, v5

    move-object v5, v6

    :goto_9
    const-string v6, "error at manageExtraReferrers"

    .line 433
    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    move-object v5, v8

    goto/16 :goto_3

    :cond_9
    if-eqz v5, :cond_a

    const/16 v0, 0x11

    goto :goto_a

    :cond_a
    const/16 v0, 0x61

    :goto_a
    if-eq v0, v3, :cond_b

    goto :goto_b

    .line 439
    :cond_b
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_b
    return-void
.end method

.method public static values(Landroid/content/Context;)Z
    .locals 4

    .line 1673
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 1656
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x3b

    div-int/2addr v1, v3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :goto_2
    sget p0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p0, p0, 0x2

    return v2

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4a

    if-eqz v0, :cond_4

    const/16 v0, 0x4a

    goto :goto_4

    :cond_4
    const/16 v0, 0x13

    goto :goto_4

    :goto_3
    const-string v1, "WARNING:  Google play services is unavailable. "

    .line 1662
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1666
    :goto_4
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 1669
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "WARNING:  Google Play Services is unavailable. "

    invoke-virtual {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;
    .locals 3

    .line 166
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    const/16 v1, 0x60

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final AFInAppEventType(Landroid/content/Context;)V
    .locals 3

    .line 3019
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xf

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    if-eq v0, v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    const/4 v1, 0x0

    .line 2123
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x51

    if-eqz p1, :cond_1

    const/16 v2, 0x49

    goto :goto_1

    :cond_1
    const/16 v2, 0x51

    :goto_1
    if-eq v2, v1, :cond_4

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 3019
    throw p1

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    const/16 v1, 0x5a

    if-eqz p1, :cond_3

    const/16 v2, 0x1a

    goto :goto_2

    :cond_3
    const/16 v2, 0x5a

    :goto_2
    if-eq v2, v1, :cond_4

    .line 2124
    :goto_3
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1lSDK;

    if-eqz p1, :cond_4

    .line 3019
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 2123
    :cond_4
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method final AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 2

    .line 1137
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x61

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x60

    :goto_0
    if-eq v0, v1, :cond_1

    .line 1129
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    .line 1131
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p2

    .line 33065
    iget-object p2, p2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_2

    .line 1129
    :cond_1
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    .line 1131
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p2

    .line 33065
    iget-object p2, p2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x7

    if-nez p2, :cond_2

    const/4 p2, 0x7

    goto :goto_1

    :cond_2
    const/16 p2, 0x44

    :goto_1
    if-eq p2, v0, :cond_5

    .line 1142
    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 1143
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p2, p2, 0x79

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p2, p2, 0x2

    const-string p2, ""

    .line 33110
    :cond_4
    iput-object p2, p1, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    .line 1143
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    return-void

    :cond_5
    :goto_2
    const-string p2, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    .line 1133
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 33097
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_7

    .line 1143
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x3b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    const-string v0, "No dev key"

    if-eqz p2, :cond_6

    const/16 p2, 0x74

    goto :goto_3

    :cond_6
    const/16 p2, 0x29

    .line 1137
    :goto_3
    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method final AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1467
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1419
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 50025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 1420
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v1

    .line 1421
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->d()Lcom/appsflyer/internal/AFg1qSDK;

    move-result-object v2

    .line 1422
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v3

    .line 1423
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->valueOf()Z

    move-result v4

    .line 1424
    iget-object v5, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 1425
    invoke-static {v0, v5}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1aSDK;

    .line 1426
    sget-object v6, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName:Ljava/lang/Boolean;

    const/16 v7, 0x4c

    if-eqz v6, :cond_2

    .line 1427
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v8, 0x48

    if-nez v6, :cond_0

    const/16 v6, 0x48

    goto :goto_0

    :cond_0
    const/16 v6, 0x4c

    :goto_0
    if-eq v6, v8, :cond_1

    goto :goto_1

    .line 1428
    :cond_1
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "ad_ids_disabled"

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v6, 0x0

    .line 1431
    invoke-static {v6, v6, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    new-array v12, v11, [Ljava/lang/Object;

    const-string v13, "\u5484\ue195\u54e5\u3897\u051a\u8568\uf1fe\u28bf\uc681\u16ff\u6350\uc554\u7028\u6887\ud6f4\u57c3"

    invoke-static {v13, v10, v12}, Lcom/appsflyer/internal/AFb1vSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v10, v12, v6

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1435
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "******* sendTrackingWithEvent: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eq v9, v11, :cond_4

    .line 50026
    iget-object v9, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v9, "Launch"

    .line 1435
    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x33

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    :goto_4
    rem-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_5
    :try_start_1
    const-string v8, "Reporting has been stopped"

    .line 1437
    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v8, v8, 0x7

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    goto :goto_4

    .line 1439
    :goto_5
    :try_start_2
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFLogger(Landroid/content/Context;)V

    .line 1441
    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 1444
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$KoWFBHN3sZoI-u22aTZ-VCXniMo;

    invoke-direct {v9, p0, v0}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$KoWFBHN3sZoI-u22aTZ-VCXniMo;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;)V

    .line 1442
    invoke-interface {v2, v5, v8, v9}, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper(Ljava/util/Map;ZLkotlin/jvm/functions/Function0;)V

    if-eqz v4, :cond_6

    .line 1450
    invoke-interface {v2, v5}, Lcom/appsflyer/internal/AFg1qSDK;->valueOf(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 50027
    iput-object v0, v3, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 1454
    :cond_6
    invoke-interface {v2, v5}, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    .line 1456
    invoke-static {v1, v4}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result v0

    .line 50028
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    const/16 v3, 0x3d

    if-eqz p1, :cond_7

    const/16 v7, 0x3d

    :cond_7
    if-eq v7, v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x1

    :goto_6
    invoke-static {v1, v6}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFd1xSDK;Z)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, 0x11

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/16 v3, 0x11

    :goto_7
    if-eq v3, v1, :cond_a

    if-ne v0, v11, :cond_a

    .line 1467
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 1460
    :try_start_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    .line 50029
    iput-boolean v11, v1, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType:Z

    .line 1463
    :cond_a
    invoke-interface {v2, v5, v0, p1}, Lcom/appsflyer/internal/AFg1qSDK;->valueOf(Ljava/util/Map;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 1465
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v11}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_8
    return-object v5
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .locals 5

    .line 311
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 308
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType:Ljava/util/List;

    .line 310
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 311
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    const/16 p1, 0xe

    :try_start_0
    div-int/2addr p1, v3
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

.method public final anonymizeUser(Z)V
    .locals 6

    .line 1156
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    const-string v2, "deviceTrackingDisabled"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "anonymizeUser"

    if-eq v0, v1, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {v0, v5, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1156
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1155
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-interface {v0, v5, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 1156
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 265
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    .line 266
    iput-object p1, v0, Lcom/appsflyer/internal/AFc1jSDK;->values:Ljava/lang/String;

    .line 267
    iput-object p2, v0, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName:Ljava/util/Map;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .locals 2

    .line 827
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFc1eSDK;->valueOf(Z)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p1, v1, :cond_1

    const/16 p1, 0x5d

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

.method public final enableTCFDataCollection(Z)V
    .locals 3

    .line 510
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x61

    if-nez v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const-string v2, "enableTCFDataCollection"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1820
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "getAppsFlyerUID"

    invoke-interface {v0, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x56

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x56

    :goto_0
    if-eq v2, v0, :cond_3

    .line 50156
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 p1, 0x5e

    .line 1823
    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 50156
    throw p1

    :cond_2
    return-object v2

    .line 1825
    :cond_3
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1826
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    .line 50156
    iget-object v0, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1768
    :try_start_0
    new-instance v1, Lcom/appsflyer/internal/AFb1jSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/appsflyer/internal/AFb1jSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1jSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1771
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x33

    if-nez v1, :cond_0

    const/16 v1, 0x33

    goto :goto_0

    :cond_0
    const/16 v1, 0x26

    :goto_0
    if-eq v1, v2, :cond_1

    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    const-string v1, "Could not collect facebook attribution id. "

    .line 1770
    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 2

    .line 1959
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3f

    if-nez v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->valueOf()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->valueOf()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .locals 2

    .line 1964
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x21

    if-nez v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 603
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    const/16 v2, 0x12

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    if-eq v2, v1, :cond_1

    .line 610
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    :cond_1
    const-string v0, "AF_STORE"

    .line 608
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    if-eq v1, v0, :cond_3

    const-string p1, "No out-of-store value set"

    .line 613
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v2

    .line 614
    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 610
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 614
    throw p1

    :cond_4
    return-object p1
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 3

    .line 505
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "getSdkVersion"

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 505
    :goto_1
    invoke-static {}, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-object v0
.end method

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .locals 10

    .line 782
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afInfoLog:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_11

    .line 785
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->afInfoLog:Z

    .line 788
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 20069
    iput-object p1, v0, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 789
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    if-eqz v0, :cond_e

    .line 791
    invoke-virtual {p0, p3}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 792
    invoke-static {p3}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p3

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    return-object p0

    .line 822
    :cond_3
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v0, v3

    .line 794
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    .line 798
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afRDLog()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFb1rSDK;->values()V

    .line 799
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object p3

    .line 20072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/appsflyer/internal/AFg1bSDK;->valueOf:J

    .line 802
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFh1gSDK;

    move-result-object p3

    .line 21011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_4

    new-instance v0, Lcom/appsflyer/internal/AFh1bSDK;

    iget-object v4, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/appsflyer/internal/AFh1bSDK;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/appsflyer/internal/AFh1cSDK;

    goto :goto_3

    .line 21012
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_5

    new-instance v0, Lcom/appsflyer/internal/AFh1dSDK;

    iget-object v4, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/appsflyer/internal/AFh1dSDK;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/appsflyer/internal/AFh1cSDK;

    goto :goto_3

    .line 21013
    :cond_5
    new-instance v0, Lcom/appsflyer/internal/AFi1zSDK;

    iget-object v4, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/appsflyer/internal/AFi1zSDK;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/appsflyer/internal/AFh1cSDK;

    .line 21010
    :goto_3
    iput-object v0, p3, Lcom/appsflyer/internal/AFh1gSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1cSDK;

    .line 804
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p3

    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$lcbWX9I89aku7t_b6PC3eY2MD_k;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$lcbWX9I89aku7t_b6PC3eY2MD_k;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    invoke-interface {p3, v0}, Lcom/appsflyer/internal/AFd1iSDK;->valueOf(Lcom/appsflyer/internal/AFd1iSDK$AFa1zSDK;)V

    .line 811
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p3

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->registerClient()Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 813
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object p3

    new-instance v0, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$EV0mvP9ndvH5AiHAIQbS_Eg2foQ;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$EV0mvP9ndvH5AiHAIQbS_Eg2foQ;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    .line 21109
    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName(Ljava/lang/Runnable;)Lcom/appsflyer/internal/AFi1pSDK;

    move-result-object v4

    .line 21110
    invoke-virtual {p3, v4, v0}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 21112
    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21113
    new-instance v4, Lcom/appsflyer/internal/AFi1lSDK;

    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/appsflyer/internal/AFi1lSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21114
    new-instance v4, Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v4, v0, v5}, Lcom/appsflyer/internal/AFi1sSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21115
    new-instance v4, Lcom/appsflyer/internal/AFi1oSDK;

    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v4, v0, v5}, Lcom/appsflyer/internal/AFi1oSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-virtual {p3, v4}, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1nSDK;)V

    .line 21116
    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFi1kSDK;->values(Ljava/lang/Runnable;)V

    .line 21123
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventParameterName()Z

    move-result v4

    if-nez v4, :cond_a

    .line 21124
    iget-object v4, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v4

    .line 22025
    iget-object v4, v4, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 21124
    iget-object v5, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    .line 22057
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_a

    .line 22060
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.appsflyer.referrer.INSTALL_PROVIDER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22062
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 22063
    invoke-virtual {v4, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 822
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v6, v6, 0x51

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v6, v3

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_7

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    .line 22064
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    .line 22067
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22068
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 22069
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_8

    .line 22071
    new-instance v8, Lcom/appsflyer/internal/AFi1mSDK;

    invoke-direct {v8, v7, v0, v5}, Lcom/appsflyer/internal/AFi1mSDK;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 22072
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22074
    :cond_8
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component"

    invoke-virtual {v7, v8, v9}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    goto :goto_4

    .line 22078
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 22079
    iget-object v0, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22080
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Detected "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " valid preinstall provider(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 21127
    :cond_a
    :goto_5
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_b

    .line 822
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v6, v6, 0x39

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v6, v3

    .line 21127
    aget-object v6, v0, v5

    .line 21128
    iget-object v7, p3, Lcom/appsflyer/internal/AFi1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v7}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v7

    .line 23025
    iget-object v7, v7, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 21128
    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/AFi1nSDK;->values(Landroid/content/Context;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 815
    :cond_b
    iget-object p3, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFd1kSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    .line 23193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p3, Lcom/appsflyer/internal/AFg1zSDK;->valueOf:J

    .line 23194
    iget-object v4, p3, Lcom/appsflyer/internal/AFg1zSDK;->values:Lcom/appsflyer/internal/AFf1bSDK;

    .line 23221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24098
    iget-object v6, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v6, v0}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v0

    .line 23221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24226
    iget-wide v6, p3, Lcom/appsflyer/internal/AFg1zSDK;->valueOf:J

    .line 23221
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25050
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1mSDK;->valueOf(Ljava/lang/String;)[B

    move-result-object v0

    const-wide/16 v5, -0x1

    if-eqz v0, :cond_d

    .line 25068
    array-length v7, v0

    if-lez v7, :cond_d

    .line 822
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v5, v5, 0x7b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v5, v3

    .line 25071
    array-length v5, v0

    const/16 v6, 0x8

    if-le v5, v6, :cond_c

    .line 25072
    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 25076
    :cond_c
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 25077
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25079
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25080
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 23194
    :cond_d
    iget-object v0, p3, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 26025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 23194
    new-instance v7, Lcom/appsflyer/internal/AFg1zSDK$5;

    invoke-direct {v7, p3}, Lcom/appsflyer/internal/AFg1zSDK$5;-><init>(Lcom/appsflyer/internal/AFg1zSDK;)V

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/appsflyer/internal/AFf1bSDK;->AFKeystoreWrapper(JLandroid/content/Context;Lcom/appsflyer/internal/AFf1bSDK$AFa1uSDK;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName:Z

    goto :goto_7

    .line 817
    :cond_e
    sget-object p3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "context is null, Google Install Referrer will be not initialized"

    invoke-virtual {p3, v0, v4}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 822
    sget p3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p3, p3, 0x29

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p3, v3

    .line 819
    :goto_7
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    if-nez p2, :cond_f

    const/4 p1, 0x0

    goto :goto_8

    :cond_f
    const/4 p1, 0x1

    :goto_8
    if-eqz p1, :cond_10

    const-string p1, "conversionDataListener"

    goto :goto_9

    :cond_10
    const-string p1, "null"

    :goto_9
    aput-object p1, v0, v1

    const-string p1, "init"

    invoke-interface {p3, p1, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 820
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p3, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "6.13.0"

    aput-object v3, v0, v2

    sget-object v2, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/appsflyer/internal/AFg1mSDK;->force(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 821
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    :cond_11
    return-object p0
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1741
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1746
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    and-int/2addr p1, v1

    const/16 v2, 0x48

    if-eqz p1, :cond_0

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    const/16 p1, 0x48

    :goto_0
    if-eq p1, v2, :cond_3

    .line 1752
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v2, 0x5f

    if-nez p1, :cond_1

    const/16 p1, 0x5f

    goto :goto_1

    :cond_1
    const/16 p1, 0x3c

    :goto_1
    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    return v0

    :catch_0
    move-exception p1

    const-string v1, "Could not check if app is pre installed"

    .line 1750
    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1752
    :cond_3
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    return v0
.end method

.method public final isStopped()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1872
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf()Z

    move-result v0

    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x36

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x36

    :goto_0
    if-eq v1, v2, :cond_1

    const/16 v1, 0x59

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return v0
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1110
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1c

    if-nez v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    if-eq v0, v1, :cond_1

    const/16 p1, 0x5c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 29045
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    .line 1065
    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1066
    new-instance v0, Lcom/appsflyer/internal/AFh1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1uSDK;-><init>()V

    .line 29101
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger:Ljava/lang/String;

    .line 30091
    iput-object p4, v0, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    const-string v1, "af_touch_obj"

    .line 1070
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31025
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31026
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31027
    instance-of v4, v3, Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 31028
    check-cast v3, Landroid/view/MotionEvent;

    .line 31029
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 31030
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "x"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31031
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "y"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "loc"

    .line 31032
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31033
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "pf"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31034
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rad"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v3, "Parsing failed due to invalid input in \'af_touch_obj\'."

    const-string v4, "error"

    .line 31036
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31037
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1hSDK;->force:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v4, v5, v3, p4}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V

    :goto_1
    const-string v3, "tch_data"

    .line 31039
    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 1072
    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 31064
    :cond_2
    iput-object p3, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 1076
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 31070
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName:Ljava/util/Map;

    :goto_2
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p4

    const-string p4, "logEvent"

    .line 1076
    invoke-interface {p3, p4, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 1079
    sget-object p2, Lcom/appsflyer/internal/AFh1ySDK;->values:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 1081
    :cond_4
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->e(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1zSDK;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .locals 5

    .line 1020
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "logLocation"

    invoke-interface {v0, v3, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1022
    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    const-string p5, "af_long"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    const-string p3, "af_lat"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "af_location_coordinates"

    .line 1024
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr p1, v1

    const/16 p2, 0x4b

    if-nez p1, :cond_0

    const/16 p1, 0x4b

    goto :goto_0

    :cond_0
    const/16 p1, 0x51

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

.method public final logSession(Landroid/content/Context;)V
    .locals 3

    .line 1034
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1030
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "logSession"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventParameterName()V

    .line 1033
    sget-object v0, Lcom/appsflyer/internal/AFh1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    const/4 v0, 0x0

    .line 1034
    invoke-direct {p0, p1, v0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x4e

    if-eqz p1, :cond_0

    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/16 p1, 0x4e

    :goto_0
    if-eq p1, v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final onPause(Landroid/content/Context;)V
    .locals 1

    .line 516
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1ySDK;->AFKeystoreWrapper()V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4f

    if-eqz p1, :cond_0

    const/16 p1, 0x4f

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x29

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x63

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    const-string v2, "\""

    if-eq v0, v1, :cond_2

    const/16 v0, 0x48

    if-eqz p2, :cond_1

    const/16 v1, 0x4e

    goto :goto_1

    :cond_1
    const/16 v1, 0x48

    :goto_1
    if-eq v1, v0, :cond_6

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 221
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x45

    if-eqz p2, :cond_3

    const/16 v1, 0x53

    goto :goto_2

    :cond_3
    const/16 v1, 0x45

    :goto_2
    if-eq v1, v0, :cond_6

    .line 227
    :goto_3
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 221
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    .line 224
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context is \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 221
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 226
    :cond_5
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFc1oSDK;->values(Lcom/appsflyer/internal/AFc1kSDK;)Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 227
    invoke-virtual {v0, p1, v1, p2}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;)V

    return-void

    .line 222
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Link is \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p1, p2, v0}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :catchall_0
    move-exception p1

    .line 227
    throw p1
.end method

.method public final performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 284
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v0, "performOnDeepLinking was called with null context"

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 295
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 297
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 298
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$7N9B0gXDW286uQ0Q9RyhhK-TPE8;

    invoke-direct {v1, p0, p2, p1}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$7N9B0gXDW286uQ0Q9RyhhK-TPE8;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x58

    if-nez p1, :cond_3

    const/16 p1, 0x55

    goto :goto_1

    :cond_3
    const/16 p1, 0x58

    :goto_1
    const-string v1, "performOnDeepLinking was called with null intent"

    if-eq p1, p2, :cond_4

    .line 284
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p1, v1, p2}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    const/4 p1, 0x4

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 298
    throw p1

    .line 284
    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p1, v1, p2}, Lcom/appsflyer/internal/AFc1jSDK;->values(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    :goto_2
    return-void
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 3

    .line 1163
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v2, "registerConversionListener"

    if-eqz p1, :cond_1

    .line 1162
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1163
    :goto_1
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/AppsFlyerConversionListener;)V

    goto :goto_2

    .line 1162
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .locals 3

    .line 1184
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "registerValidatorListener"

    invoke-interface {p1, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "registerValidatorListener called"

    .line 1186
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/16 v0, 0x49

    :cond_0
    if-eqz v0, :cond_1

    .line 1192
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, "registerValidatorListener null listener"

    .line 1189
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 1192
    :cond_1
    sput-object p2, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final sendAdImpression(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1095
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1xSDK;)I

    move-result v0

    .line 1096
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ad_network"

    .line 1097
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "adimpression_counter"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    new-instance p2, Lcom/appsflyer/internal/AFg1cSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFg1cSDK;-><init>()V

    invoke-direct {p0, p1, v1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1086
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFd1xSDK;)I

    move-result v0

    .line 1087
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ad_network"

    .line 1088
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "adrevenue_counter"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance p2, Lcom/appsflyer/internal/AFg1aSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFg1aSDK;-><init>()V

    invoke-direct {p0, p1, v1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/internal/AFa1pSDK;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x27

    if-eqz p1, :cond_0

    const/16 p1, 0x24

    goto :goto_0

    :cond_0
    const/16 p1, 0x27

    :goto_0
    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final sendInAppPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    .line 5089
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 259
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 260
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->registerClient()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "purchases"

    aput-object v3, v1, v2

    .line 5059
    invoke-virtual {p1, p2, p3, v1}, Lcom/appsflyer/PurchaseHandler;->valueOf(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5062
    new-instance v1, Lcom/appsflyer/internal/AFf1rSDK;

    iget-object v3, p1, Lcom/appsflyer/PurchaseHandler;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v1, p2, p3, v3}, Lcom/appsflyer/internal/AFf1rSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 5063
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;

    .line 5089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p3, p1, v1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    return-void

    :cond_3
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

.method public final sendPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    .line 4089
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "subscriptions"

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->registerClient()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    .line 4051
    aput-object v3, v0, v1

    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/PurchaseHandler;->valueOf(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->registerClient()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v2

    .line 4051
    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/PurchaseHandler;->valueOf(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4054
    :goto_1
    new-instance v0, Lcom/appsflyer/internal/AFf1xSDK;

    iget-object v3, p1, Lcom/appsflyer/PurchaseHandler;->valueOf:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v0, p2, p3, v3}, Lcom/appsflyer/internal/AFf1xSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 4055
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1dSDK;

    .line 4089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p3, p1, v0}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4051
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "c"

    const-string v2, "pid"

    const-string v3, "sendPushNotificationData"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "activity_intent_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-interface {v7, v3, v8}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "activity_intent_null"

    aput-object v9, v8, v5

    invoke-interface {v7, v3, v8}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "activity_null"

    aput-object v9, v8, v4

    invoke-interface {v7, v3, v8}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 658
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v3

    .line 659
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    .line 14014
    iput-object v7, v3, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 15014
    iget-object v7, v3, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_d

    .line 704
    sget v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v4, v6

    const/16 v5, 0x46

    if-eqz v4, :cond_3

    const/16 v4, 0x5d

    goto :goto_1

    :cond_3
    const/16 v4, 0x46

    :goto_1
    const-string v7, ")"

    const/4 v8, 0x0

    if-eq v4, v5, :cond_4

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 663
    iget-object v9, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 704
    throw v2

    .line 661
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 663
    iget-object v9, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    if-nez v9, :cond_5

    :goto_2
    const-string v0, "pushes: initializing pushes history.."

    .line 664
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 665
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    move-wide v12, v4

    goto/16 :goto_8

    .line 668
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    const-string v10, "pushPayloadMaxAging"

    const-wide/32 v11, 0x1b7740

    invoke-virtual {v9, v10, v11, v12}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 669
    iget-object v11, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide v12, v4

    :goto_3
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 671
    new-instance v15, Lorg/json/JSONObject;

    .line 16014
    iget-object v6, v3, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 671
    invoke-direct {v15, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    new-instance v6, Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v11

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 674
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 17014
    iput-object v6, v3, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    return-void

    :cond_6
    const/4 v6, 0x0

    .line 683
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long v17, v4, v17

    const/16 v8, 0x1e

    cmp-long v11, v17, v9

    if-lez v11, :cond_7

    const/16 v11, 0x1e

    goto :goto_4

    :cond_7
    const/16 v11, 0x53

    :goto_4
    if-eq v11, v8, :cond_8

    goto :goto_5

    .line 704
    :cond_8
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v8, v8, 0x23

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    const/4 v11, 0x2

    rem-int/2addr v8, v11

    .line 684
    :try_start_3
    iget-object v8, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v8, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :goto_5
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v8, 0x14

    cmp-long v11, v17, v12

    if-gtz v11, :cond_9

    const/16 v11, 0x34

    goto :goto_6

    :cond_9
    const/16 v11, 0x14

    :goto_6
    if-eq v11, v8, :cond_a

    .line 704
    sget v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v8, v8, 0x67

    rem-int/lit16 v11, v8, 0x80

    sput v11, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    const/4 v11, 0x2

    rem-int/2addr v8, v11

    .line 689
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    move-object v8, v6

    move-object/from16 v11, v16

    const/4 v6, 0x2

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-wide v12, v4

    .line 693
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Error while handling push notification measurement: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    :cond_b
    :goto_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "pushPayloadHistorySize"

    const/4 v6, 0x2

    invoke-virtual {v0, v2, v6}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 699
    iget-object v2, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_c

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 701
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :cond_c
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1vSDK;->registerClient:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18014
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1sSDK;->values:Ljava/lang/String;

    .line 703
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 663
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    :cond_d
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
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

    .line 645
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setAdditionalData"

    invoke-interface {v2, v4, v3}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 644
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 645
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    return-void
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .locals 3

    .line 13018
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 544
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setAndroidIdData"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 13018
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1sSDK;->valueOf:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 6

    .line 997
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "appid"

    const-string v4, "setAppId"

    if-eqz v0, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v2

    invoke-interface {v0, v4, v5}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 997
    :goto_1
    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-interface {v0, v4, v5}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 997
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eq v1, v2, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .locals 4

    .line 630
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "setAppInviteOneLink"

    invoke-interface {v0, v3, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 631
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAppInviteOneLink = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v0, "oneLinkSlug"

    if-eqz p1, :cond_3

    .line 637
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v2, 0x1f

    :cond_0
    if-eqz v2, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 632
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x62

    if-nez v1, :cond_2

    const/16 v1, 0x3b

    goto :goto_0

    :cond_2
    const/16 v1, 0x62

    :goto_0
    if-eq v1, v2, :cond_4

    .line 633
    :cond_3
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkDomain"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkVersion"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkScheme"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 637
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    :cond_4
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCollectAndroidID(Z)V
    .locals 7

    .line 749
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "collectAndroidIdForceByUser"

    const-string v4, "collectAndroidId"

    const-string v5, "setCollectAndroidID"

    if-eq v0, v1, :cond_1

    .line 747
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-interface {v0, v5, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 748
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-interface {v0, v5, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 749
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3d

    if-nez p1, :cond_2

    const/16 p1, 0x3f

    goto :goto_3

    :cond_2
    const/16 p1, 0x3d

    :goto_3
    if-eq p1, v0, :cond_3

    const/16 p1, 0x5e

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-void
.end method

.method public final setCollectIMEI(Z)V
    .locals 7

    .line 756
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x63

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    const-string v2, "collectIMEIForceByUser"

    const-string v3, "collectIMEI"

    const-string v4, "setCollectIMEI"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-interface {v0, v4, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 755
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-interface {v0, v4, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 756
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0xd

    if-eqz p1, :cond_2

    const/16 p1, 0x3a

    goto :goto_3

    :cond_2
    const/16 p1, 0xd

    :goto_3
    if-eq p1, v0, :cond_3

    const/16 p1, 0xe

    :try_start_0
    div-int/2addr p1, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-void
.end method

.method public final setCollectOaid(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 763
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 762
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setCollectOaid"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 763
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "collectOAID"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x62

    if-eqz p1, :cond_0

    const/16 p1, 0x62

    goto :goto_0

    :cond_0
    const/16 p1, 0x1b

    :goto_0
    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V
    .locals 2

    .line 50160
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    .line 2025
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2026
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 50160
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/AppsFlyerConsent;

    goto :goto_1

    .line 2025
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2026
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 50160
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/AppsFlyerConsent;

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 3

    .line 1015
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1014
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setCurrencyCode"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    if-eqz p2, :cond_6

    .line 596
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 596
    throw p1

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 578
    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CustomerUserId set: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Initializing AppsFlyer Tacking"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 581
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p1

    .line 582
    sget-object v0, Lcom/appsflyer/internal/AFh1ySDK;->valueOf:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p2, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 584
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 13065
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 577
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, ""

    .line 590
    :cond_2
    instance-of v0, p2, Landroid/app/Activity;

    const/16 v1, 0xb

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    goto :goto_2

    :cond_3
    const/16 v0, 0x2f

    :goto_2
    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 591
    :cond_4
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 583
    :goto_3
    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 595
    :cond_5
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 596
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    :cond_6
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .locals 5

    .line 982
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 978
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "setCustomerUserId"

    invoke-interface {v0, v4, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 979
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setCustomerUserId = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v0, "AppUserId"

    .line 980
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "waitForCustomerId"

    .line 982
    invoke-static {p1, v3}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x59

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setDebugLog(Z)V
    .locals 2

    .line 527
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x4e

    if-eqz p1, :cond_0

    const/16 p1, 0x4e

    goto :goto_0

    :cond_0
    const/16 p1, 0x42

    :goto_0
    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    return-void
.end method

.method public final setDisableAdvertisingIdentifiers(Z)V
    .locals 2

    .line 329
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 326
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisableAdvertisingIdentifiers: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 v0, 0x58

    if-nez p1, :cond_0

    const/16 p1, 0x50

    goto :goto_0

    :cond_0
    const/16 p1, 0x58

    :goto_0
    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 329
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 327
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventParameterName:Ljava/lang/Boolean;

    .line 328
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserIdEnabled"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserId"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final setDisableNetworkData(Z)V
    .locals 4

    .line 335
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "disableCollectNetworkData"

    const-string v3, "setDisableNetworkData: "

    if-eq v0, v1, :cond_1

    .line 334
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 335
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 334
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 335
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 5

    .line 1003
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    const-string v2, "sdkExtension"

    const-string v3, "setExtension"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-interface {v0, v3, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1003
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-interface {v0, v3, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1949
    invoke-static {p2}, Lcom/appsflyer/internal/AFc1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    if-eq v0, v1, :cond_3

    .line 1953
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x60

    if-eqz p1, :cond_1

    const/16 v1, 0x60

    goto :goto_1

    :cond_1
    const/16 v1, 0x54

    :goto_1
    if-eq v1, v0, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1950
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1951
    :goto_2
    new-instance v0, Lcom/appsflyer/internal/AFe1gSDK;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/internal/AFe1gSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1gSDK;)V

    return-void

    :cond_3
    const-string p1, "hostname was empty or null - call for setHost is skipped"

    .line 1953
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .locals 3

    .line 12060
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 532
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setImeiData"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 12060
    iput-object p1, v0, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setIsUpdate(Z)V
    .locals 6

    .line 1009
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "IS_UPDATE"

    const-string v4, "setIsUpdate"

    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v0, v4, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1009
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1008
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v0, v4, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .locals 6

    .line 1937
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 1943
    :cond_0
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v0, 0x0

    .line 1938
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "log"

    invoke-interface {v1, v5, v4}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1939
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    .line 50158
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    const-string v4, "logLevel"

    invoke-virtual {v1, v4, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_3

    .line 1943
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFLogger()V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_3
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    .line 1941
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFg1gSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1gSDK;->AFInAppEventType()V

    .line 1943
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setMinTimeBetweenSessions(I)V
    .locals 3

    .line 1969
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->e:J

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .locals 4

    .line 539
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x29

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    const-string v2, "setOaidData"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 539
    :goto_1
    sput-object p1, Lcom/appsflyer/internal/AFb1tSDK;->AFKeystoreWrapper:Ljava/lang/String;

    goto :goto_2

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .locals 5

    .line 19306
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x56

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    const-string v2, "setOneLinkCustomDomain %s"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    .line 774
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    .line 19306
    iput-object p1, v0, Lcom/appsflyer/internal/AFc1jSDK;->unregisterClient:[Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 774
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 19306
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_3
    if-eq v4, v3, :cond_3

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    return-void
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .locals 3

    .line 624
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_2
    const/16 v0, 0x3e

    .line 619
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 620
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Store API set with value: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 619
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_3
    const-string p1, "Cannot set setOutOfStore with null"

    .line 624
    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8038
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 6016
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8038
    throw p1

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    .line 6016
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    if-nez v1, :cond_1

    .line 319
    :goto_0
    new-instance v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFc1bSDK;-><init>()V

    .line 7016
    iput-object v1, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    .line 8016
    :cond_1
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFc1bSDK;

    if-eqz p1, :cond_9

    .line 6016
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 8019
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const/16 v1, 0x56

    if-eqz p2, :cond_3

    const/16 v2, 0x4e

    goto :goto_1

    :cond_3
    const/16 v2, 0x56

    :goto_1
    if-eq v2, v1, :cond_6

    .line 8023
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 8029
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 8030
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_5

    const-string p2, "Partner data 1000 characters limit exceeded"

    .line 8032
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 8033
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8034
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit exceeded: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8035
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8037
    :cond_5
    iget-object v1, v0, Lcom/appsflyer/internal/AFc1bSDK;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8038
    iget-object p2, v0, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8024
    :cond_6
    :goto_2
    iget-object p2, v0, Lcom/appsflyer/internal/AFc1bSDK;->values:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_3

    :cond_7
    const/4 p2, 0x0

    :goto_3
    if-eq p2, v0, :cond_8

    .line 8026
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cleared partner data for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 8038
    :cond_8
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, "Partner data is missing or `null`"

    .line 8024
    :goto_4
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_5
    const-string p1, "Partner ID is missing or `null`"

    .line 8020
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .line 28015
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 987
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28015
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFInAppEventParameterName:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setPluginInfo(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V
    .locals 3

    .line 2020
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x32

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2019
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2020
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afWarnLog()Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFi1xSDK;->values(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    goto :goto_1

    .line 2019
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2020
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afWarnLog()Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFi1xSDK;->values(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    :try_start_0
    array-length p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_2

    :cond_2
    const/16 p1, 0x1d

    :goto_2
    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "setPreinstallAttribution API called"

    .line 1688
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pid"

    if-eqz p1, :cond_1

    .line 1692
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v2, 0x26

    if-nez p1, :cond_0

    const/16 p1, 0x26

    goto :goto_0

    :cond_0
    const/16 p1, 0x38

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    :try_start_1
    const-string p1, "c"

    .line 1695
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/16 p1, 0x4d

    if-eqz p3, :cond_3

    const/16 p2, 0x1c

    goto :goto_1

    :cond_3
    const/16 p2, 0x4d

    :goto_1
    if-eq p2, p1, :cond_4

    const-string p1, "af_siteid"

    .line 1698
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1702
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1705
    :cond_4
    :goto_3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1708
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const-string p2, "preInstallName"

    if-eqz p1, :cond_5

    .line 1706
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    :try_start_2
    div-int/lit8 p1, p1, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1708
    throw p1

    .line 1706
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p1, "Cannot set preinstall attribution data without a media source"

    .line 1708
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .locals 3

    .line 18311
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 768
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "setResolveDeepLinkURLs %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    .line 18315
    iget-object v1, v0, Lcom/appsflyer/internal/AFc1jSDK;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18311
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1jSDK;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setSharingFilterForAllPartners()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "all"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->getLevel()Lcom/appsflyer/internal/AFd1sSDK;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFc1aSDK;

    invoke-direct {v1, p1}, Lcom/appsflyer/internal/AFc1aSDK;-><init>([Ljava/lang/String;)V

    .line 4017
    iput-object v1, v0, Lcom/appsflyer/internal/AFd1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1aSDK;

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0xe

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_0

    :cond_0
    const/16 p1, 0x3d

    :goto_0
    if-eq p1, v0, :cond_1

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

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 10

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 719
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    array-length v3, p2

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v3, "setUserEmails"

    invoke-interface {v1, v3, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v1

    const-string v3, "userEmailsCryptType"

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 724
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 726
    array-length v4, p2

    .line 727
    sget v5, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v5, v5, 0x3d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    const/4 v5, 0x0

    move-object v7, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    :goto_1
    if-eq v8, v2, :cond_4

    .line 742
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v7, v7, 0x7b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v7, v6

    const/16 v8, 0x24

    if-nez v7, :cond_1

    const/16 v7, 0x24

    goto :goto_2

    :cond_1
    const/16 v7, 0x1f

    :goto_2
    if-eq v7, v8, :cond_2

    .line 726
    aget-object v7, p2, v1

    .line 727
    sget-object v8, Lcom/appsflyer/internal/AFb1vSDK$2;->values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v6, :cond_3

    goto :goto_3

    .line 742
    :cond_2
    aget-object v7, p2, v1

    .line 727
    sget-object v8, Lcom/appsflyer/internal/AFb1vSDK$2;->values:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/16 v9, 0x37

    :try_start_0
    div-int/2addr v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v8, v6, :cond_3

    .line 731
    :goto_3
    invoke-static {v7}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v7, "sha256_el_arr"

    goto :goto_4

    .line 735
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v7, "plain_el_arr"

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 742
    throw p1

    .line 740
    :cond_4
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 742
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .locals 3

    .line 711
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const-string v2, "setUserEmails"

    if-eq v0, v1, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 711
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 711
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 2

    .line 832
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p1, v1, :cond_1

    :try_start_0
    array-length p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 837
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 10

    .line 853
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1ySDK;->valueOf()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1ySDK;->valueOf()Z

    move-result v0

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    :goto_1
    return-void

    .line 846
    :cond_2
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->afInfoLog:Z

    const/16 v4, 0xc

    if-nez v0, :cond_3

    const/16 v0, 0xc

    goto :goto_2

    :cond_3
    const/16 v0, 0x34

    :goto_2
    const/16 v5, 0x29

    const-string v6, "No dev key"

    if-eq v0, v4, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, "ERROR: AppsFlyer SDK is not initialized! The API call \'start()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    .line 847
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-nez p2, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_10

    .line 858
    :goto_4
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 859
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v0

    .line 860
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1oSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFg1fSDK;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFg1fSDK;)V

    .line 862
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_7

    goto :goto_7

    .line 843
    :cond_7
    sget v4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v4, v4, 0x2f

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_9

    .line 863
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v4

    const/16 v7, 0x44

    .line 864
    :try_start_1
    div-int/2addr v7, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0x38

    if-eqz v4, :cond_8

    const/16 v8, 0x38

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eq v8, v7, :cond_a

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    .line 843
    throw p1

    .line 863
    :cond_9
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1qSDK;->values(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 865
    :cond_a
    iput-object v4, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    .line 870
    :goto_7
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/String;

    aput-object p2, v7, v3

    const-string v8, "start"

    invoke-interface {v4, v8, v7}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 871
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v7, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "6.13.0"

    aput-object v9, v8, v3

    sget-object v3, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    aput-object v3, v8, v2

    const-string v2, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 874
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Build Number: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Lcom/appsflyer/internal/AFd1xSDK;)V

    .line 876
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2a

    if-nez v2, :cond_b

    const/16 v2, 0xa

    goto :goto_8

    :cond_b
    const/16 v2, 0x2a

    :goto_8
    if-eq v2, v3, :cond_c

    .line 843
    sget v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v2, v1

    .line 877
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 26069
    iput-object p2, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 878
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_9

    .line 880
    :cond_c
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object p2

    .line 27065
    iget-object p2, p2, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 880
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p1, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    .line 881
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-eqz p3, :cond_d

    .line 885
    invoke-interface {p3, v5, v6}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_d
    return-void

    .line 891
    :cond_e
    :goto_9
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->registerClient()Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 892
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK;->e()V

    .line 893
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK;->i:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    .line 895
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afDebugLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1eSDK;->AFKeystoreWrapper()V

    .line 898
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK;->force:Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFd1kSDK;->afLogForce()Lcom/appsflyer/internal/AFd1ySDK;

    move-result-object p2

    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK$5;

    invoke-direct {v1, p0, v0, p3}, Lcom/appsflyer/internal/AFb1vSDK$5;-><init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFg1bSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    invoke-interface {p2, p1, v1}, Lcom/appsflyer/internal/AFd1ySDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;)V

    :cond_f
    :goto_a
    return-void

    :cond_10
    if-eqz p3, :cond_12

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_11

    const/16 p1, 0x8

    .line 853
    invoke-interface {p3, p1, v6}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    goto :goto_b

    :cond_11
    invoke-interface {p3, v5, v6}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_12
    :goto_b
    return-void

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final stop(ZLandroid/content/Context;)V
    .locals 4

    .line 497
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 493
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    .line 494
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 9077
    iput-boolean p1, v0, Lcom/appsflyer/internal/AFg1zSDK;->d:Z

    .line 495
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$53wPP1NdKig-z0lqsDzeRjVOMpg;

    invoke-direct {v3, p2}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$53wPP1NdKig-z0lqsDzeRjVOMpg;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/16 v0, 0x15

    .line 496
    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 497
    throw p1

    .line 489
    :cond_0
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 493
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    .line 494
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v0

    .line 9077
    iput-boolean p1, v0, Lcom/appsflyer/internal/AFg1zSDK;->d:Z

    .line 495
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$53wPP1NdKig-z0lqsDzeRjVOMpg;

    invoke-direct {v3, p2}, Lcom/appsflyer/internal/-$$Lambda$AFb1vSDK$53wPP1NdKig-z0lqsDzeRjVOMpg;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 497
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    const-string p2, "is_stop_tracking_used"

    invoke-interface {p1, p2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 496
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x23

    if-eqz p1, :cond_2

    const/16 p1, 0x23

    goto :goto_2

    :cond_2
    const/16 p1, 0x3e

    :cond_3
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/4 p1, 0x3

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_4
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .locals 3

    .line 272
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .locals 2

    .line 5298
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 277
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/AFc1jSDK;->valueOf:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 278
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    .line 5298
    iput-wide p2, p1, Lcom/appsflyer/internal/AFc1jSDK;->AFLogger:J

    sget p1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final unregisterConversionListener()V
    .locals 3

    .line 1178
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1177
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "unregisterConversionListener"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1178
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 521
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 522
    new-instance v0, Lcom/appsflyer/internal/AFg1tSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFg1tSDK;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_5

    .line 10064
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 10068
    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Firebase Refreshed Token = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 10069
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1tSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFg1uSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11015
    iget-object v1, p1, Lcom/appsflyer/internal/AFg1uSDK;->values:Ljava/lang/String;

    .line 10070
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10071
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_3

    .line 11019
    iget-wide v3, p1, Lcom/appsflyer/internal/AFg1uSDK;->valueOf:J

    sub-long v3, v1, v3

    .line 10072
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 10077
    :goto_1
    new-instance v3, Lcom/appsflyer/internal/AFg1uSDK;

    xor-int/lit8 v4, p1, 0x1

    invoke-direct {v3, p2, v1, v2, v4}, Lcom/appsflyer/internal/AFg1uSDK;-><init>(Ljava/lang/String;JZ)V

    .line 11132
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    .line 12015
    iget-object v2, v3, Lcom/appsflyer/internal/AFg1uSDK;->values:Ljava/lang/String;

    const-string v4, "afUninstallToken"

    .line 11132
    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 11133
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    .line 12019
    iget-wide v4, v3, Lcom/appsflyer/internal/AFg1uSDK;->valueOf:J

    const-string v2, "afUninstallToken_received_time"

    .line 11133
    invoke-interface {v1, v2, v4, v5}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 11134
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFg1uSDK;->values()Z

    move-result v1

    const-string v2, "afUninstallToken_queued"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    .line 10080
    invoke-static {p2}, Lcom/appsflyer/internal/AFg1tSDK;->valueOf(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 10065
    :cond_5
    :goto_2
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p2, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v0, "Firebase Token is either empty or null and was not registered."

    invoke-virtual {p1, p2, v0}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1833
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v6, 0x3

    aput-object v8, v2, v6

    const/4 v6, 0x4

    aput-object v9, v2, v6

    const/4 v6, 0x5

    if-nez p7, :cond_2

    .line 1862
    sget v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v7, v7, 0x11

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v7, v5

    const/16 v10, 0xd

    if-eqz v7, :cond_0

    const/16 v7, 0xd

    goto :goto_0

    :cond_0
    const/16 v7, 0x42

    :goto_0
    if-eq v7, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v7, ""

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 1840
    :cond_2
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    aput-object v7, v2, v6

    const-string v6, "validateAndTrackInAppPurchase"

    .line 1833
    invoke-interface {v1, v6, v2}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1844
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Validate in app called with parameters: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/appsflyer/internal/AFg1mSDK;->i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_6

    if-eqz v8, :cond_6

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    .line 1862
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/2addr v1, v5

    if-eqz v9, :cond_6

    if-nez v0, :cond_5

    goto :goto_4

    .line 1853
    :cond_5
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/appsflyer/internal/AFa1cSDK;

    .line 1854
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1855
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v1

    .line 50157
    iget-object v3, v1, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    .line 1856
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v4

    move-object v1, v12

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/appsflyer/internal/AFa1cSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1862
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 1849
    :cond_6
    :goto_4
    sget-object v0, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_7

    const-string v1, "Please provide purchase parameters"

    .line 1850
    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    .line 1862
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/2addr v0, v5

    if-nez v0, :cond_7

    const/16 v0, 0x39

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_7
    :goto_5
    return-void
.end method

.method public final valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;
    .locals 3

    .line 1792
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1791
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 1792
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    return-object p1

    :cond_1
    const/16 v0, 0x5c

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final values(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "appsflyer_preinstall"

    .line 340
    new-instance v1, Lcom/appsflyer/internal/AFi1jSDK;

    invoke-direct {v1, p2}, Lcom/appsflyer/internal/AFi1jSDK;-><init>(Landroid/content/Intent;)V

    .line 341
    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFi1jSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x1d

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    goto :goto_1

    .line 342
    :cond_1
    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFi1jSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1vSDK;->e(Ljava/lang/String;)V

    :goto_1
    const-string p2, "****** onReceive called *******"

    .line 344
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    const-string p2, "referrer"

    .line 348
    invoke-virtual {v1, p2}, Lcom/appsflyer/internal/AFi1jSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Play store referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/16 v1, 0x3d

    if-eqz v0, :cond_2

    const/16 v2, 0x3d

    goto :goto_2

    :cond_2
    const/16 v2, 0x4a

    :goto_2
    if-eq v2, v1, :cond_3

    goto :goto_4

    .line 360
    :cond_3
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    const/4 v1, 0x0

    const-string v4, "AF_REFERRER"

    if-eq v3, v2, :cond_5

    .line 352
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    .line 8153
    invoke-virtual {p2, v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8154
    iput-object v0, p2, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    .line 352
    :cond_5
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    .line 8153
    invoke-virtual {p2, v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8154
    iput-object v0, p2, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventType()Z

    move-result p2

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_7

    .line 360
    :goto_3
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    const-string v2, "onReceive: isLaunchCalled"

    if-eqz p2, :cond_6

    .line 358
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 359
    sget-object p2, Lcom/appsflyer/internal/AFh1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 360
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 358
    :cond_6
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 359
    sget-object p2, Lcom/appsflyer/internal/AFh1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFh1ySDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 360
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final values(Landroid/content/Context;Lcom/appsflyer/internal/AFc1oSDK;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 10

    .line 1540
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    const-string v0, "af_deeplink"

    .line 1542
    invoke-virtual {p2, v0}, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    if-nez v1, :cond_7

    .line 1543
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1545
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v5

    .line 1546
    iget-object v6, v5, Lcom/appsflyer/internal/AFc1jSDK;->values:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName:Ljava/util/Map;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/appsflyer/internal/AFc1jSDK;->values:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x52

    if-eqz v6, :cond_0

    const/16 v6, 0x52

    goto :goto_0

    :cond_0
    const/16 v6, 0x21

    :goto_0
    if-eq v6, v7, :cond_1

    goto/16 :goto_3

    .line 1547
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1548
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1549
    iget-object v1, v5, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eq v1, v4, :cond_3

    .line 1553
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "appended_query_params"

    .line 1554
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50031
    iget-object v7, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50034
    iget-object v5, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz v5, :cond_4

    iget-object v6, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v5, v6}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    goto :goto_3

    .line 1579
    :cond_3
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v8, v1, 0x80

    sput v8, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 1549
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1550
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1551
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1557
    :cond_4
    :goto_3
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50036
    iget-object v5, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50039
    iget-object v0, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    const/16 v1, 0x4a

    if-eqz v0, :cond_5

    const/16 v5, 0x4a

    goto :goto_4

    :cond_5
    const/16 v5, 0x34

    :goto_4
    if-eq v5, v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    .line 50044
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    .line 1560
    :cond_7
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1561
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "link"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_8

    .line 1563
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "original_link"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    :cond_8
    invoke-static {p1, v0, p3}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    .line 1570
    new-instance p1, Lcom/appsflyer/internal/AFf1mSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p1, p4, v1, p3}, Lcom/appsflyer/internal/AFf1mSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;Ljava/util/UUID;Landroid/net/Uri;)V

    .line 1571
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFf1mSDK;->afInfoLog()Z

    move-result p3

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    goto :goto_6

    :cond_9
    const/4 p3, 0x1

    :goto_6
    if-eqz p3, :cond_a

    goto :goto_8

    .line 1579
    :cond_a
    sget p3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 p3, p3, 0x35

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_b

    const/4 v2, 0x1

    :cond_b
    const-string p3, "isBrandedDomain"

    if-eq v2, v4, :cond_c

    .line 1572
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50041
    iget-object v1, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50044
    iget-object p3, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eqz p3, :cond_d

    goto :goto_7

    .line 1572
    :cond_c
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50041
    iget-object v1, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50044
    iget-object p3, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 p4, 0x0

    :try_start_0
    array-length p4, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_d

    :goto_7
    iget-object p2, p2, Lcom/appsflyer/internal/AFc1oSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {p3, p2}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf(Ljava/util/Map;)V

    goto :goto_8

    .line 1579
    :cond_d
    sget p2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0xd

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    rem-int/lit8 p2, p2, 0x2

    .line 1574
    :goto_8
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFf1mSDK;->w()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1575
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/util/Map;)Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;

    move-result-object p2

    .line 50046
    iput-object p2, p1, Lcom/appsflyer/internal/AFf1mSDK;->registerClient:Lcom/appsflyer/internal/AFf1mSDK$AFa1vSDK;

    .line 1577
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p2

    .line 50048
    iget-object p3, p2, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {p4, p2, p1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1579
    :cond_e
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFc1jSDK;->AFKeystoreWrapper(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public final values(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    const-string v0, "extraReferrers"

    .line 447
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "received a new (extra) referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 451
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 453
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v3

    const/4 v4, 0x0

    .line 454
    invoke-interface {v3, v0, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 456
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 457
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v12, v5

    move-object v5, v3

    move-object v3, v12

    goto :goto_0

    .line 459
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 466
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    const/16 v10, 0x33

    cmp-long v11, v6, v8

    if-gez v11, :cond_2

    const/16 v6, 0x59

    goto :goto_1

    :cond_2
    const/16 v6, 0x33

    :goto_1
    if-eq v6, v10, :cond_5

    .line 483
    sget v6, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v6, v6, 0xf

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    .line 467
    :try_start_1
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 471
    :cond_5
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v1, v1

    const-wide/16 v6, 0x4

    cmp-long v4, v1, v6

    if-ltz v4, :cond_6

    .line 483
    sget v1, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    .line 472
    :try_start_2
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lorg/json/JSONObject;)V

    .line 475
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "error at addReferrer"

    .line 481
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final values()Z
    .locals 3

    .line 565
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "waitForCustomerId"

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eq v0, v1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final waitForCustomerUserId(Z)V
    .locals 5

    .line 571
    sget v0, Lcom/appsflyer/internal/AFb1vSDK;->afRDLog:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1vSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    const-string v3, "waitForCustomerId"

    const-string v4, "initAfterCustomerUserID: "

    if-eq v0, v2, :cond_1

    .line 570
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 571
    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/lang/String;Z)V

    goto :goto_2

    .line 570
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    return-void
.end method
