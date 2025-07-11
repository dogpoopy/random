.class public Lcom/netease/ntunisdk/base/utils/GaidUtils;
.super Ljava/lang/Object;
.source "GaidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;,
        Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingConnection;,
        Lcom/netease/ntunisdk/base/utils/GaidUtils$Callback;
    }
.end annotation


# static fields
.field private static final KEY_GAID_CACHED:Ljava/lang/String; = "gaid_cached"

.field private static final TAG:Ljava/lang/String; = "GaidUtils"

.field private static sCallbackSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/netease/ntunisdk/base/utils/GaidUtils$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasCheckedGms:Z

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

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sHasCheckedGms:Z

    .line 32
    sput-boolean v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sHasInstalledGms:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static cacheGaid(Ljava/lang/String;)V
    .locals 2

    .line 55
    sget-object v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gaid_cached"

    .line 57
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/utils/GaidUtils$Callback;

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils$Callback;->done(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 70
    check-cast p0, Landroid/app/Activity;

    new-instance v0, Lcom/netease/ntunisdk/base/utils/GaidUtils$1;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static getCachedGaid()Ljava/lang/String;
    .locals 3

    .line 85
    sget-object v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "gaid_cached"

    .line 86
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getCachedGaid(Lcom/netease/ntunisdk/base/utils/GaidUtils$Callback;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 93
    sget-object v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->getCachedGaid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFromBindService(Landroid/content/Context;)V
    .locals 3

    .line 155
    new-instance v0, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingConnection;-><init>(Lcom/netease/ntunisdk/base/utils/GaidUtils$1;)V

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 157
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 159
    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 161
    :try_start_1
    new-instance v1, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;

    .line 162
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 163
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils$AdvertisingInterface;->getId(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 166
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :try_start_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 169
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-string v1, "GaidUtils"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 128
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 129
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v8

    .line 130
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    .line 131
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getId"

    new-array v6, v8, [Ljava/lang/Class;

    .line 132
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v6, "UTF-8"

    .line 134
    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isLimitAdTrackingEnabled"

    new-array v7, v8, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v8, [Ljava/lang/Object;

    .line 136
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "id:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / limit:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v3, "gaid limited"

    .line 139
    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 141
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 142
    invoke-static {p1, v5}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v5, v2

    .line 146
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->getCachedGaid()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 147
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->hasInstalledGooglePlayServices(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v0, v2

    :cond_1
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v0, v5

    :goto_2
    return-object v0
.end method

.method public static hasInstalledGooglePlayServices(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "com.android.vending"

    const-string v1, "com.google.android.gms"

    const-string v2, "GaidUtils"

    .line 100
    sget-boolean v3, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sHasCheckedGms:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const-string v6, "gms pkgInfo: "

    .line 104
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v5, "gms appInfo: "

    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v5, "store pkgInfo: "

    .line 109
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v0, "store appInfo: "

    .line 111
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sput-boolean v3, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sHasInstalledGms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "Google Play services is missing."

    .line 116
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    sput-boolean v3, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sHasCheckedGms:Z

    .line 122
    :cond_0
    sget-boolean p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sHasInstalledGms:Z

    return p0
.end method

.method public static requestGaid(Landroid/content/Context;)V
    .locals 3

    .line 45
    new-instance v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/utils/GaidUtils;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    sget-object v0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "GaidUtils"

    .line 48
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/GaidUtils;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/base/utils/GaidUtils;->getFromBindService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
