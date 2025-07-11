.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$4;
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

    .line 424
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$4;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 428
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$4;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->closeWebview()V

    return-void
.end method
