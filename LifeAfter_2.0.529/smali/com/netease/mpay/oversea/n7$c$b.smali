.class Lcom/netease/mpay/oversea/n7$c$b;
.super Lcom/netease/mpay/oversea/ec$b;
.source "PassportHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n7$c;->a(Landroid/content/Context;ILcom/netease/mpay/oversea/n7$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/oversea/n7$a;

.field final synthetic d:Lcom/netease/mpay/oversea/n7$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n7$c;ILcom/netease/mpay/oversea/n7$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n7$c$b;->d:Lcom/netease/mpay/oversea/n7$c;

    iput p2, p0, Lcom/netease/mpay/oversea/n7$c$b;->b:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/n7$c$b;->c:Lcom/netease/mpay/oversea/n7$a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/ec$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n7$c$b;->d:Lcom/netease/mpay/oversea/n7$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n7$c;->a:Lcom/netease/mpay/oversea/n7$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/netease/mpay/oversea/n7$c$b;->b:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/n7$c$b;->c:Lcom/netease/mpay/oversea/n7$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/n7$b;->b(ILcom/netease/mpay/oversea/t8;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/n7$c$b;->c:Lcom/netease/mpay/oversea/n7$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
