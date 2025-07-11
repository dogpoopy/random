.class Lcom/netease/mpay/oversea/b4$l;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$l;->d:Landroid/view/View;

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->b:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__red_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$l;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/netease/mpay/oversea/w2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_height_42:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_width_110:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 4
    iget-object v2, p2, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/b4$l;->b:Landroid/widget/TextView;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v2, v3, v1, v0}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;Landroid/widget/TextView;FF)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__icon_22:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 6
    iget-object v1, p2, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$l;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0, v0}, Lcom/netease/mpay/oversea/d4;->a(Landroid/view/View;II)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$l;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_entry_ripple:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ec;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->c:Landroid/view/View;

    iget-boolean v1, p2, Lcom/netease/mpay/oversea/w2;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->b:Landroid/widget/TextView;

    iget-boolean v1, p2, Lcom/netease/mpay/oversea/w2;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->a:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/netease/mpay/oversea/w2;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->d:Landroid/view/View;

    iget-boolean v1, p2, Lcom/netease/mpay/oversea/w2;->g:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l;->d:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/oversea/b4$l$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/mpay/oversea/b4$l$a;-><init>(Lcom/netease/mpay/oversea/b4$l;Lcom/netease/mpay/oversea/w2;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p2, Lcom/netease/mpay/oversea/w2;->k:Lcom/netease/mpay/oversea/w2$d;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/w2$d;->a(Landroid/view/View;)V

    return-void
.end method
