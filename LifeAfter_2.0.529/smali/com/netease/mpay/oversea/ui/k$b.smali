.class Lcom/netease/mpay/oversea/ui/k$b;
.super Ljava/lang/Object;
.source "GuestInheritGuidance.java"

# interfaces
.implements Lcom/netease/mpay/oversea/l4$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/k;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/l4$j;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/k;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/k;Lcom/netease/mpay/oversea/l4$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/k$b;->a:Lcom/netease/mpay/oversea/l4$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v1}, Lcom/netease/mpay/oversea/ui/k;->b(Lcom/netease/mpay/oversea/ui/k;)Lcom/netease/mpay/oversea/s9;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/k;->c(Lcom/netease/mpay/oversea/ui/k;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->P()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/k;->b(Lcom/netease/mpay/oversea/ui/k;)Lcom/netease/mpay/oversea/s9;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/k;->c(Lcom/netease/mpay/oversea/ui/k;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/k;->d(Lcom/netease/mpay/oversea/ui/k;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/k$b;->a:Lcom/netease/mpay/oversea/l4$j;

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/ui/k;->a(Lcom/netease/mpay/oversea/ui/k;Ljava/lang/String;Lcom/netease/mpay/oversea/l4$k;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/k$b;->b:Lcom/netease/mpay/oversea/ui/k;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/k;->e(Lcom/netease/mpay/oversea/ui/k;)V

    return-void
.end method
