.class public Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;
.super Ljava/lang/Object;
.source "PluginExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field private mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

.field private mPluginCallbackWrapper:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/auth/plugins/Plugin;Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    .line 100
    iput-object p2, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPluginCallbackWrapper:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task.execute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    invoke-interface {v1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addPreTaskResult(Lcom/netease/mpay/oversea/auth/plugins/PluginResult;)V

    .line 106
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->run()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPluginCallbackWrapper:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$PluginCallbackWrapper;

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->addCallback(Lcom/netease/mpay/oversea/auth/plugins/PluginCallback;)Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->execute()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task{mPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$Task;->mPlugin:Lcom/netease/mpay/oversea/auth/plugins/Plugin;

    .line 117
    invoke-interface {v1}, Lcom/netease/mpay/oversea/auth/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
