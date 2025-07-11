.class Lcom/netease/mpay/oversea/x7$a;
.super Ljava/lang/Object;
.source "PassportWebView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/x7;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/x7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/x7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x7;->c(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x7;->d(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x7;->g(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {v1}, Lcom/netease/mpay/oversea/x7;->f(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x7;->e(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/s4;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/x0;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/x0;-><init>()V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    :goto_1
    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x7;->i(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {p2}, Lcom/netease/mpay/oversea/x7;->h(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 4

    if-nez p2, :cond_0

    .line 8
    new-instance p1, Lcom/netease/mpay/oversea/j;

    const/16 p2, 0x2711

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/x7$a;->a(ILcom/netease/mpay/oversea/j;)V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 12
    iget p1, p2, Lcom/netease/mpay/oversea/e6;->m:I

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x7;->b(Lcom/netease/mpay/oversea/x7;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v0}, Lcom/netease/mpay/oversea/z4;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->E:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/x7$a$a;

    invoke-direct {v3, p0, p2}, Lcom/netease/mpay/oversea/x7$a$a;-><init>(Lcom/netease/mpay/oversea/x7$a;Lcom/netease/mpay/oversea/e6;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    const/4 p2, 0x1

    .line 36
    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 37
    invoke-static {p1, v0, p2}, Lcom/netease/mpay/oversea/m;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7$a;->a:Lcom/netease/mpay/oversea/x7;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/x7;->b(Lcom/netease/mpay/oversea/e6;)V

    :goto_0
    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
