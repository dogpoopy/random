.class Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;)Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;)Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;->refuse()V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;->this$0:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->dismiss()V

    return-void
.end method
