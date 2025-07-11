.class Lcom/netease/mpay/oversea/b4$i$a;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4$i;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/netease/mpay/oversea/b4$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4$i;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b4$i$a;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/netease/mpay/oversea/b4$i$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 15
    iget p1, p2, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v0, 0x2715

    if-ne v0, p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->F(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->G(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->J(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    .line 20
    invoke-static {p2}, Lcom/netease/mpay/oversea/b4;->I(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    .line 21
    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$i$a;->a:Landroid/view/View;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/b4$i$a;->b:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object v1, v1, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/netease/mpay/oversea/y5;->o:Z

    if-eqz v0, :cond_1

    .line 6
    sget v1, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__usercenter_home_switch_off:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object v1, v1, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netease/mpay/oversea/y5;->o:Z

    if-eqz v0, :cond_1

    .line 10
    sget v1, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__usercenter_home_switch_on:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$i$a;->c:Lcom/netease/mpay/oversea/b4$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->E(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/qa;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/b4$i$a;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
