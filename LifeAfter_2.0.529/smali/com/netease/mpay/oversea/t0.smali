.class public Lcom/netease/mpay/oversea/t0;
.super Landroid/widget/BaseAdapter;
.source "ChannelLoginAdapter.java"


# instance fields
.field private final a:[I

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/mpay/oversea/ui/e$c;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/ArrayList;Lcom/netease/mpay/oversea/ui/e$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;",
            "Lcom/netease/mpay/oversea/ui/e$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_item:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_item_small:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/netease/mpay/oversea/t0;->a:[I

    .line 14
    iput-object p1, p0, Lcom/netease/mpay/oversea/t0;->b:Landroid/content/Context;

    .line 15
    iput-object p3, p0, Lcom/netease/mpay/oversea/t0;->d:Ljava/util/ArrayList;

    .line 16
    iput-object p4, p0, Lcom/netease/mpay/oversea/t0;->c:Lcom/netease/mpay/oversea/ui/e$c;

    .line 17
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/t0;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/t0;)Lcom/netease/mpay/oversea/ui/e$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t0;->c:Lcom/netease/mpay/oversea/ui/e$c;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;II)Landroid/view/View;
    .locals 7

    .line 2
    iget-object p4, p0, Lcom/netease/mpay/oversea/t0;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/b;

    .line 4
    iget-object p4, p0, Lcom/netease/mpay/oversea/t0;->b:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/t0;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t0;->a:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p4, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/t0;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_42:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t0;->a:[I

    aget v0, v0, v2

    invoke-virtual {p4, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/t0;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_135:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 12
    iget-object v3, p0, Lcom/netease/mpay/oversea/t0;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_42:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 14
    :goto_0
    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_background:I

    .line 15
    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 17
    iget-object v5, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v6, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v6, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v6, v6, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/netease/mpay/oversea/ec;->a(Lcom/netease/mpay/oversea/g6;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 18
    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_text:I

    .line 19
    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->h()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    :cond_2
    iget-object v5, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v5, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v5, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v5, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/b$c;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v5, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/netease/mpay/oversea/t0;->b:Landroid/content/Context;

    iget-object v5, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v5, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/netease/mpay/oversea/wa;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 29
    :cond_3
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    .line 30
    new-instance v1, Lcom/netease/mpay/oversea/t0$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/t0$a;-><init>(Lcom/netease/mpay/oversea/t0;Lcom/netease/mpay/oversea/g6;Landroid/view/ViewGroup;)V

    .line 41
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p1

    .line 42
    invoke-virtual {p4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {p1, p3, v2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p4
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
