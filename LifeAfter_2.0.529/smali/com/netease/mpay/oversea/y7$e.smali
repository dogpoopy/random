.class Lcom/netease/mpay/oversea/y7$e;
.super Ljava/lang/Object;
.source "PasswordHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/y7;->d(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/y7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/y7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/y7;->d(Lcom/netease/mpay/oversea/y7;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/y7;->m(Lcom/netease/mpay/oversea/y7;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    .line 3
    invoke-static {v1}, Lcom/netease/mpay/oversea/y7;->n(Lcom/netease/mpay/oversea/y7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    invoke-static {v2}, Lcom/netease/mpay/oversea/y7;->o(Lcom/netease/mpay/oversea/y7;)Lcom/netease/mpay/oversea/v2;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    .line 4
    invoke-static {v3}, Lcom/netease/mpay/oversea/y7;->p(Lcom/netease/mpay/oversea/y7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/y7$e;->a:Lcom/netease/mpay/oversea/y7;

    invoke-static {v4}, Lcom/netease/mpay/oversea/y7;->c(Lcom/netease/mpay/oversea/y7;)Lcom/netease/mpay/oversea/v2;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/oversea/d2;

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/e2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/y7$e;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
