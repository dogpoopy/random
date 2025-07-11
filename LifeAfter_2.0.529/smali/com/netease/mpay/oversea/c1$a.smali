.class Lcom/netease/mpay/oversea/c1$a;
.super Lcom/netease/mpay/oversea/g1;
.source "CountDownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/c1;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/netease/mpay/oversea/c1;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/c1;Landroid/app/AlertDialog;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/c1$a;->d:Lcom/netease/mpay/oversea/c1;

    iput-object p2, p0, Lcom/netease/mpay/oversea/c1$a;->b:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/netease/mpay/oversea/c1$a;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/g1;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$a;->d:Lcom/netease/mpay/oversea/c1;

    invoke-static {p1}, Lcom/netease/mpay/oversea/c1;->a(Lcom/netease/mpay/oversea/c1;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$a;->d:Lcom/netease/mpay/oversea/c1;

    invoke-static {p1}, Lcom/netease/mpay/oversea/c1;->b(Lcom/netease/mpay/oversea/c1;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$a;->d:Lcom/netease/mpay/oversea/c1;

    invoke-static {p1}, Lcom/netease/mpay/oversea/c1;->b(Lcom/netease/mpay/oversea/c1;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$a;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$a;->c:Landroid/app/Activity;

    const-string v1, "auto_guest_alert"

    const-string v2, "retry"

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
