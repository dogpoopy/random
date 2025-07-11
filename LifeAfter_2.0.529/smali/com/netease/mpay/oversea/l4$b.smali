.class Lcom/netease/mpay/oversea/l4$b;
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

.field final synthetic e:Lcom/netease/mpay/oversea/l4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l4;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l4$b;->e:Lcom/netease/mpay/oversea/l4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/l4$b;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/l4$b;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
