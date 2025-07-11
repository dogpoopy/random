.class Lcom/netease/mpay/oversea/l4$i;
.super Lcom/netease/mpay/oversea/f1;
.source "InheritPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l4;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l4$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Lcom/netease/mpay/oversea/l4$l;

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/netease/mpay/oversea/l4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l4;Landroid/widget/EditText;Lcom/netease/mpay/oversea/l4$l;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l4$i;->g:Lcom/netease/mpay/oversea/l4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/l4$i;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/l4$i;->e:Lcom/netease/mpay/oversea/l4$l;

    iput-object p4, p0, Lcom/netease/mpay/oversea/l4$i;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/l4$i;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/l4$i;->e:Lcom/netease/mpay/oversea/l4$l;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/l4$l;->a(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/l4$i;->f:Landroid/app/Activity;

    const-string v1, "guide_transfer_code"

    const-string v2, "confirm"

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
