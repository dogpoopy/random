.class Lcom/netease/mpay/oversea/ui/o$i$i;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/o$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$i;->a:Lcom/netease/mpay/oversea/ui/o$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$i;->a:Lcom/netease/mpay/oversea/ui/o$i;

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$i;->a:Lcom/netease/mpay/oversea/ui/o$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o$i;->a(Lcom/netease/mpay/oversea/ui/o$i;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$i;->a:Lcom/netease/mpay/oversea/ui/o$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o$i;->b(Lcom/netease/mpay/oversea/ui/o$i;)V

    goto :goto_1

    .line 11
    :cond_2
    sget-object p1, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$i;->a:Lcom/netease/mpay/oversea/ui/o$i;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o$i;->b()Lcom/netease/mpay/oversea/s9;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$i;->a:Lcom/netease/mpay/oversea/ui/o$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o$i;->a(Lcom/netease/mpay/oversea/ui/o$i;)V

    :goto_1
    return-void
.end method
