.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;
.super Ljava/lang/Object;
.source "ConfirmHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

.field final synthetic val$confirmData:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$progressView:Lcom/netease/mpay/oversea/scan/widgets/ProgressView;

.field final synthetic val$scene:Ljava/lang/String;

.field final synthetic val$shouldShowAgreeLayout:Z

.field final synthetic val$toggleButton:Landroid/widget/ToggleButton;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ToggleButton;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$confirmData:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$shouldShowAgreeLayout:Z

    iput-object p6, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$toggleButton:Landroid/widget/ToggleButton;

    iput-object p7, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$scene:Ljava/lang/String;

    iput-object p8, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$progressView:Lcom/netease/mpay/oversea/scan/widgets/ProgressView;

    iput-object p9, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 124
    new-instance p1, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$100(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$confirmData:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$shouldShowAgreeLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$toggleButton:Landroid/widget/ToggleButton;

    .line 125
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$scene:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$progressView:Lcom/netease/mpay/oversea/scan/widgets/ProgressView;

    new-instance v8, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/Progress;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 156
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->execute()V

    return-void
.end method
