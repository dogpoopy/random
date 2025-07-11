.class Lcom/netease/mpay/oversea/b5$h;
.super Lcom/netease/mpay/oversea/f1;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->l()V
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$h;->d:Lcom/netease/mpay/oversea/b5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$h;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->i(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$h;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->h(Lcom/netease/mpay/oversea/b5;)V

    return-void
.end method
