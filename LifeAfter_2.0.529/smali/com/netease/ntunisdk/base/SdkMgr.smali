.class public Lcom/netease/ntunisdk/base/SdkMgr;
.super Ljava/lang/Object;
.source "SdkMgr.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UniSDK Mgr"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/netease/ntunisdk/base/SdkBase;

.field private static volatile d:Lcom/netease/ntunisdk/base/SdkDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    .line 257
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    const-string v1, "playpark"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    sput-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 260
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 262
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    sput-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 264
    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .line 416
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->init(Landroid/content/Context;)V

    :try_start_0
    const-string p0, "ntunisdk"

    .line 419
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadUnisdkSo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UniSDK Mgr"

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 149
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x3

    const-string v2, "UniSDK Mgr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const-string v0, "ntunisdk_data"

    .line 1280
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "ntunisdk_data empty"

    .line 1284
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1287
    :cond_0
    new-array v5, v5, [B

    .line 1288
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    .line 1290
    new-instance v0, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ntunisdk_data config not found"

    .line 1292
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 1295
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ntunisdk_data:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ";"

    .line 1296
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1297
    array-length v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    .line 1298
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Sdk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1299
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "com.netease.ntunisdk."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0, p1}, Lcom/netease/ntunisdk/base/SdkMgr;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_2
    :goto_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->a()V

    .line 156
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v0, :cond_5

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 161
    new-instance v5, Ldalvik/system/DexFile;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 167
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 168
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "com.netease.ntunisdk.Sdk"

    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 170
    invoke-static {v6, p0, p1}, Lcom/netease/ntunisdk/base/SdkMgr;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->a()V

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_5
    move-object v5, v3

    .line 181
    :goto_4
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p0

    const-string p1, "netease"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const-string v6, "g_10086"

    if-eqz p0, :cond_6

    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 182
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/SdkBase;

    sput-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 184
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_5

    :cond_6
    const/4 p0, 0x0

    .line 189
    :goto_5
    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-le v7, v0, :cond_7

    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 190
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/SdkBase;

    sput-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 192
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 193
    :cond_7
    sget-object v6, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez p0, :cond_8

    .line 194
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    sget-object v6, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_8
    :goto_6
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 199
    sget-object v6, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    .line 200
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdkUniSDKGuest"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdkNeteaseGlobal"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 201
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdkNeteaseAsia"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdkQeon"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 202
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdkBridge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "INNER_MODE_SPECIAL_LOGIN_CHANNEL"

    .line 203
    invoke-virtual {v6, v7, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    .line 204
    :cond_a
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 206
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_b
    sput-object v6, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 214
    :cond_c
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p0

    const-string p1, "facebook_sdk"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 215
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 216
    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    sget-object v6, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sput-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 221
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    const-string v6, "+"

    if-eqz p1, :cond_f

    .line 223
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 225
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_e
    sget-object v8, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 230
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    sget-object v7, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    if-eqz v7, :cond_11

    .line 232
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_10

    .line 234
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_10
    sget-object v9, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    new-array v1, v1, [Ljava/lang/Object;

    .line 239
    sget-object v6, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    const/4 p0, 0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "checkCurrentPlatform, inst=%s, sdkMap=%s, loginSdkMap=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->b(Ljava/util/Map;)V

    .line 242
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/util/Map;)V

    .line 2134
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    if-eqz p0, :cond_12

    .line 2135
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 2136
    sput-object v3, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    .line 2138
    :cond_12
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    if-eqz p0, :cond_13

    .line 2139
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 2140
    sput-object v3, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    :cond_13
    if-eqz v5, :cond_14

    .line 246
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xe

    if-lt p0, p1, :cond_14

    .line 248
    :try_start_2
    invoke-virtual {v5}, Ldalvik/system/DexFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const-string v0, "netease"

    const-string v1, "g_10086"

    const-string v2, "common"

    :try_start_0
    const-string v3, "SdkUnisdkSingle"

    .line 308
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UniSDK Mgr"

    if-eqz v3, :cond_0

    :try_start_1
    const-string p0, "newInstanceByClass pass SdkUnisdkSingle"

    .line 309
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v3, "Class.forName(%s)"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    .line 313
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 v6, 0x0

    .line 317
    :goto_0
    array-length v8, v3

    if-ge v6, v8, :cond_11

    .line 318
    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 319
    array-length v8, v8

    if-ne v8, v5, :cond_10

    .line 320
    aget-object v8, v3, v6

    new-array v9, v5, [Ljava/lang/Object;

    aput-object p1, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/ntunisdk/base/SdkBase;

    .line 321
    invoke-virtual {v8, p1}, Lcom/netease/ntunisdk/base/SdkBase;->setCtx(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v8}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v9

    .line 325
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v10, :cond_10

    sget-object v10, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_10

    .line 327
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 329
    sput-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 333
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "new instance "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "cc_record"

    .line 341
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "ngshare"

    .line 342
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "nstore"

    .line 343
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "mm_10086"

    .line 344
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "wo_app"

    .line 345
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "mdo_mm_10086"

    .line 346
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "play_telecom"

    .line 347
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "PlayLogin"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_3
    const-string p1, "play"

    .line 348
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "Yixin"

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_4
    const-string p1, "yixin"

    .line 349
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_5
    const-string p1, "playpark"

    .line 350
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "google_play"

    .line 351
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "google_play_mto"

    .line 353
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "google_play_ck"

    .line 354
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "tstore_ck"

    .line 355
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "nstore_ck"

    .line 356
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "olleh_ck"

    .line 357
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "lgustore"

    .line 358
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "joybomb"

    .line 359
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "SdkJoybombPay"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    :cond_6
    const-string p0, "google_play_jn"

    .line 360
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "xinyou"

    .line 361
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "helpshift"

    .line 362
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "gpGameSrv"

    .line 363
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "swrve"

    .line 364
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "nmarket"

    .line 365
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "ngadvert"

    .line 366
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "INNER_MODE_SECOND_CHANNEL"

    .line 367
    invoke-virtual {v8, p0, v7}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    .line 371
    :cond_7
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    .line 372
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    .line 381
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 382
    :cond_9
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez p0, :cond_a

    .line 383
    sput-object v8, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    return-void

    .line 384
    :cond_a
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 385
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    const-string p0, "dup common SdkBase, put into loginSdkMap"

    .line 390
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {p0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 387
    :cond_c
    :goto_1
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sput-object v8, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    return-void

    .line 374
    :cond_d
    :goto_2
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez p0, :cond_e

    .line 375
    sput-object v8, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    return-void

    .line 377
    :cond_e
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_f
    :goto_3
    const-string p0, "tmpChannel="

    .line 369
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    invoke-interface {p0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    return-void

    :catch_0
    move-exception p0

    .line 409
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    .line 407
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_3
    move-exception p0

    .line 403
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    return-void

    :catch_4
    move-exception p0

    .line 401
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return-void
.end method

.method public static destroyInst()V
    .locals 2

    .line 118
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    :cond_1
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    sput-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    .line 128
    :cond_2
    sput-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 130
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->clear()V

    return-void
.end method

.method public static getBaseSubVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getBaseVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.8.5"

    return-object v0
.end method

.method public static getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;
    .locals 2

    .line 435
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->d:Lcom/netease/ntunisdk/base/SdkDownload;

    if-nez v0, :cond_1

    .line 436
    const-class v0, Lcom/netease/ntunisdk/base/SdkDownload;

    monitor-enter v0

    .line 437
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->d:Lcom/netease/ntunisdk/base/SdkDownload;

    if-nez v1, :cond_0

    .line 438
    new-instance v1, Lcom/netease/ntunisdk/base/SdkDownload;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/SdkDownload;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->d:Lcom/netease/ntunisdk/base/SdkDownload;

    .line 440
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 442
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->d:Lcom/netease/ntunisdk/base/SdkDownload;

    return-object v0
.end method

.method public static getInst()Lcom/netease/ntunisdk/base/GamerInterface;
    .locals 1

    .line 83
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    return-object v0
.end method

.method public static getInst(Ljava/lang/String;)Lcom/netease/ntunisdk/base/GamerInterface;
    .locals 3

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 97
    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-boolean v1, v1, Lcom/netease/ntunisdk/base/SdkBase;->hasInit:Z

    iput-boolean v1, v0, Lcom/netease/ntunisdk/base/SdkBase;->hasInit:Z

    .line 99
    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase;->b(Ljava/util/Map;)V

    .line 102
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->loginSdkInstMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 104
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Ljava/util/Map;)V

    .line 105
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object p0, p0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 107
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    sget-object v1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sput-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    .line 111
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/netease/ntunisdk/base/SdkMgr;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/SdkMgr;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "UniSDK Mgr"

    const-string v1, "setCtx again"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/base/SdkBase;->setCtx(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->a:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->b:Ljava/util/Map;

    .line 68
    sget-object v0, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/netease/ntunisdk/base/SdkMgr;->a(Landroid/content/Context;)V

    .line 70
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/base/SdkMgr;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "UniSDK Mgr"

    const-string v0, "setCtx again"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object p1, Lcom/netease/ntunisdk/base/SdkMgr;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/base/SdkBase;->setCtx(Landroid/content/Context;)V

    return-void
.end method
