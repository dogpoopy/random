.class Lcom/netease/mpay/oversea/q7$j;
.super Ljava/lang/Object;
.source "PassportLoginHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/s7$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q7;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/q7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q7$j;->a:Lcom/netease/mpay/oversea/q7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/g6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$j;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->C(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$j;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->D(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/g6;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-ne p1, v0, :cond_1

    const-string p1, "neteasegames_login_more"

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/cb;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/q7$j;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v1}, Lcom/netease/mpay/oversea/q7;->E(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
