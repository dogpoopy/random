.class Lcom/netease/mpay/oversea/ui/b0$a$b;
.super Ljava/lang/Object;
.source "WebViewLoginHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/b0$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/b0$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/b0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a;

    const/16 v0, 0x2711

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/b0$a;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/b0$a;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a;

    new-instance p2, Lcom/netease/mpay/oversea/j;

    const/16 p3, 0x2711

    const-string v0, ""

    invoke-direct {p2, p3, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/b0$a;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast p1, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/b0$a;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method
