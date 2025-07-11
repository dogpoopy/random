.class Lcom/netease/ntunisdk/NgWebviewProxy$4$1;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy$4;->callback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/NgWebviewProxy$4;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy$4;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4$1;->this$1:Lcom/netease/ntunisdk/NgWebviewProxy$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 368
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4$1;->this$1:Lcom/netease/ntunisdk/NgWebviewProxy$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$400(Lcom/netease/ntunisdk/NgWebviewProxy;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    .line 370
    iput v1, v0, Landroid/os/Message;->what:I

    .line 371
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4$1;->this$1:Lcom/netease/ntunisdk/NgWebviewProxy$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$900(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
