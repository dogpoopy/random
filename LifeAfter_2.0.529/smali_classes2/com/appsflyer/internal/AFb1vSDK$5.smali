.class final Lcom/appsflyer/internal/AFb1vSDK$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1ySDK$AFa1ySDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFb1vSDK;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1bSDK;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFb1vSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFb1vSDK;Lcom/appsflyer/internal/AFg1bSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1bSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 9

    .line 926
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 3025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    const-string v1, "onBecameBackground"

    .line 927
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1bSDK;

    .line 3088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3089
    iget-wide v4, v1, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 3090
    iget-wide v4, v1, Lcom/appsflyer/internal/AFg1bSDK;->unregisterClient:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    .line 3095
    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->i:J

    .line 3096
    iget-object v2, v1, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    iget-wide v3, v1, Lcom/appsflyer/internal/AFg1bSDK;->i:J

    const-string v1, "prev_session_dur"

    invoke-interface {v2, v1, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v1, "Metrics: fg ts is missing"

    .line 3098
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :goto_0
    const-string v1, "callStatsBackground background call"

    .line 929
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->init()Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1iSDK;->values()V

    .line 931
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v1

    .line 932
    invoke-interface {v1}, Lcom/appsflyer/internal/AFb1cSDK;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    invoke-interface {v1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf()V

    if-eqz v0, :cond_2

    .line 934
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v2

    if-nez v2, :cond_2

    .line 935
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 937
    invoke-interface {v1, v2, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 939
    :cond_2
    invoke-interface {v1}, Lcom/appsflyer/internal/AFb1cSDK;->values()V

    goto :goto_1

    :cond_3
    const-string v0, "RD status is OFF"

    .line 941
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 943
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFLogger()Lcom/appsflyer/internal/AFi1fSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFi1fSDK;->AFInAppEventParameterName()V

    .line 944
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1kSDK;->AFInAppEventParameterName()V

    return-void
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFh1zSDK;)V
    .locals 5

    .line 901
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName()V

    .line 902
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 903
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1vSDK;->values(Lcom/appsflyer/internal/AFb1vSDK;)Lcom/appsflyer/internal/AFf1iSDK;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFf1eSDK;->values(Lcom/appsflyer/internal/AFf1iSDK;)V

    .line 904
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1vSDK;)V

    .line 905
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v1

    .line 1164
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v2, "appsFlyerCount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "onBecameForeground"

    .line 906
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 909
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1nSDK;->AFLogger()Lcom/appsflyer/internal/AFi1fSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFi1fSDK;->valueOf()V

    .line 911
    :cond_0
    new-instance v1, Lcom/appsflyer/internal/AFh1sSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1sSDK;-><init>()V

    if-eqz p1, :cond_1

    .line 916
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1nSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1jSDK;

    move-result-object v2

    .line 917
    invoke-static {v1}, Lcom/appsflyer/internal/AFc1oSDK;->valueOf(Lcom/appsflyer/internal/AFa1pSDK;)Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v3

    .line 2012
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1zSDK;->valueOf:Landroid/content/Intent;

    .line 919
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 2025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 916
    invoke-virtual {v2, v3, v4, v0}, Lcom/appsflyer/internal/AFc1jSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFc1oSDK;Landroid/content/Intent;Landroid/content/Context;)V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->valueOf:Lcom/appsflyer/internal/AFb1vSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1vSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 2091
    iput-object v2, v1, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 921
    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFh1zSDK;)V

    return-void
.end method
