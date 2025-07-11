.class Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/LoadingDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismiss()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$100(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x1030011

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$002(Lcom/netease/ntunisdk/base/utils/LoadingDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$100(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "unisdk_login_loading_progressdialog"

    const-string v3, "layout"

    iget-object v4, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    .line 70
    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$100(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$2;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadingDialog"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
