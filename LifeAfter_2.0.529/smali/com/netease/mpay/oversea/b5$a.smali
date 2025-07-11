.class Lcom/netease/mpay/oversea/b5$a;
.super Lcom/netease/mpay/oversea/ec$b;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/ec$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection"

    const-string v1, "child_protection_age"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/netease/mpay/oversea/ha;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->r(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->s(Lcom/netease/mpay/oversea/b5;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/netease/mpay/oversea/b5$a$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/b5$a$a;-><init>(Lcom/netease/mpay/oversea/b5$a;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ha;-><init>(Landroid/app/Activity;ZLcom/netease/mpay/oversea/r0;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    .line 23
    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->t(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->z(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/b5$a;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b5;->A(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ha;->a(Lcom/netease/mpay/oversea/p1;Lcom/netease/mpay/oversea/p1;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/ha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ha;->show()V

    return-void
.end method
