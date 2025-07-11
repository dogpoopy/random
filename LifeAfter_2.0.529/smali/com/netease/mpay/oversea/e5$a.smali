.class Lcom/netease/mpay/oversea/e5$a;
.super Ljava/lang/Object;
.source "LinkAccountService.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/e5;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/q0<",
        "Lcom/netease/mpay/oversea/f8;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/q0;

.field final synthetic c:Lcom/netease/mpay/oversea/e5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e5$a;->c:Lcom/netease/mpay/oversea/e5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/e5$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/e5$a;->b:Lcom/netease/mpay/oversea/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LinkAccount# PGS login skip"

    .line 28
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5$a;->c:Lcom/netease/mpay/oversea/e5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/e5;->b(Z)V

    .line 30
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5$a;->b:Lcom/netease/mpay/oversea/q0;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/q0;->a()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/f8;)V
    .locals 4

    const-string v0, "LinkAccount# PGS Login Success"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5$a;->c:Lcom/netease/mpay/oversea/e5;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/e5;->a(Lcom/netease/mpay/oversea/e5;Lcom/netease/mpay/oversea/f8;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/l8;

    iget-object v1, p0, Lcom/netease/mpay/oversea/e5$a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/e5$a$a;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/e5$a$a;-><init>(Lcom/netease/mpay/oversea/e5$a;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netease/mpay/oversea/l8;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/f8;Lcom/netease/mpay/oversea/ea;)V

    .line 27
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 2

    const-string v0, "LinkAccount# PGS login failed"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5$a;->c:Lcom/netease/mpay/oversea/e5;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/e5;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5$a;->b:Lcom/netease/mpay/oversea/q0;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/q0;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/f8;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/e5$a;->a(Lcom/netease/mpay/oversea/f8;)V

    return-void
.end method
