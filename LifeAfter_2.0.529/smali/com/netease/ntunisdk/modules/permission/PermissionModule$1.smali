.class Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;
.super Landroid/os/Handler;
.source "PermissionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/permission/PermissionModule;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Landroid/os/Looper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x538

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "PermissionModule"

    const-string v1, "get handleMessage"

    .line 66
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$000(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$100(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 70
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;

    .line 72
    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionTask;->getValue()Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {v2}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$000(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {v2}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$000(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$000(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    .line 84
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$1;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$200(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    :cond_2
    return-void
.end method
