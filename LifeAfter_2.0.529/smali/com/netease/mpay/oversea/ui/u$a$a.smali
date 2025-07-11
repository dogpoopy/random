.class Lcom/netease/mpay/oversea/ui/u$a$a;
.super Ljava/lang/Object;
.source "TokenLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/u$a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/e6;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/u$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/u$a;Lcom/netease/mpay/oversea/e6;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->a:Lcom/netease/mpay/oversea/e6;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    new-instance p2, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5;

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->a:Lcom/netease/mpay/oversea/e6;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object p2, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->a:Lcom/netease/mpay/oversea/e6;

    iget v0, p2, Lcom/netease/mpay/oversea/e6;->p:I

    if-nez v0, :cond_1

    iget p2, p2, Lcom/netease/mpay/oversea/e6;->j:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 10
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/r4;->a(Lcom/netease/mpay/oversea/y5;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->a:Lcom/netease/mpay/oversea/e6;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a$a;->c:Lcom/netease/mpay/oversea/ui/u$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
