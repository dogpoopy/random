.class Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismiss()V
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

    .line 105
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$000(Lcom/netease/ntunisdk/base/utils/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$3;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->access$002(Lcom/netease/ntunisdk/base/utils/LoadingDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
