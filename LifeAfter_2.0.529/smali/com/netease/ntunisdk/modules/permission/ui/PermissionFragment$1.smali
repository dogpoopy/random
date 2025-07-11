.class Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->showDialog(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

.field final synthetic val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    iput-object p2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->access$100(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->proceed(Ljava/lang/String;Landroid/app/Fragment;)V

    const-string v0, "PermissionFragment"

    const-string v1, "chooseDisplayDialog: proceed"

    .line 128
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refuse()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getGrantResults(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->val$permissionHandler:Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    iget-object v3, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->refuse([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    const-string v0, "PermissionFragment"

    const-string v1, "chooseDisplayDialog: refuse"

    .line 122
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
