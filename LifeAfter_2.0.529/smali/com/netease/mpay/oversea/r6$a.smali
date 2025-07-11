.class Lcom/netease/mpay/oversea/r6$a;
.super Lcom/netease/mpay/oversea/f1;
.source "NewGuestView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/r6;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/r6;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/r6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/r6$a$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/r6$a$a;-><init>(Lcom/netease/mpay/oversea/r6$a;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r6;->b(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r6;->b(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    .line 9
    invoke-static {v0}, Lcom/netease/mpay/oversea/r6;->b(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    invoke-static {v1}, Lcom/netease/mpay/oversea/r6;->b(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    .line 12
    invoke-static {v1}, Lcom/netease/mpay/oversea/r6;->b(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r6;->b(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/z0;->a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/y5;)V

    goto :goto_2

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/z0;->a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/s9;)V

    goto :goto_2

    .line 17
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method
