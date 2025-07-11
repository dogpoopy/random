.class Lcom/netease/mpay/oversea/b8$b;
.super Lcom/netease/mpay/oversea/f1;
.source "PasswordNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b8;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/b8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b8$b;->d:Lcom/netease/mpay/oversea/b8;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b8$b;->d:Lcom/netease/mpay/oversea/b8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b8;->j(Lcom/netease/mpay/oversea/b8;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b8$b;->d:Lcom/netease/mpay/oversea/b8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b8;->b(Lcom/netease/mpay/oversea/b8;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b8$b;->d:Lcom/netease/mpay/oversea/b8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b8;->k(Lcom/netease/mpay/oversea/b8;)Lcom/netease/mpay/oversea/v2;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/p;->onCancel()V

    return-void
.end method
