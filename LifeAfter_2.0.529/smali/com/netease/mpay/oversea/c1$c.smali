.class Lcom/netease/mpay/oversea/c1$c;
.super Lcom/netease/mpay/oversea/ec$b;
.source "CountDownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/c1;->a(Landroid/app/Activity;Landroid/content/DialogInterface;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/DialogInterface;

.field final synthetic c:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/netease/mpay/oversea/c1;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/c1;Landroid/content/DialogInterface;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/c1$c;->e:Lcom/netease/mpay/oversea/c1;

    iput-object p2, p0, Lcom/netease/mpay/oversea/c1$c;->b:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/netease/mpay/oversea/c1$c;->c:Landroid/content/DialogInterface$OnClickListener;

    iput-object p4, p0, Lcom/netease/mpay/oversea/c1$c;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/ec$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$c;->e:Lcom/netease/mpay/oversea/c1;

    invoke-static {p1}, Lcom/netease/mpay/oversea/c1;->a(Lcom/netease/mpay/oversea/c1;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$c;->b:Landroid/content/DialogInterface;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$c;->c:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$c;->b:Landroid/content/DialogInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$c;->d:Landroid/app/Activity;

    const-string v1, "auto_guest_alert"

    const-string v2, "confirm"

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
