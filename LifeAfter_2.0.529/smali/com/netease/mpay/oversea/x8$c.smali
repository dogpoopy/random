.class Lcom/netease/mpay/oversea/x8$c;
.super Lcom/netease/mpay/oversea/f1;
.source "RegionPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/x8;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/x8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/x8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x8;->f(Lcom/netease/mpay/oversea/x8;)Lcom/netease/mpay/oversea/x8$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x8;->f(Lcom/netease/mpay/oversea/x8;)Lcom/netease/mpay/oversea/x8$e;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x8;->b(Lcom/netease/mpay/oversea/x8;)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-static {v1}, Lcom/netease/mpay/oversea/x8;->c(Lcom/netease/mpay/oversea/x8;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-static {v2}, Lcom/netease/mpay/oversea/x8;->a(Lcom/netease/mpay/oversea/x8;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/d1;

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/x8$e;->a(ILcom/netease/mpay/oversea/d1;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/x8$c;->d:Lcom/netease/mpay/oversea/x8;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "change_region"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
