.class public Lcom/netease/mpay/oversea/u4$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LVUAgeGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/u4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Lcom/netease/mpay/oversea/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/r0<",
            "Lcom/netease/mpay/oversea/w8$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netease/mpay/oversea/w8$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/netease/mpay/oversea/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/netease/mpay/oversea/r0<",
            "Lcom/netease/mpay/oversea/w8$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/u4$a;->b:Lcom/netease/mpay/oversea/r0;

    .line 3
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/u4$a;->a:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u4$a;)Lcom/netease/mpay/oversea/w8$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/u4$a;->c:Lcom/netease/mpay/oversea/w8$a;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/u4$a;)Lcom/netease/mpay/oversea/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/u4$a;->b:Lcom/netease/mpay/oversea/r0;

    return-object p0
.end method


# virtual methods
.method a(Lcom/netease/mpay/oversea/w8$a;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/u4$a;->c:Lcom/netease/mpay/oversea/w8$a;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/u4$a;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/netease/mpay/oversea/w8$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/u4$a;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/netease/mpay/oversea/u4$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/u4$a$a;-><init>(Lcom/netease/mpay/oversea/u4$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
