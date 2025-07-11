.class Lcom/netease/mpay/oversea/p8$b;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/r8$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/p8;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/p8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/p8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/t8;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    iget v0, p2, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/p8;I)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p8;->b(Lcom/netease/mpay/oversea/p8;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/t8;)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/t8;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    iget v0, p2, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/p8;I)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/p8;->b(Lcom/netease/mpay/oversea/p8;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p8;->f(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8$b;->a:Lcom/netease/mpay/oversea/p8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/p8;->g(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t8;)V

    :cond_0
    return-void
.end method
