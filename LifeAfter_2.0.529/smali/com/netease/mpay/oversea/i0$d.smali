.class Lcom/netease/mpay/oversea/i0$d;
.super Lcom/netease/mpay/oversea/f1;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0;->b(ZZLcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lcom/netease/mpay/oversea/i0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$d;->e:Lcom/netease/mpay/oversea/i0;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/i0$d;->d:Z

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/i0$d;->d:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$d;->e:Lcom/netease/mpay/oversea/i0;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->L:Lcom/netease/mpay/oversea/g6;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/i0;->c(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$d;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->u(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "update_account"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$d;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->v(Lcom/netease/mpay/oversea/i0;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$d;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->x(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$d;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->y(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "reset_password"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
