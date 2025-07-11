.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/ui/NgWebviewActivity$KeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 211
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public down()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    const-string v1, "r_close"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$000(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V

    return-void
.end method

.method public up()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$1;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    const-string v1, "r_close"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ui/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
