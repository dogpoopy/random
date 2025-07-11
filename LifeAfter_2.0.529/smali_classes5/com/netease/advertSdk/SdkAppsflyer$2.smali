.class final Lcom/netease/advertSdk/SdkAppsflyer$2;
.super Ljava/lang/Object;
.source "SdkAppsflyer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/advertSdk/SdkAppsflyer;->_appsflyerInit(Landroid/content/Context;Lcom/netease/advertSdk/AfData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/netease/advertSdk/SdkAppsflyer$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 340
    invoke-static {v0}, Lcom/netease/advertSdk/Utils;->getUnisdkDeviceId(Z)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SdkAppsflyer"

    if-nez v1, :cond_0

    const-string v1, "use gaid2"

    .line 342
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/advertSdk/SdkAppsflyer$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 345
    invoke-static {v0}, Lcom/netease/advertSdk/Utils;->getUnisdkDeviceId(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaid not ready, use adId"

    .line 346
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/advertSdk/SdkAppsflyer$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
