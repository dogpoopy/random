.class Lcom/netease/mpay/oversea/p8$c;
.super Lcom/netease/mpay/oversea/f1;
.source "QuickLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/p8;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/netease/mpay/oversea/p8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/p8;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    iput-object p2, p0, Lcom/netease/mpay/oversea/p8$c;->d:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/mpay/oversea/p8$c;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/netease/mpay/oversea/p8$h;->a:[I

    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p8;->h(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/r8$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    sget-object v0, Lcom/netease/mpay/oversea/r8$c;->c:Lcom/netease/mpay/oversea/r8$c;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/r8$c;)Lcom/netease/mpay/oversea/r8$c;

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p8;->k(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_complete:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    iget-object p1, p1, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/r8$a;

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v1}, Lcom/netease/mpay/oversea/p8;->h(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/r8$c;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p8;->b(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    sget-object v0, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/r8$c;)Lcom/netease/mpay/oversea/r8$c;

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p8;->i(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_editor:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    iget-object p1, p1, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/r8$a;

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v1}, Lcom/netease/mpay/oversea/p8;->h(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/r8$c;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    goto :goto_1

    .line 25
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p8;->j(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "edit_confirm"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :goto_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$c;->f:Lcom/netease/mpay/oversea/p8;

    iget-object p1, p1, Lcom/netease/mpay/oversea/p8;->l:Lcom/netease/mpay/oversea/r8;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
