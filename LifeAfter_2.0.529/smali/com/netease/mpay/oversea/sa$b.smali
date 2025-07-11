.class Lcom/netease/mpay/oversea/sa$b;
.super Lcom/netease/mpay/oversea/f1;
.source "SwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/sa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/w2;

.field final synthetic e:Lcom/netease/mpay/oversea/sa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/sa$b;->e:Lcom/netease/mpay/oversea/sa;

    iput-object p2, p0, Lcom/netease/mpay/oversea/sa$b;->d:Lcom/netease/mpay/oversea/w2;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa$b;->e:Lcom/netease/mpay/oversea/sa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$b;->d:Lcom/netease/mpay/oversea/w2;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method
