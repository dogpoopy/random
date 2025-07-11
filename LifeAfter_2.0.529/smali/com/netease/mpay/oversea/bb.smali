.class public Lcom/netease/mpay/oversea/bb;
.super Ljava/lang/Object;
.source "TokenRefresh.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/netease/mpay/oversea/y5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/bb;->a:Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/RefreshCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    iget-object v3, v0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    const-string v4, "user_id"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    iget-object v3, v0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    const-string v4, "token"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    sget-object v3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v3, :cond_2

    .line 11
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    iget-object v4, v4, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "account_type"

    invoke-direct {v2, v4, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    new-instance v2, Lcom/netease/mpay/oversea/f6;

    iget-object v12, v0, Lcom/netease/mpay/oversea/bb;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v13

    sget-object v3, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    iget-object v4, v0, Lcom/netease/mpay/oversea/bb;->b:Lcom/netease/mpay/oversea/y5;

    iget-object v4, v4, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    sget-object v9, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 14
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v14

    new-instance v3, Lcom/netease/mpay/oversea/bb$a;

    invoke-direct {v3, v0, v1}, Lcom/netease/mpay/oversea/bb$a;-><init>(Lcom/netease/mpay/oversea/bb;Lcom/netease/mpay/oversea/RefreshCallback;)V

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 54
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method
