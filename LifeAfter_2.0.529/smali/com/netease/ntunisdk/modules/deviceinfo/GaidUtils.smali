.class public Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;
.super Ljava/lang/Object;
.source "GaidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingInterface;,
        Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingConnection;,
        Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;
    }
.end annotation


# static fields
.field private static final KEY_GAID_CACHED:Ljava/lang/String; = "gaid_cached"

.field private static final KEY_GAID_CACHED_FAKE:Ljava/lang/String; = "gaid_cached_fake"

.field private static final TAG:Ljava/lang/String; = "GaidUtils"

.field private static deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

.field private static sCallbackSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasCheckedAmazonAd:Z

.field private static sHasCheckedGms:Z

.field private static sHasInstalledAmazonAd:Z

.field private static sHasInstalledGms:Z

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasCheckedGms:Z

    .line 42
    sput-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasInstalledGms:Z

    .line 44
    sput-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasCheckedAmazonAd:Z

    .line 45
    sput-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasInstalledAmazonAd:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static cacheFakeGaid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 80
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "GaidUtils"

    .line 81
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 83
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "gaid_cached_fake"

    .line 84
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static cacheGaid(Ljava/lang/String;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gaid_cached"

    .line 73
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    .line 91
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;->done(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    if-eqz p0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"methodId\": \"gaidCallback\", \"gaid\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->gaidCallback(Ljava/lang/String;)V

    .line 109
    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private getAmazonAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "limit_ad_tracking"

    .line 275
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "advertising_id"

    .line 277
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GaidUtils"

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amazon advertisingID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p1, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getCachedFakeGaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 122
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "GaidUtils"

    .line 123
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 125
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "gaid_cached_fake"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedFakeGaid(Landroid/content/Context;Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 137
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getCachedFakeGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedGaid()Ljava/lang/String;
    .locals 3

    .line 115
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "gaid_cached"

    .line 116
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getCachedGaid(Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 130
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getCachedGaid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFromBindService(Landroid/content/Context;)V
    .locals 3

    .line 221
    new-instance v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingConnection;-><init>(Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$1;)V

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 225
    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 227
    :try_start_1
    new-instance v1, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingInterface;

    .line 228
    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 229
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$AdvertisingInterface;->getId(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_0
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 232
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 234
    :goto_1
    :try_start_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 235
    throw v1

    :cond_0
    const-string p1, ""

    .line 237
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->cacheGaid(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const-string v0, " / limit:"

    const-string v1, ""

    const-string v2, "GaidUtils"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 192
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getAdvertisingIdInfo"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 193
    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v9

    .line 194
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    .line 195
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isLimitAdTrackingEnabled"

    new-array v7, v9, [Ljava/lang/Class;

    .line 196
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    .line 197
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "before get id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    const-string p1, "gaid limited"

    .line 200
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v7, "getId"

    new-array v8, v9, [Ljava/lang/Class;

    .line 203
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    .line 204
    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "UTF-8"

    .line 205
    invoke-static {v4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    invoke-static {p1, v3}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after get id:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 212
    :goto_1
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getCachedGaid()Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v3
.end method

.method public static declared-synchronized getRandomUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;

    monitor-enter v0

    .line 368
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    .line 371
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 375
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    mul-double v4, v4, v6

    const-wide v6, 0x4058400000000000L    # 97.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    int-to-char v4, v5

    .line 376
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->cacheFakeGaid(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "GaidUtils"

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Fake udid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "GaidUtils"

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Fake udid throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    const-string v2, ""

    .line 390
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static hasInstalledAmazonAdvertisingId(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "com.amazon.advertisingidsettings"

    const-string v1, "GaidUtils"

    .line 143
    sget-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasCheckedAmazonAd:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amazon advertisingidsettings pkgInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amazon advertisingidsettings appInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sput-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasInstalledAmazonAd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "Amazon advertisingidsettings is missing."

    .line 154
    invoke-static {v1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    sput-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasCheckedAmazonAd:Z

    .line 159
    :cond_0
    sget-boolean p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasInstalledAmazonAd:Z

    return p0
.end method

.method public static hasInstalledGooglePlayServices(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "com.android.vending"

    const-string v1, "com.google.android.gms"

    const-string v2, "GaidUtils"

    .line 164
    sget-boolean v3, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasCheckedGms:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v4, 0x0

    .line 167
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gms pkgInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gms appInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "store pkgInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "store appInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sput-boolean v3, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasInstalledGms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "Google Play services is missing."

    .line 180
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    sput-boolean v3, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasCheckedGms:Z

    .line 186
    :cond_0
    sget-boolean p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sHasInstalledGms:Z

    return p0
.end method

.method public static requestGaid(Landroid/content/Context;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    .locals 2

    .line 60
    sput-object p1, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    .line 61
    new-instance p1, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    sget-object p1, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v1, "GaidUtils"

    .line 64
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 247
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    sget-boolean v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->deviceInfoModule:Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->isOversea:Z

    if-nez v0, :cond_1

    const-string v0, ""

    .line 251
    invoke-static {v0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getAmazonAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getFromBindService(Landroid/content/Context;)V

    :cond_3
    return-void
.end method
