.class Lcom/netease/mpay/oversea/b5$d;
.super Lcom/netease/mpay/oversea/f1;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$d;->d:Lcom/netease/mpay/oversea/b5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection"

    const-string v1, "child_protection_close"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$d;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->a(Lcom/netease/mpay/oversea/b5;)V

    return-void
.end method
