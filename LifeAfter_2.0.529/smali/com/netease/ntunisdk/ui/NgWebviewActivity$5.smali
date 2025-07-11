.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initNavigationItem(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$300(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$300(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ui/UniWebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$5;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$300(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)Lcom/netease/ntunisdk/ui/UniWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ui/UniWebView;->goBack()V

    :cond_0
    return-void
.end method
