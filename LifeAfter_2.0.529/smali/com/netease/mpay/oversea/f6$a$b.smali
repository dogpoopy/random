.class Lcom/netease/mpay/oversea/f6$a$b;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/f6$a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/e6;

.field final synthetic b:Lcom/netease/mpay/oversea/f6$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/f6$a;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/f6$a$b;->b:Lcom/netease/mpay/oversea/f6$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/f6$a$b;->a:Lcom/netease/mpay/oversea/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/f6$a$b;->b:Lcom/netease/mpay/oversea/f6$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6$a;->e:Lcom/netease/mpay/oversea/f6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/f6;->i(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/f6$a$b;->b:Lcom/netease/mpay/oversea/f6$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6$a;->e:Lcom/netease/mpay/oversea/f6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/f6$a$b;->b:Lcom/netease/mpay/oversea/f6$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/f6$a;->e:Lcom/netease/mpay/oversea/f6;

    iget-object v0, p1, Lcom/netease/mpay/oversea/f6;->l:Lcom/netease/mpay/oversea/q5;

    iget-object p1, p1, Lcom/netease/mpay/oversea/f6;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/f6$a$b;->a:Lcom/netease/mpay/oversea/e6;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/q5;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method
