.class public final Lcom/appsflyer/internal/AFa1tSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1vSDK;


# static fields
.field private static valueOf:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    :try_start_0
    sget-object v2, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "status"

    const/4 v3, -0x1

    .line 43
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v5, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    const-string v2, "plugged"

    .line 46
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const-string v0, "other"

    goto :goto_1

    :cond_1
    const-string v0, "wireless"

    goto :goto_1

    :cond_2
    const-string v0, "usb"

    goto :goto_1

    :cond_3
    const-string v0, "ac"

    goto :goto_1

    :cond_4
    const-string v0, "no"

    :goto_1
    const-string v2, "level"

    .line 65
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    .line 66
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v2, :cond_5

    if-eq v3, p1, :cond_5

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float v2, v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v2, "Device that failed to register receiver"

    .line 73
    invoke-static {v2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_5
    :goto_2
    new-instance p1, Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;

    invoke-direct {p1, v1, v0}, Lcom/appsflyer/internal/AFd1vSDK$AFa1ySDK;-><init>(FLjava/lang/String;)V

    return-object p1
.end method
