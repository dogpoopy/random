.class Lcom/netease/mpay/oversea/aa$a;
.super Lcom/netease/mpay/oversea/f1;
.source "SecuritySetPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/aa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/aa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/aa$a;->d:Lcom/netease/mpay/oversea/aa;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/aa$a;->d:Lcom/netease/mpay/oversea/aa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/aa;->a(Lcom/netease/mpay/oversea/aa;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    const-string v0, "security_email"

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    return-void
.end method
