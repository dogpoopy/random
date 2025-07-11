.class Lcom/netease/mpay/oversea/b4$d;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/w2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4;->c(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/w2;

.field final synthetic b:Lcom/netease/mpay/oversea/b4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$d;->b:Lcom/netease/mpay/oversea/b4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b4$d;->a:Lcom/netease/mpay/oversea/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$d;->a:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    const-string v1, "quick_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$d;->b:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$d;->b:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$d;->b:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/y5;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    :cond_1
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__usercenter_home_switch_on:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11
    :cond_3
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__usercenter_home_switch_off:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :cond_4
    :goto_0
    return-void
.end method
