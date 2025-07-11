.class Lcom/netease/mpay/oversea/bb$a;
.super Ljava/lang/Object;
.source "TokenRefresh.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/bb;->a(Lcom/netease/mpay/oversea/RefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/RefreshCallback;

.field final synthetic b:Lcom/netease/mpay/oversea/bb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/bb;Lcom/netease/mpay/oversea/RefreshCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/bb$a;->b:Lcom/netease/mpay/oversea/bb;

    iput-object p2, p0, Lcom/netease/mpay/oversea/bb$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/bb$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/bb$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/netease/mpay/oversea/bb$a;->b:Lcom/netease/mpay/oversea/bb;

    new-instance v3, Lcom/netease/mpay/oversea/pa;

    iget-object v4, v2, Lcom/netease/mpay/oversea/bb;->a:Landroid/app/Activity;

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/bb$a;->b:Lcom/netease/mpay/oversea/bb;

    iget-object v2, v2, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v3, v1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 6
    :cond_0
    iget-object v3, v0, Lcom/netease/mpay/oversea/bb$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz v3, :cond_2

    .line 7
    new-instance v15, Lcom/netease/mpay/oversea/User;

    iget-object v5, v1, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v7, v2

    iget-object v2, v1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 9
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->b()I

    move-result v8

    iget-object v10, v1, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    iget v11, v1, Lcom/netease/mpay/oversea/e6;->m:I

    iget-object v12, v1, Lcom/netease/mpay/oversea/e6;->s:Ljava/lang/String;

    iget-object v2, v1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/g6;->a(Ljava/util/ArrayList;)[I

    move-result-object v13

    iget-object v14, v1, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v14}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[ILjava/lang/String;)V

    .line 12
    invoke-interface {v3, v15}, Lcom/netease/mpay/oversea/RefreshCallback;->onSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_2
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/bb$a;->a:Lcom/netease/mpay/oversea/RefreshCallback;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onLogout()V

    :cond_0
    return-void
.end method
