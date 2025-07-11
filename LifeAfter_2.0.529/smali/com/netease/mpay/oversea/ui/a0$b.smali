.class Lcom/netease/mpay/oversea/ui/a0$b;
.super Lcom/netease/mpay/oversea/ga;
.source "WebViewLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;ZLcom/netease/mpay/oversea/y5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/ga<",
        "Lcom/netease/mpay/oversea/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/y5;

.field final synthetic e:Lcom/netease/mpay/oversea/e6;

.field final synthetic f:Z

.field final synthetic g:Lcom/netease/mpay/oversea/ui/a0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/a0;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iput-object p6, p0, Lcom/netease/mpay/oversea/ui/a0$b;->e:Lcom/netease/mpay/oversea/e6;

    iput-boolean p7, p0, Lcom/netease/mpay/oversea/ui/a0$b;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ac;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->e:Lcom/netease/mpay/oversea/e6;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/a0$b;->f:Z

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->e:Lcom/netease/mpay/oversea/e6;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/a0$b;->f:Z

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0$b;->e:Lcom/netease/mpay/oversea/e6;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->f:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0$b;->e:Lcom/netease/mpay/oversea/e6;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->f:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->g:Lcom/netease/mpay/oversea/ui/a0;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a0$b;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0$b;->e:Lcom/netease/mpay/oversea/e6;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/a0$b;->f:Z

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/ac;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/a0$b;->a(Lcom/netease/mpay/oversea/ac;)V

    return-void
.end method
