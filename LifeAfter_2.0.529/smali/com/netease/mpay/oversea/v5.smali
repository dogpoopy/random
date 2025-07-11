.class public Lcom/netease/mpay/oversea/v5;
.super Lcom/netease/mpay/oversea/v2;
.source "LoginEntrance.java"


# instance fields
.field private q:Lcom/netease/mpay/oversea/p;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/v2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/netease/mpay/oversea/v5;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/v5;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/v5;->q:Lcom/netease/mpay/oversea/p;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/v5;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/v5;->r:Ljava/lang/String;

    return-object p0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "channel_login_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lcom/netease/mpay/oversea/x5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "channel_login_all_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-class v0, Lcom/netease/mpay/oversea/o5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "channel_login_passport_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    const-class v0, Lcom/netease/mpay/oversea/q7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "channel_login_passport_history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    const-class v0, Lcom/netease/mpay/oversea/p7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "passport_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    const-class v0, Lcom/netease/mpay/oversea/o7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "passport_web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    const-class v0, Lcom/netease/mpay/oversea/x7;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "channel_login_more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    const-class v0, Lcom/netease/mpay/oversea/z5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "channel_quick_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    const-class v0, Lcom/netease/mpay/oversea/p8;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    const-string v1, "single_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    const-class v0, Lcom/netease/mpay/oversea/ia;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_8
    invoke-super {p0}, Lcom/netease/mpay/oversea/v2;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Lcom/netease/mpay/oversea/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/v5;->q:Lcom/netease/mpay/oversea/p;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/v5;->r:Ljava/lang/String;

    return-object v0
.end method
