.class Lcom/netease/mpay/oversea/p7$f;
.super Lcom/netease/mpay/oversea/ec$b;
.source "PassportLoginHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/p7;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/p7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/p7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/p7$f;->b:Lcom/netease/mpay/oversea/p7;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/ec$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7$f;->b:Lcom/netease/mpay/oversea/p7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p7;->p(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7$f;->b:Lcom/netease/mpay/oversea/p7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p7;->c(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p7;->a(Lcom/netease/mpay/oversea/p7;I)I

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7$f;->b:Lcom/netease/mpay/oversea/p7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p7;->c(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p7;->a(Lcom/netease/mpay/oversea/p7;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7$f;->b:Lcom/netease/mpay/oversea/p7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p7;->e(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/p7$f;->b:Lcom/netease/mpay/oversea/p7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/p7;->c(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t8;)V

    :cond_0
    return-void
.end method
