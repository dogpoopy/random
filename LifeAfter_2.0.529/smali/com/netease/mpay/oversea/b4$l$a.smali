.class Lcom/netease/mpay/oversea/b4$l$a;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4$l;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/w2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/w2;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/netease/mpay/oversea/b4$l;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4$l;Lcom/netease/mpay/oversea/w2;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$l$a;->c:Lcom/netease/mpay/oversea/b4$l;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b4$l$a;->a:Lcom/netease/mpay/oversea/w2;

    iput-object p3, p0, Lcom/netease/mpay/oversea/b4$l$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l$a;->a:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$l$a;->a:Lcom/netease/mpay/oversea/w2;

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    const-string v0, "quick_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$l$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$l$a;->a:Lcom/netease/mpay/oversea/w2;

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
