.class Lcom/netease/mpay/oversea/ui/y$a;
.super Lcom/netease/mpay/oversea/f1;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/y;->a(ILandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/y;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y$a;->d:Lcom/netease/mpay/oversea/ui/y;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y$a;->d:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/y;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y$a;->d:Lcom/netease/mpay/oversea/ui/y;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/y;->a(Lcom/netease/mpay/oversea/ui/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y$a;->d:Lcom/netease/mpay/oversea/ui/y;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/y;->a(Lcom/netease/mpay/oversea/ui/y;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y$a;->d:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/y;->b()V

    :cond_1
    return-void
.end method
