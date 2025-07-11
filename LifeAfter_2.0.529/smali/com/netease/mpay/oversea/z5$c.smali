.class Lcom/netease/mpay/oversea/z5$c;
.super Lcom/netease/mpay/oversea/f1;
.source "LoginMore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/z5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/z5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/z5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/z5$c;->d:Lcom/netease/mpay/oversea/z5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->f0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/z5$c;->d:Lcom/netease/mpay/oversea/z5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/z5;->f(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b1;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/z5$c;->d:Lcom/netease/mpay/oversea/z5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/z5;->g(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/z5$c;->d:Lcom/netease/mpay/oversea/z5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/z5;->h(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_1
    :goto_0
    return-void
.end method
