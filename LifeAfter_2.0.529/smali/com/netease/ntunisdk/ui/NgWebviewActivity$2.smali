.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$2;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initLoadingView()V
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

    .line 259
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$2;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$2;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->closeWebview()V

    return-void
.end method
