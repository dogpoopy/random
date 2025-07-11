.class Lcom/netease/mpay/oversea/fa$a;
.super Lcom/netease/mpay/oversea/q4;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/ea;

.field final synthetic c:Lcom/netease/mpay/oversea/m1;

.field final synthetic d:Lcom/netease/mpay/oversea/fa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/fa;Lcom/netease/mpay/oversea/ea;Lcom/netease/mpay/oversea/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa$a;->d:Lcom/netease/mpay/oversea/fa;

    iput-object p2, p0, Lcom/netease/mpay/oversea/fa$a;->b:Lcom/netease/mpay/oversea/ea;

    iput-object p3, p0, Lcom/netease/mpay/oversea/fa$a;->c:Lcom/netease/mpay/oversea/m1;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/q4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/qb;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/q4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/qb;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object p3

    iput-object p2, p3, Lcom/netease/mpay/oversea/p5;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object p2

    iput-object p1, p2, Lcom/netease/mpay/oversea/p5;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/fa$a;->d:Lcom/netease/mpay/oversea/fa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/fa$a;->b:Lcom/netease/mpay/oversea/ea;

    iget-object v0, p0, Lcom/netease/mpay/oversea/fa$a;->c:Lcom/netease/mpay/oversea/m1;

    iget v0, v0, Lcom/netease/mpay/oversea/m1;->c:I

    new-instance v1, Lcom/netease/mpay/oversea/j;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0, v1}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method
