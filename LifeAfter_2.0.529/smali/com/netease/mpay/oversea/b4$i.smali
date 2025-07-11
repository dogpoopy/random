.class Lcom/netease/mpay/oversea/b4$i;
.super Lcom/netease/mpay/oversea/f1;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4;->c(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/b4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b4;->B(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/y5;->o:Z

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b4;->C(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v3, "quick_login_off"

    goto :goto_0

    :cond_1
    const-string v3, "quick_login_on"

    .line 6
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/netease/mpay/oversea/s8;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    .line 9
    invoke-static {v2}, Lcom/netease/mpay/oversea/b4;->D(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    .line 10
    invoke-static {v2}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    iget-object v7, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$i;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    iget-object v8, v2, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    xor-int/lit8 v9, v0, 0x1

    new-instance v10, Lcom/netease/mpay/oversea/b4$i$a;

    invoke-direct {v10, p0, p1, v0}, Lcom/netease/mpay/oversea/b4$i$a;-><init>(Lcom/netease/mpay/oversea/b4$i;Landroid/view/View;Z)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/netease/mpay/oversea/s8;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/ea;)V

    .line 40
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method
