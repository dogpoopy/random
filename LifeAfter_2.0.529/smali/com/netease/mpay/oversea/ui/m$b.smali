.class Lcom/netease/mpay/oversea/ui/m$b;
.super Ljava/lang/Object;
.source "InheritHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m;->l()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    if-nez p2, :cond_0

    .line 5
    new-instance p1, Lcom/netease/mpay/oversea/j;

    const/16 p2, 0x2711

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/ui/m$b;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast p1, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;)V

    :goto_0
    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$b;->a:Lcom/netease/mpay/oversea/ui/m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
