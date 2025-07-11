.class Lcom/netease/mpay/oversea/b5$i;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$i;->b:Lcom/netease/mpay/oversea/b5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b5$i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "child_protection_confirm"

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$i;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->k(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "child_protection_age_default"

    invoke-virtual {p1, v0, p2, v1}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection_confirm_confirm"

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$i;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->l(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$i;->b:Lcom/netease/mpay/oversea/b5;

    iget-object p2, p0, Lcom/netease/mpay/oversea/b5$i;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/b5;->a(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;)V

    return-void
.end method
