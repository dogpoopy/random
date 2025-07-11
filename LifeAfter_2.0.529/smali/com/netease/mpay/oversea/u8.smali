.class public Lcom/netease/mpay/oversea/u8;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QuickLoginItemVH.java"


# instance fields
.field private final a:Landroid/widget/ToggleButton;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/netease/mpay/oversea/r8$b;

.field private g:Landroid/widget/LinearLayout;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ZLcom/netease/mpay/oversea/r8$b;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/u8;->i:Z

    .line 6
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/netease/mpay/oversea/u8;->g:Landroid/widget/LinearLayout;

    .line 7
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/netease/mpay/oversea/u8;->b:Landroid/widget/ImageView;

    .line 8
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__account:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netease/mpay/oversea/u8;->c:Landroid/widget/TextView;

    .line 9
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__server:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netease/mpay/oversea/u8;->d:Landroid/widget/TextView;

    .line 10
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__role:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netease/mpay/oversea/u8;->e:Landroid/widget/TextView;

    .line 11
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__control:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/netease/mpay/oversea/u8;->a:Landroid/widget/ToggleButton;

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 13
    iput-object p3, p0, Lcom/netease/mpay/oversea/u8;->f:Lcom/netease/mpay/oversea/r8$b;

    .line 14
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/u8;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u8;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/u8;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/u8;)Lcom/netease/mpay/oversea/r8$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/u8;->f:Lcom/netease/mpay/oversea/r8$b;

    return-object p0
.end method


# virtual methods
.method a(Landroid/content/Context;IILcom/netease/mpay/oversea/r8$a;)V
    .locals 3

    .line 2
    iget-object p2, p4, Lcom/netease/mpay/oversea/r8$a;->e:Lcom/netease/mpay/oversea/g6;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/u8;->h:Z

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/u8;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p4, Lcom/netease/mpay/oversea/r8$a;->b:Lcom/netease/mpay/oversea/t8;

    .line 5
    iget-object p2, p0, Lcom/netease/mpay/oversea/u8;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/netease/mpay/oversea/u8;->d:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Lcom/netease/mpay/oversea/u8;->e:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p4, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    sget-object p2, Lcom/netease/mpay/oversea/r8$c;->c:Lcom/netease/mpay/oversea/r8$c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/u8;->i:Z

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/u8;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->a:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/netease/mpay/oversea/u8$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/u8$a;-><init>(Lcom/netease/mpay/oversea/u8;)V

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object p1, p4, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    if-ne p1, p2, :cond_1

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->a:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 18
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->a:Landroid/widget/ToggleButton;

    new-instance p2, Lcom/netease/mpay/oversea/u8$b;

    invoke-direct {p2, p0, p4, p3}, Lcom/netease/mpay/oversea/u8$b;-><init>(Lcom/netease/mpay/oversea/u8;Lcom/netease/mpay/oversea/r8$a;I)V

    .line 27
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->a:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 39
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 40
    iget-object p1, p0, Lcom/netease/mpay/oversea/u8;->g:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/netease/mpay/oversea/u8$c;

    invoke-direct {p2, p0, p4, p3}, Lcom/netease/mpay/oversea/u8$c;-><init>(Lcom/netease/mpay/oversea/u8;Lcom/netease/mpay/oversea/r8$a;I)V

    .line 48
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
