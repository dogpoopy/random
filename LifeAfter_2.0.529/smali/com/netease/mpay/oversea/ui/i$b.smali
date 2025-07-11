.class Lcom/netease/mpay/oversea/ui/i$b;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/i;->b(ZLcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/mpay/oversea/ui/i$l;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/r4;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/i;ZLcom/netease/mpay/oversea/ui/i$l;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->e:Lcom/netease/mpay/oversea/ui/i;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i$l;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/i$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/i$b;->d:Lcom/netease/mpay/oversea/r4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->a:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$b;->c:Ljava/lang/String;

    const/16 v2, 0x2713

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    .line 5
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->e:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 6
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->e:Lcom/netease/mpay/oversea/ui/i;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$b;->d:Lcom/netease/mpay/oversea/r4;

    const/16 v1, 0x66

    invoke-static {p2, p1, v1, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->e:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/s9;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->e:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i$l;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$b;->e:Lcom/netease/mpay/oversea/ui/i;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/i$b;->b:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$b;->d:Lcom/netease/mpay/oversea/r4;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method
