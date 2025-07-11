.class public Ltv/danmaku/ijk/media/player/utils/GaidUtils;
.super Landroid/os/AsyncTask;
.source "GaidUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;,
        Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingConnection;,
        Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static GaidId:Ljava/lang/String; = null

.field private static final KEY_GAID_CACHED:Ljava/lang/String; = "gaid_cached"

.field private static final TAG:Ljava/lang/String; = "GaidUtils"

.field private static inited:Z

.field private static sCallbackSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getFromBindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static cacheGaid(Ljava/lang/String;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache gaid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GaidUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sput-object p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->GaidId:Ljava/lang/String;

    const-string v0, "gaid_cached"

    .line 65
    invoke-static {v0, p0}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->setSwicherString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->cacheGaid(Ljava/lang/String;)V

    .line 70
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;->done(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private static getCachedGaid()Ljava/lang/String;
    .locals 2

    .line 79
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->GaidId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "gaid_cached"

    .line 80
    invoke-static {v1, v0}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->getSwitcherValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->GaidId:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->GaidId:Ljava/lang/String;

    return-object v0
.end method

.method static getCachedGaid(Landroid/content/Context;Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 86
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->sCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getCachedGaid()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->inited:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 90
    sput-boolean v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->inited:Z

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object p1
.end method

.method private static getFromBindService(Landroid/content/Context;)V
    .locals 5

    const-string v0, "unBindService AdvertisingInterface getId"

    const-string v1, "GaidUtils"

    const-string v2, "get From Bind Service"

    .line 155
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->hasInstalledGooglePlayServices(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v2, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingConnection;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingConnection;-><init>(Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;)V

    .line 160
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 161
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 163
    :try_start_0
    invoke-virtual {p0, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v3, :cond_1

    .line 165
    :try_start_1
    new-instance v3, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;

    .line 166
    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 167
    invoke-virtual {v3, p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils$AdvertisingInterface;->getId(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 175
    :goto_0
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    const-string v4, "getFromBindService AdvertisingInterface getId"

    .line 170
    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 173
    :try_start_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_0

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p0

    .line 175
    :try_start_7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :goto_1
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p0

    const-string v0, "getFromBindService"

    .line 181
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method private static getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "GaidUtils"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "get From play service start"

    .line 129
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 130
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAdvertisingIdInfo"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 131
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    .line 132
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    .line 133
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getId"

    new-array v5, v7, [Ljava/lang/Class;

    .line 134
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 135
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "UTF-8"

    .line 136
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v7, [Ljava/lang/Class;

    .line 137
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 138
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / limit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string p0, "gaid limited"

    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    goto :goto_1

    .line 143
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    invoke-static {p0, v1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->doWhenGaidReady(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    const-string v2, "getFromPlayServiceClient"

    .line 148
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method static hasInstalledGooglePlayServices(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "com.android.vending"

    const-string v1, "com.google.android.gms"

    const-string v2, "GaidUtils"

    const/4 v3, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gms pkgInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gms appInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "store pkgInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "store appInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    const-string p0, "Google Play services is missing."

    .line 121
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method public static initGaid(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getCachedGaid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->requestGaid(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static isOnUiThread()Z
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static requestGaid(Landroid/content/Context;)V
    .locals 4

    .line 49
    new-instance v0, Ltv/danmaku/ijk/media/player/utils/GaidUtils;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;-><init>()V

    .line 50
    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->isOnUiThread()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Landroid/content/Context;

    aput-object p0, v1, v2

    .line 51
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-array v1, v3, [Landroid/content/Context;

    aput-object p0, v1, v2

    .line 53
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    if-eqz p1, :cond_0

    .line 187
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    aget-object v1, p1, v0

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getFromPlayServiceClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    aget-object p1, p1, v0

    invoke-static {p1}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getFromBindService(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
