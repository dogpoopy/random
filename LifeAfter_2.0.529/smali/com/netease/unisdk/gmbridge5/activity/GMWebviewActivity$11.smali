.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showImgPickDialog()V
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

    .line 717
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 721
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$1602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z

    .line 730
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/utils/PermissionUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$1800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$1900(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x147

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 739
    goto :goto_0

    .line 724
    :cond_3
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$1602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z

    .line 725
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$11;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$1700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    .line 726
    nop

    .line 743
    :goto_0
    return-void
.end method
