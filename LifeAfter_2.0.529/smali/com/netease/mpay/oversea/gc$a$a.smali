.class Lcom/netease/mpay/oversea/gc$a$a;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/gc$a;->a(ILcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/gc$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/gc$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/gc$a$a;->a:Lcom/netease/mpay/oversea/gc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/gc$a$a;->a:Lcom/netease/mpay/oversea/gc$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/gc;->c(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/gc$a$a;->a:Lcom/netease/mpay/oversea/gc$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-static {v1}, Lcom/netease/mpay/oversea/gc;->o(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/gc$a$a;->a:Lcom/netease/mpay/oversea/gc$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    .line 2
    invoke-static {v2}, Lcom/netease/mpay/oversea/gc;->n(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/w2;

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method
