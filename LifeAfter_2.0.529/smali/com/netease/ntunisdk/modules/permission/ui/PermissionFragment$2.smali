.class Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

.field final synthetic val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

.field final synthetic val$permissionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    iput-object p3, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->access$102(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    const/16 v3, 0x538

    invoke-static {v3, v0, v1, v2}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->goSetting(ILjava/lang/String;Landroid/app/Activity;Landroid/app/Fragment;)V

    return-void
.end method

.method public refuse()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getGrantResults(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    return-void
.end method
