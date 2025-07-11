.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 777
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 781
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mPermissionNotAvailable:Ljava/lang/String;

    .local v0, "toastText":Ljava/lang/String;
    goto :goto_0

    .line 784
    .end local v0    # "toastText":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$string;->permission_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    .restart local v0    # "toastText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 787
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/content/Intent;)V

    .line 790
    :cond_1
    return-void
.end method
