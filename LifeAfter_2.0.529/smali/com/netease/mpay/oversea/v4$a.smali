.class Lcom/netease/mpay/oversea/v4$a;
.super Lcom/netease/mpay/oversea/f1;
.source "LVUAgeGroupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/v4;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/v4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/v4$a;->d:Lcom/netease/mpay/oversea/v4;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection2"

    const-string v1, "child_protection_close"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/v4$a;->d:Lcom/netease/mpay/oversea/v4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/v4;->a(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/v4$a;->d:Lcom/netease/mpay/oversea/v4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/v4;->b(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/v4$a;->d:Lcom/netease/mpay/oversea/v4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/v4;->l(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_agegroup_close_tips:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/v4$a;->d:Lcom/netease/mpay/oversea/v4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/v4;->q(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lcom/netease/mpay/oversea/v4$a$a;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/v4$a$a;-><init>(Lcom/netease/mpay/oversea/v4$a;)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method
