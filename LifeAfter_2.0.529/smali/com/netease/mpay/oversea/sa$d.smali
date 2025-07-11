.class Lcom/netease/mpay/oversea/sa$d;
.super Ljava/lang/Object;
.source "SwitchView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ra$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/sa;->b(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/sa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/sa$d;->a:Lcom/netease/mpay/oversea/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/g6;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$d;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0}, Lcom/netease/mpay/oversea/sa;->p(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/b6;

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {}, Lcom/netease/mpay/oversea/sa;->h()Lcom/netease/mpay/oversea/s9;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    const/16 v3, 0x1b

    invoke-direct {v1, v3, p1, v2}, Lcom/netease/mpay/oversea/b6;-><init>(ILcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa$d;->a:Lcom/netease/mpay/oversea/sa;

    invoke-static {v1}, Lcom/netease/mpay/oversea/sa;->q(Lcom/netease/mpay/oversea/sa;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
