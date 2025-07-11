.class Lcom/netease/mpay/oversea/y9$a$a;
.super Ljava/lang/Object;
.source "SecurityMailEntryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/y9$a;->a(Lcom/netease/mpay/oversea/w2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/w2;

.field final synthetic b:Lcom/netease/mpay/oversea/y9$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/y9$a;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/y9$a$a;->b:Lcom/netease/mpay/oversea/y9$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/y9$a$a;->a:Lcom/netease/mpay/oversea/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/y9$a$a;->a:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->l:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/y9$a$a;->b:Lcom/netease/mpay/oversea/y9$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y9$a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/y9$a$a;->a:Lcom/netease/mpay/oversea/w2;

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
