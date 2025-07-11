.class Lcom/netease/mpay/oversea/z8$a;
.super Lcom/netease/mpay/oversea/f1;
.source "RegisterHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/z8;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/ToggleButton;

.field final synthetic e:Lcom/netease/mpay/oversea/z8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/z8;Landroid/widget/ToggleButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/z8$a;->e:Lcom/netease/mpay/oversea/z8;

    iput-object p2, p0, Lcom/netease/mpay/oversea/z8$a;->d:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/z8$a;->d:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
