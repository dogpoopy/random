.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->val$action:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->closeWebview()V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->val$action:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$400(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$400(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    :cond_1
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/aidl/NGRemoteService;->callback:Lcom/netease/ntunisdk/IRemoteCallback;

    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$9;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/IRemoteCallback;->call2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 722
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
