.class public Lcom/netease/mpay/oversea/x8$g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RegionPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/x8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_pop_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/x8$g;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/d1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/x8$g;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
