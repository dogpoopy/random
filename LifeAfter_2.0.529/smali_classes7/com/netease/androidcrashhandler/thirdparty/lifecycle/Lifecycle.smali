.class public Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Lifecycle"

.field private static final mSource:Ljava/lang/String; = "crashhunter0"

.field private static sLifecycle:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;


# instance fields
.field private isRegister:Z

.field private mActivityNameMap:Lcom/netease/androidcrashhandler/util/LimitSizeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/androidcrashhandler/util/LimitSizeMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mForeground:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isRegister:Z

    .line 34
    new-instance v0, Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mActivityNameMap:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Lcom/netease/androidcrashhandler/util/LimitSizeMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mActivityNameMap:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mForeground:Z

    return p0
.end method

.method static synthetic access$102(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mForeground:Z

    return p1
.end method

.method private addModuleCallback()V
    .locals 4

    const-string v0, "trace"

    const-string v1, "Lifecycle [addModuleCallback] start"

    .line 72
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$1;-><init>(Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;)V

    const-string v2, "crashhunter0"

    const-string v3, "applicationLifecycle"

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->addModuleCallback(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/api/ModulesCallback;)I

    return-void
.end method

.method private getApkStartTime()V
    .locals 5

    const-string v0, "trace"

    const-string v1, "Lifecycle [getApkStartTime] start"

    .line 153
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "methodId"

    const-string v3, "get_apk_start_time"

    .line 156
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v2

    const-string v3, "crashhunter0"

    const-string v4, "applicationLifecycle"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lifecycle [getApkStartTime] result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lifecycle [getApkStartTime] JSONException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;
    .locals 1

    .line 41
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->sLifecycle:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->sLifecycle:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    .line 45
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->sLifecycle:Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    return-object v0
.end method

.method private static hookActivityThreadCheckForeground()Z
    .locals 8

    const-string v0, "Lifecycle [hookActivityThreadCheckForeground] isForeground:false"

    const-string v1, "trace"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.app.ActivityThread"

    .line 177
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentActivityThread"

    new-array v5, v2, [Ljava/lang/Class;

    .line 178
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mActivities"

    .line 179
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 180
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 183
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_0

    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 188
    :goto_0
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 189
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 192
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "paused"

    .line 194
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v3, "Lifecycle [hookActivityThreadCheckForeground] isForeground:true"

    .line 198
    invoke-static {v1, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    :cond_3
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private isRegister()Z
    .locals 6

    const-string v0, "trace"

    const-string v1, "Lifecycle [isRegister] start"

    .line 132
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "methodId"

    const-string v4, "is_register"

    .line 137
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v3

    const-string v4, "crashhunter"

    const-string v5, "applicationLifecycle"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lifecycle [isRegister] res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lifecycle [isRegister] Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lifecycle [isRegister] result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private startListen()V
    .locals 5

    const-string v0, "trace"

    const-string v1, "Lifecycle [startListen] start"

    .line 58
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "methodId"

    const-string v3, "start_listen"

    .line 61
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v2

    const-string v3, "crashhunter0"

    const-string v4, "applicationLifecycle"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lifecycle [startListen] result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lifecycle [startListen] JSONException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActivityNameMap()Lcom/netease/androidcrashhandler/util/LimitSizeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/androidcrashhandler/util/LimitSizeMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle$ActivityLifeModel;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mActivityNameMap:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    return-object v0
.end method

.method public initLifecycle(Landroid/content/Context;)V
    .locals 1

    const-string p1, "trace"

    const-string v0, "Lifecycle [initLifecycle] start"

    .line 49
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->addModuleCallback()V

    .line 51
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->startListen()V

    .line 52
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isRegister()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isRegister:Z

    .line 53
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getApkStartTime()V

    const-string v0, "Lifecycle [initLifecycle] end"

    .line 54
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isForeground()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->mForeground:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->hookActivityThreadCheckForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
