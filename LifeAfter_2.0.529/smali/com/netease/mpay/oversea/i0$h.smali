.class Lcom/netease/mpay/oversea/i0$h;
.super Ljava/lang/Object;
.source "BindView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/d7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0;->a(Lcom/netease/mpay/oversea/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/d7<",
        "Lcom/netease/mpay/oversea/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/b;

.field final synthetic b:Lcom/netease/mpay/oversea/i0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/ui/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$h;->b:Lcom/netease/mpay/oversea/i0;

    iput-object p2, p0, Lcom/netease/mpay/oversea/i0$h;->a:Lcom/netease/mpay/oversea/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/c9;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/c9<",
            "Lcom/netease/mpay/oversea/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$h;->b:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->D(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/i0$h;->b:Lcom/netease/mpay/oversea/i0;

    invoke-static {v1}, Lcom/netease/mpay/oversea/i0;->C(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/w2;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$h;->b:Lcom/netease/mpay/oversea/i0;

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$h;->a:Lcom/netease/mpay/oversea/ui/b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/i0;->a(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$h;->b:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->F(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/mpay/oversea/i0$h;->a:Lcom/netease/mpay/oversea/ui/b;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
