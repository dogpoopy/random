.class public Lcom/netease/mpay/oversea/ra$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SwitchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ra$b;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/ra$b;->c:Landroid/view/View;

    .line 4
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ra$b;->a:Landroid/widget/ImageView;

    .line 5
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ra$b;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/ra$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;",
            "Lcom/netease/mpay/oversea/ra$a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ra$b;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ec;->a(Lcom/netease/mpay/oversea/g6;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 2
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ra$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ra$b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ra$b;->b:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/wa;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ra$b;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ra$b;->c:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/oversea/ra$b$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/mpay/oversea/ra$b$a;-><init>(Lcom/netease/mpay/oversea/ra$b;Lcom/netease/mpay/oversea/ra$a;Lcom/netease/mpay/oversea/ui/b;)V

    .line 14
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
