.class public Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;
.super Lcom/netease/ntunisdk/modules/base/BaseModules;
.source "ApplicationLifecycleModule.java"


# static fields
.field public static final ACTION_APP_FOREGROUND:Ljava/lang/String; = "app_foreground"

.field public static final ACTION_GET_APK_START_TIME:Ljava/lang/String; = "get_apk_start_time"

.field public static final ACTION_IS_REGISTER:Ljava/lang/String; = "is_register"

.field public static final ACTION_LIFE_MODEL:Ljava/lang/String; = "life_model"

.field public static final ACTION_REGISTER_SYSTEM:Ljava/lang/String; = "register_system"

.field public static final ACTION_START_LISTEN:Ljava/lang/String; = "start_listen"

.field public static final ACTIVITY_LIFE_CREATE:I = 0x1

.field public static final ACTIVITY_LIFE_DESTROY:I = 0x4

.field public static final ACTIVITY_LIFE_PAUSE:I = 0x6

.field public static final ACTIVITY_LIFE_RESUME:I = 0x5

.field public static final ACTIVITY_LIFE_SAVE_INSTANCE:I = 0x7

.field public static final ACTIVITY_LIFE_START:I = 0x2

.field public static final ACTIVITY_LIFE_STOP:I = 0x3

.field public static final MODULE_NAME:Ljava/lang/String; = "applicationLifecycle"

.field public static final TAG:Ljava/lang/String; = "LifecycleModule"

.field public static final TAG_FOREGROUND_BOOL:Ljava/lang/String; = "foreground"

.field public static final TAG_LIFE_ACT_STR:Ljava/lang/String; = "life_act"

.field public static final TAG_LIFE_MODEL_INT:Ljava/lang/String; = "life_model_int"

.field private static final VERSION:Ljava/lang/String; = "1.0.5"


# instance fields
.field private final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Ljava/lang/String;

.field private mLifeModel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/modules/base/BaseModules;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->mLifeModel:I

    const-string p1, ""

    .line 28
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->mActivityName:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackList:Ljava/util/List;

    const-string p1, "LifecycleModule"

    const-string p2, "ApplicationLifecycleModule"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->registerCallback(Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;)V

    return-void
.end method


# virtual methods
.method public callActivityLife(ILjava/lang/String;)V
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackRes life:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->mActivityName:Ljava/lang/String;

    .line 162
    iput p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->mLifeModel:I

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "life_model"

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "life_model_int"

    .line 166
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "life_act"

    .line 167
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "native"

    .line 169
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public callbackRes(Z)V
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackRes isFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleModule"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "app_foreground"

    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "foreground"

    .line 144
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "native"

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public varargs extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 109
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "methodId"

    .line 110
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "start_listen"

    .line 111
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 112
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackList:Ljava/util/List;

    monitor-enter p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iget-object p4, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackList:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 114
    iget-object p4, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackList:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->isIsForeground()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callbackRes(Z)V

    .line 116
    iget p2, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->mLifeModel:I

    iget-object p4, p0, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->mActivityName:Ljava/lang/String;

    invoke-virtual {p0, p2, p4}, Lcom/netease/ntunisdk/modules/applicationlifecycle/ApplicationLifecycleModule;->callActivityLife(ILjava/lang/String;)V

    const/4 p2, 0x1

    .line 117
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    monitor-exit p3

    return-object p2

    .line 119
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p2

    .line 121
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    :cond_1
    const-string p2, "is_register"

    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 123
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->isRegister()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "register_system"

    .line 124
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p2, "get_apk_start_time"

    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 127
    invoke-static {}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getInstance()Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/applicationlifecycle/LifecycleCallback;->getApkStartTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 130
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "applicationLifecycle"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.5"

    return-object v0
.end method
