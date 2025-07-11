.class Lcom/netease/mpay/oversea/u9$g;
.super Ljava/lang/Object;
.source "SecurityEmailHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/k$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u9;->d(Lcom/netease/mpay/oversea/w2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/w2;

.field final synthetic b:Lcom/netease/mpay/oversea/u9;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u9$g;->b:Lcom/netease/mpay/oversea/u9;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u9$g;->a:Lcom/netease/mpay/oversea/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9$g;->b:Lcom/netease/mpay/oversea/u9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u9$g;->a:Lcom/netease/mpay/oversea/w2;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/u9;->d(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9$g;->b:Lcom/netease/mpay/oversea/u9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u9;->b(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u9$g;->b:Lcom/netease/mpay/oversea/u9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u9;->c(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9$g;->b:Lcom/netease/mpay/oversea/u9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u9;->d(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/u9$g$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/u9$g$a;-><init>(Lcom/netease/mpay/oversea/u9$g;)V

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    return-void
.end method
