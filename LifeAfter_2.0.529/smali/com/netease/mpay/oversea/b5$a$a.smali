.class Lcom/netease/mpay/oversea/b5$a$a;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5$a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/r0<",
        "Lcom/netease/mpay/oversea/q1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/b5$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/q1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    iget-object v1, p1, Lcom/netease/mpay/oversea/q1;->b:Lcom/netease/mpay/oversea/p1;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/b5;->c(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    iget-object v1, p1, Lcom/netease/mpay/oversea/q1;->a:Lcom/netease/mpay/oversea/p1;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/b5;->b(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q1;->c:Lcom/netease/mpay/oversea/p1;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/b5;->a(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->t(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/p1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->z(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/p1;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->A(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/p1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->u(Lcom/netease/mpay/oversea/b5;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/netease/mpay/oversea/b5;->a(Lcom/netease/mpay/oversea/b5;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->C(Lcom/netease/mpay/oversea/b5;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->v(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_limit_age_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->w(Lcom/netease/mpay/oversea/b5;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$a$a;->a:Lcom/netease/mpay/oversea/b5$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->w(Lcom/netease/mpay/oversea/b5;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/q1;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/b5$a$a;->a(Lcom/netease/mpay/oversea/q1;)V

    return-void
.end method
