.class public Lcom/netease/advertSdk/SdkFirebase;
.super Ljava/lang/Object;
.source "SdkFirebase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertFirebase"

.field private static ctx:Landroid/content/Context;

.field private static mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdvertFirebase"

    const-string v1, "handleCustomEvent"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_0
    sget-object v1, Lcom/netease/advertSdk/SdkFirebase;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_0

    const-string v1, "mFirebaseAnalytics is null, reinit"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Lcom/netease/advertSdk/SdkFirebase;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    sput-object v1, Lcom/netease/advertSdk/SdkFirebase;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->isJson(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "params is not jsonStr"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_1
    sget-object v0, Lcom/netease/advertSdk/SdkFirebase;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/netease/advertSdk/SdkFirebase;->ctx:Landroid/content/Context;

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, Lcom/netease/advertSdk/SdkFirebase;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
