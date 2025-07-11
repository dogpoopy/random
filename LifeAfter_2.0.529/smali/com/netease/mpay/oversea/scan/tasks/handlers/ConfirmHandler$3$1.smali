.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;
.super Ljava/lang/Object;
.source "ConfirmHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
        "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 7

    .line 152
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$600(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    .line 153
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$500(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b022c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V
    .locals 4

    .line 131
    iget-object v0, p1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;->result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$200(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;->result:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->openBrowser(Landroid/app/Activity;Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 135
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1$1;-><init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$data:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V

    return-void
.end method
