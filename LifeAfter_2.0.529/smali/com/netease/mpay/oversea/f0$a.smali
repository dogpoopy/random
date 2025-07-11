.class public Lcom/netease/mpay/oversea/f0$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__bind_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__bind_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->b:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__bind_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/f0$a;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/f0$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$b;",
            ">;",
            "Lcom/netease/mpay/oversea/f0$b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/ui/b$b;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/b$b;->c:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/f0$a;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b$b;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/ui/b$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b$b;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/f0$a;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/wa;->b(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/ui/b$b;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/b$b;->d:Z

    .line 7
    iget-object v2, p0, Lcom/netease/mpay/oversea/f0$a;->c:Landroid/widget/TextView;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/ui/b$b;->d:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_unbind:I

    invoke-static {v0, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__bound:I

    invoke-static {v0, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b$b;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/f0$a;->a:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/ec;->a(Lcom/netease/mpay/oversea/g6;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$b;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$b;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$b;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/ui/b$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b$b;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/f0$a;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/wa;->b(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_2

    .line 26
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ec;->a(Lcom/netease/mpay/oversea/g6;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/oversea/f0$a$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/mpay/oversea/f0$a$a;-><init>(Lcom/netease/mpay/oversea/f0$a;Lcom/netease/mpay/oversea/f0$b;Lcom/netease/mpay/oversea/ui/b;)V

    .line 40
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/f0$a;->d:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method
