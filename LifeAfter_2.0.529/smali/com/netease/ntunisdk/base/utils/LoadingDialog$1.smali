.class Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;
.super Landroid/os/Handler;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/LoadingDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/LoadingDialog;Landroid/os/Looper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/LoadingDialog$1;->this$0:Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method
