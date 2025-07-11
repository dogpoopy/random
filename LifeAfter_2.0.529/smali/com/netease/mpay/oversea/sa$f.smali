.class Lcom/netease/mpay/oversea/sa$f;
.super Lcom/netease/mpay/oversea/f1;
.source "SwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/sa;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/sa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/sa$f;->d:Lcom/netease/mpay/oversea/sa;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/netease/mpay/oversea/sa$a;->a:[I

    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$f;->d:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0}, Lcom/netease/mpay/oversea/sa;->d(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/r8$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa$f;->d:Lcom/netease/mpay/oversea/sa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/sa;->g(Lcom/netease/mpay/oversea/sa;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$f;->d:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0}, Lcom/netease/mpay/oversea/sa;->h(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa$f;->d:Lcom/netease/mpay/oversea/sa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/sa;->e(Lcom/netease/mpay/oversea/sa;)V

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/sa$f;->d:Lcom/netease/mpay/oversea/sa;

    invoke-static {v0}, Lcom/netease/mpay/oversea/sa;->f(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "edit_confirm"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
