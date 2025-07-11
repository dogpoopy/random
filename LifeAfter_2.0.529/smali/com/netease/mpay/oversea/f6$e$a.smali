.class Lcom/netease/mpay/oversea/f6$e$a;
.super Lcom/netease/mpay/oversea/r4;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/f6$e;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/f6$e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/f6$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/f6$e$a;->b:Lcom/netease/mpay/oversea/f6$e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6$e$a;->b:Lcom/netease/mpay/oversea/f6$e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6$e;->b:Lcom/netease/mpay/oversea/ea;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ea;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/f6$e$a;->b:Lcom/netease/mpay/oversea/f6$e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/f6$e;->b:Lcom/netease/mpay/oversea/ea;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    const/16 v1, 0x2713

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/f6$e$a;->b:Lcom/netease/mpay/oversea/f6$e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/f6$e;->b:Lcom/netease/mpay/oversea/ea;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    const/16 v2, 0x2713

    goto :goto_0

    :cond_0
    const/16 v2, 0x2711

    :goto_0
    if-ne p1, v1, :cond_1

    const-string p2, ""

    .line 2
    :cond_1
    invoke-direct {v0, v2, p2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {p3, p1, v0}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 0

    return-void
.end method

.method public onUserLogout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6$e$a;->b:Lcom/netease/mpay/oversea/f6$e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6$e;->b:Lcom/netease/mpay/oversea/ea;

    new-instance v1, Lcom/netease/mpay/oversea/j;

    const/16 v2, 0x2715

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x64

    invoke-interface {v0, v2, v1}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method
