.class Lcom/netease/mpay/oversea/ui/k$a;
.super Ljava/lang/Object;
.source "GuestInheritGuidance.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/j4;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/k;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/k;->a(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j4;)V
    .locals 1

    .line 1
    iget-boolean p1, p1, Lcom/netease/mpay/oversea/j4;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/k;->a(Lcom/netease/mpay/oversea/ui/k;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object p1, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/k;->b(Lcom/netease/mpay/oversea/ui/k;)Lcom/netease/mpay/oversea/s9;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/k;->c(Lcom/netease/mpay/oversea/ui/k;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->P()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->M()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    .line 9
    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/k;->b(Lcom/netease/mpay/oversea/ui/k;)Lcom/netease/mpay/oversea/s9;

    move-result-object p1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/k;->c(Lcom/netease/mpay/oversea/ui/k;)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/k$a;->a:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/k;->d(Lcom/netease/mpay/oversea/ui/k;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/j4;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/k$a;->a(Lcom/netease/mpay/oversea/j4;)V

    return-void
.end method
