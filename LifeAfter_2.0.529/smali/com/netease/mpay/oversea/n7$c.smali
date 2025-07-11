.class public Lcom/netease/mpay/oversea/n7$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PassportHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/n7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/oversea/n7$b;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/netease/mpay/oversea/n7$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/n7$c;->a:Lcom/netease/mpay/oversea/n7$b;

    .line 3
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__account:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n7$c;->c:Landroid/widget/TextView;

    .line 4
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__server:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n7$c;->d:Landroid/widget/TextView;

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__role:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n7$c;->e:Landroid/widget/TextView;

    .line 6
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay__login_user_avatar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n7$c;->b:Landroid/widget/ImageView;

    .line 7
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/n7$c;->f:Landroid/widget/ImageView;

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->A()Lcom/netease/mpay/oversea/q3$h;

    move-result-object p1

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/q3$h;->b:Z

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/n7$c;->d:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/n7$c;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;ILcom/netease/mpay/oversea/n7$a;)V
    .locals 5

    .line 1
    iget-object v0, p3, Lcom/netease/mpay/oversea/n7$a;->e:Lcom/netease/mpay/oversea/g6;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/n7$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p3, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/n7$c;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean v1, p3, Lcom/netease/mpay/oversea/n7$a;->a:Z

    if-nez v1, :cond_0

    .line 7
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_server:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_role:I

    invoke-static {p1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/n7$c;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t8;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lcom/netease/mpay/oversea/n7$c;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n7$c;->f:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/mpay/oversea/n7$c$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/netease/mpay/oversea/n7$c$a;-><init>(Lcom/netease/mpay/oversea/n7$c;ILcom/netease/mpay/oversea/n7$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/netease/mpay/oversea/n7$c$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/netease/mpay/oversea/n7$c$b;-><init>(Lcom/netease/mpay/oversea/n7$c;ILcom/netease/mpay/oversea/n7$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
