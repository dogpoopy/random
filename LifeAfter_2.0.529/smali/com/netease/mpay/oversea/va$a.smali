.class Lcom/netease/mpay/oversea/va$a;
.super Lcom/netease/mpay/oversea/f1;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/va;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/va;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/va;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/va$a;->d:Lcom/netease/mpay/oversea/va;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/va$a;->d:Lcom/netease/mpay/oversea/va;

    invoke-static {p1}, Lcom/netease/mpay/oversea/va;->a(Lcom/netease/mpay/oversea/va;)Lcom/netease/mpay/oversea/s4;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/x0;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/x0;-><init>()V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/va$a;->d:Lcom/netease/mpay/oversea/va;

    invoke-static {v0}, Lcom/netease/mpay/oversea/va;->b(Lcom/netease/mpay/oversea/va;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
