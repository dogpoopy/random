.class public Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;
.super Lcom/netease/ntunisdk/modules/base/call/DefaultModulesCall;
.source "SDKModulesCall.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK SDKModulesCall"


# instance fields
.field private regModulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/modules/base/InnerModulesManager;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/base/call/DefaultModulesCall;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->innerModulesManager:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    return-void
.end method


# virtual methods
.method public varargs callSDKOthersModules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->innerModulesManager:Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->extendFuncByInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized notiSDKOthersModules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UniSDK SDKModulesCall"

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " receiveOthersModulesMsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;

    iget-object p1, p1, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;->moduleObj:Lcom/netease/ntunisdk/modules/base/BaseModules;

    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/modules/base/BaseModules;->receiveOthersModulesMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "UniSDK SDKModulesCall"

    const-string v1, "not specify source, all register module can receive msg"

    .line 60
    invoke-static {p1, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;

    iget-object v1, v1, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;->moduleObj:Lcom/netease/ntunisdk/modules/base/BaseModules;

    invoke-virtual {v1, p2, p3}, Lcom/netease/ntunisdk/modules/base/BaseModules;->receiveOthersModulesMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized registerModulesListener(Ljava/lang/String;ZLcom/netease/ntunisdk/modules/base/BaseModules;)V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UniSDK SDKModulesCall"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regModulesMap contain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 27
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;

    invoke-direct {v1, p2, p3}, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;-><init>(ZLcom/netease/ntunisdk/modules/base/BaseModules;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-virtual {p3}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;

    invoke-direct {v2, p2, p3}, Lcom/netease/ntunisdk/modules/base/entity/RegisterModuleEntity;-><init>(ZLcom/netease/ntunisdk/modules/base/BaseModules;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "UniSDK SDKModulesCall"

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regModulesMap put:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegisterModulesListener(Ljava/lang/String;Lcom/netease/ntunisdk/modules/base/BaseModules;)V
    .locals 4

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/call/SDKModulesCall;->regModulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "UniSDK SDKModulesCall"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unRegisterModulesListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
