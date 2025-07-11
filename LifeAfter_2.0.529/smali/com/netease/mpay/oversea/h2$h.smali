.class Lcom/netease/mpay/oversea/h2$h;
.super Lcom/netease/mpay/oversea/f1;
.source "EmailLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/h2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/h2;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->e0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {p1}, Lcom/netease/mpay/oversea/h2;->v(Lcom/netease/mpay/oversea/h2;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->c(Lcom/netease/mpay/oversea/h2;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__email_upgrade_passport_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v1}, Lcom/netease/mpay/oversea/h2;->d(Lcom/netease/mpay/oversea/h2;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {p1}, Lcom/netease/mpay/oversea/h2;->h(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->e(Lcom/netease/mpay/oversea/h2;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v1}, Lcom/netease/mpay/oversea/h2;->f(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/h2$h;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v2}, Lcom/netease/mpay/oversea/h2;->g(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/e2;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :goto_0
    return-void
.end method
