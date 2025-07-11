.class Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;
.super Ljava/lang/Object;
.source "PermissionModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/permission/PermissionModule;->requestPermission(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/modules/permission/common/PermissionCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

.field final synthetic val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

.field final synthetic val$permissionNameTemp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Ljava/lang/String;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->val$permissionNameTemp:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$000(Lcom/netease/ntunisdk/modules/permission/PermissionModule;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->val$permissionNameTemp:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->this$0:Lcom/netease/ntunisdk/modules/permission/PermissionModule;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/PermissionModule$3;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/permission/PermissionModule;->access$200(Lcom/netease/ntunisdk/modules/permission/PermissionModule;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    return-void
.end method
