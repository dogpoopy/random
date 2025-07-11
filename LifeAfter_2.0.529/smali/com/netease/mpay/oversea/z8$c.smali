.class Lcom/netease/mpay/oversea/z8$c;
.super Ljava/lang/Object;
.source "RegisterHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/z8;->a(Ljava/lang/String;Ljava/lang/String;Z)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/z8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/z8;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    iput-object p2, p0, Lcom/netease/mpay/oversea/z8$c;->a:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/z8;->p(Lcom/netease/mpay/oversea/z8;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/z8;->q(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    .line 3
    invoke-static {v1}, Lcom/netease/mpay/oversea/z8;->r(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    .line 4
    invoke-static {v3}, Lcom/netease/mpay/oversea/z8;->s(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z8$c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    invoke-static {v5}, Lcom/netease/mpay/oversea/z8;->t(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    iget-object v3, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    .line 5
    invoke-static {v3}, Lcom/netease/mpay/oversea/z8;->v(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/v2;

    move-result-object v3

    check-cast v3, Lcom/netease/mpay/oversea/d2;

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/e2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/z8$c;->b:Lcom/netease/mpay/oversea/z8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/z8;->w(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z8$c;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
