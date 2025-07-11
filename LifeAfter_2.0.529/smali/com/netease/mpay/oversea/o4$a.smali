.class Lcom/netease/mpay/oversea/o4$a;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o4;->b(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/q3;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/netease/mpay/oversea/g9$a;

.field final synthetic d:Lcom/netease/mpay/oversea/o4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o4$a;->d:Lcom/netease/mpay/oversea/o4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/o4$a;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/netease/mpay/oversea/o4$a;->c:Lcom/netease/mpay/oversea/g9$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/bc$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/g9;->b(Landroid/content/Context;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/o4$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/o4$a$b;-><init>(Lcom/netease/mpay/oversea/o4$a;ILcom/netease/mpay/oversea/j;)V

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/q3;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/m0;->a()Lcom/netease/mpay/oversea/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/m0;->b()V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/q3;->b:Z

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/g9;->b(Z)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/q3;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/w3;->a(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/i9;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/h9;->c(Z)V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/o4$a;->d:Lcom/netease/mpay/oversea/o4;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/o4$a;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/netease/mpay/oversea/o4$a;->c:Lcom/netease/mpay/oversea/g9$a;

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/o4;->a(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o4$a;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/o4$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/o4$a$a;-><init>(Lcom/netease/mpay/oversea/o4$a;)V

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/q3;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/o4$a;->a(Lcom/netease/mpay/oversea/q3;)V

    return-void
.end method
