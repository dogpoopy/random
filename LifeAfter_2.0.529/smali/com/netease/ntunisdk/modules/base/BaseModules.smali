.class public abstract Lcom/netease/ntunisdk/modules/base/BaseModules;
.super Lcom/netease/ntunisdk/modules/base/Lifecycle;
.source "BaseModules.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK BaseModules"


# instance fields
.field protected context:Landroid/content/Context;

.field protected modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/base/Lifecycle;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    return-void
.end method


# virtual methods
.method public callSDKOthersModules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->callSDKOthersModules(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs callSDKOthersModules(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string v1, "%s module call %s module, data:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK BaseModules"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netease/ntunisdk/modules/base/call/IModulesCall;->callSDKOthersModules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/netease/ntunisdk/modules/base/call/IModulesCall;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/netease/ntunisdk/modules/base/BaseModules;->notiSDKOthersModules(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs abstract extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public varargs extendFuncGen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method protected notiSDKOthersModules(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/netease/ntunisdk/modules/base/call/IModulesCall;->notiSDKOthersModules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public receiveOthersModulesMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "%s receive msg from %s, data:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniSDK BaseModules"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected registerModuleListener(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/modules/base/BaseModules;->registerModuleListener(Ljava/lang/String;Z)V

    return-void
.end method

.method protected registerModuleListener(Ljava/lang/String;Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    invoke-interface {v0, p1, p2, p0}, Lcom/netease/ntunisdk/modules/base/call/IModulesCall;->registerModulesListener(Ljava/lang/String;ZLcom/netease/ntunisdk/modules/base/BaseModules;)V

    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->context:Landroid/content/Context;

    return-void
.end method

.method protected unRegisterModuleListener(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/base/BaseModules;->modulesCall:Lcom/netease/ntunisdk/modules/base/call/IModulesCall;

    invoke-interface {v0, p1, p0}, Lcom/netease/ntunisdk/modules/base/call/IModulesCall;->unRegisterModulesListener(Ljava/lang/String;Lcom/netease/ntunisdk/modules/base/BaseModules;)V

    return-void
.end method
