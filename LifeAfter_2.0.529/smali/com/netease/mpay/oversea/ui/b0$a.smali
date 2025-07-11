.class Lcom/netease/mpay/oversea/ui/b0$a;
.super Ljava/lang/Object;
.source "WebViewLoginHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/b0;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/b0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/b0$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/b0$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 12

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/netease/mpay/oversea/k7;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget-object v4, Lcom/netease/mpay/oversea/g6;->G:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    iget-object v0, v2, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v10, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v0

    new-instance v2, Lcom/netease/mpay/oversea/ui/b0$a$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/b0$a$b;-><init>(Lcom/netease/mpay/oversea/ui/b0$a;)V

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/netease/mpay/oversea/k7;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/u5;Ljava/lang/String;Lcom/netease/mpay/oversea/q5;)V

    .line 40
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    if-nez p2, :cond_0

    .line 6
    new-instance p1, Lcom/netease/mpay/oversea/j;

    const/16 p2, 0x2711

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/ui/b0$a;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast p1, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;)V

    :goto_0
    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/b0$a$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/ui/b0$a$a;-><init>(Lcom/netease/mpay/oversea/ui/b0$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0$a;->a:Lcom/netease/mpay/oversea/ui/b0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/a0;->a(Ljava/lang/String;)V

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
