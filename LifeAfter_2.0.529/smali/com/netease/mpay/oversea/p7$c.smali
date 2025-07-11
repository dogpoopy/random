.class Lcom/netease/mpay/oversea/p7$c;
.super Lcom/netease/mpay/oversea/f1;
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
.field final synthetic d:Lcom/netease/mpay/oversea/p7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/p7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/p7$c;->d:Lcom/netease/mpay/oversea/p7;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7$c;->d:Lcom/netease/mpay/oversea/p7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p7;->j(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7$c;->d:Lcom/netease/mpay/oversea/p7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p7;->k(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_0
    return-void
.end method
