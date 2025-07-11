.class Lcom/netease/mpay/oversea/f6$b$a;
.super Lcom/netease/mpay/oversea/r4;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/f6$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/f6$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/f6$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6$b;->a:Lcom/netease/mpay/oversea/ea;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ea;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/f6$b;->a:Lcom/netease/mpay/oversea/ea;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    const/16 v1, 0x2713

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    iget-object v3, v2, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v4, v3, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    iget-object v5, v3, Lcom/netease/mpay/oversea/u5;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/netease/mpay/oversea/u5;->c:Ljava/lang/String;

    iget-object v7, v3, Lcom/netease/mpay/oversea/u5;->d:Ljava/lang/String;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6;->n:Lcom/netease/mpay/oversea/s9;

    iget-object v2, v2, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v2}, Lcom/netease/mpay/oversea/s9;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/s9;

    move-result-object v8

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v9, v2, Lcom/netease/mpay/oversea/u5;->i:Ljava/util/ArrayList;

    const/4 v10, 0x1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v10

    move-object v7, v8

    move-object v8, v9

    .line 5
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v14

    .line 9
    new-instance v1, Lcom/netease/mpay/oversea/h0;

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    invoke-static {v2}, Lcom/netease/mpay/oversea/f6;->l(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;

    move-result-object v12

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    invoke-static {v2}, Lcom/netease/mpay/oversea/f6;->m(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    iget-object v2, v2, Lcom/netease/mpay/oversea/f6;->l:Lcom/netease/mpay/oversea/q5;

    const/4 v15, 0x1

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/netease/mpay/oversea/h0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 0

    return-void
.end method

.method public onUserLogout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6$b$a;->b:Lcom/netease/mpay/oversea/f6$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f6$b;->a:Lcom/netease/mpay/oversea/ea;

    new-instance v1, Lcom/netease/mpay/oversea/j;

    const/16 v2, 0x2715

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method
