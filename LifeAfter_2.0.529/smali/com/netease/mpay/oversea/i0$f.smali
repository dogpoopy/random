.class Lcom/netease/mpay/oversea/i0$f;
.super Ljava/lang/Object;
.source "BindView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/i0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$f;->a:Lcom/netease/mpay/oversea/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ui/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$f;->a:Lcom/netease/mpay/oversea/i0;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/i0;->c(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/i0$f;->a:Lcom/netease/mpay/oversea/i0;

    invoke-static {v1}, Lcom/netease/mpay/oversea/i0;->A(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/ui/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$f;->a:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/i0;->a(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/ui/b;)V

    return-void
.end method
