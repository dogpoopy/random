.class Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;
.super Ljava/lang/Object;
.source "SdkFirebaseAnalytics.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->getDynamicLink(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;Lorg/json/JSONObject;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V
    .locals 5

    const-string v0, "SdkFirebaseAnalytics"

    const-string v1, "getDynamicLink:onSuccess"

    .line 493
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "respCode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "respMsg"

    const-string v2, "succ"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "code"

    if-eqz p1, :cond_4

    .line 498
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v2, "deepLink"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getClickTimestamp()J

    move-result-wide v0

    .line 502
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v4, "clickTimestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getExtensions()Landroid/os/Bundle;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v2, "extensionBundle"

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$500(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getMinimumAppVersion()I

    move-result v0

    .line 506
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v2, "minVersion"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getRedirectUrl()Landroid/net/Uri;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v2, "redirectUrl"

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getUtmParameters()Landroid/os/Bundle;

    move-result-object p1

    .line 510
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "utmParams"

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->access$500(Lcom/netease/ntunisdk/SdkFirebaseAnalytics;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 513
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const/16 v1, 0xc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    const-string v0, "errMsg"

    const-string v1, "pendingDynamicLinkData is null"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    :goto_4
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->this$0:Lcom/netease/ntunisdk/SdkFirebaseAnalytics;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics;->extendFuncCall(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 518
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 488
    check-cast p1, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFirebaseAnalytics$3;->onSuccess(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)V

    return-void
.end method
