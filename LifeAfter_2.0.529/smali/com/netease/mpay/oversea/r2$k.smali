.class Lcom/netease/mpay/oversea/r2$k;
.super Ljava/lang/Object;
.source "EmailVerifyCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/r2;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/r2;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/r2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r2;->u(Lcom/netease/mpay/oversea/r2;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r2;->v(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    iget-object p1, p1, Lcom/netease/mpay/oversea/qa;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/d2;->b(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-static {p1}, Lcom/netease/mpay/oversea/r2;->c(Lcom/netease/mpay/oversea/r2;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/r2;->d(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-static {v1}, Lcom/netease/mpay/oversea/r2;->e(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    .line 6
    invoke-static {v2}, Lcom/netease/mpay/oversea/r2;->f(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-static {v3}, Lcom/netease/mpay/oversea/r2;->g(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v3

    check-cast v3, Lcom/netease/mpay/oversea/d2;

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/e2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/r2$k;->a:Lcom/netease/mpay/oversea/r2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r2;->h(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/r2$k;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
