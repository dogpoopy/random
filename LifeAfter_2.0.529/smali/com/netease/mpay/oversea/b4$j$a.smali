.class Lcom/netease/mpay/oversea/b4$j$a;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/d7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4$j;->b(Landroid/view/View;)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/b4$j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$j$a;->a:Lcom/netease/mpay/oversea/b4$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/c9;)V
    .locals 2
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
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j$a;->a:Lcom/netease/mpay/oversea/b4$j;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->T(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$j$a;->a:Lcom/netease/mpay/oversea/b4$j;

    iget-object v1, v1, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b4;->S(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/w2;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j$a;->a:Lcom/netease/mpay/oversea/b4$j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->U(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j$a;->a:Lcom/netease/mpay/oversea/b4$j;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j$a;->a:Lcom/netease/mpay/oversea/b4$j;

    iget-object v0, v0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
