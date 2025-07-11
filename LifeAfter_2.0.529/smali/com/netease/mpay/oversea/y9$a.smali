.class public Lcom/netease/mpay/oversea/y9$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SecurityMailEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/y9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/y9$a;->d:Landroid/view/View;

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/y9$a;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__enter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/y9$a;->c:Landroid/view/View;

    .line 5
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/y9$a;->b:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/y9$a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/y9$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_entry_ripple:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/ec;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/w2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/y9$a;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/y9$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    iget-object v1, p0, Lcom/netease/mpay/oversea/y9$a;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/netease/mpay/oversea/d4;->a(Landroid/view/View;II)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/y9$a;->d:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/oversea/y9$a$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/y9$a$a;-><init>(Lcom/netease/mpay/oversea/y9$a;Lcom/netease/mpay/oversea/w2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
