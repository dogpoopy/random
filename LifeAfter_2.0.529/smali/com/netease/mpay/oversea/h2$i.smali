.class Lcom/netease/mpay/oversea/h2$i;
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {p1}, Lcom/netease/mpay/oversea/h2;->p(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->i(Lcom/netease/mpay/oversea/h2;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->j(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->k(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->l(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->l()Lcom/netease/mpay/oversea/g6;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->n(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/oversea/h2$i;->d:Lcom/netease/mpay/oversea/h2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/h2;->o(Lcom/netease/mpay/oversea/h2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v6

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/e2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method
