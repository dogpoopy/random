.class public Lcom/netease/mpay/oversea/ui/l;
.super Lcom/netease/mpay/oversea/ui/o;
.source "GuestLogin.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/o;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 152
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 153
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/l;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/netease/mpay/oversea/ui/l;->n()Ljava/util/ArrayList;

    move-result-object v8

    .line 138
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "account"

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v15, Lcom/netease/mpay/oversea/f6;

    iget-object v10, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    .line 141
    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v7, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v9

    .line 142
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v12

    iget-object v14, v0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    const/4 v13, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 144
    invoke-virtual {v15}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method private static b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x1b

    .line 5
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/l;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/ui/l$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/ui/l$a;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    :goto_0
    return-void
.end method

.method private n()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->K:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v2, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->i:Lcom/netease/mpay/oversea/g6;

    .line 5
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "channel_login_fail_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h9;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    const-string v3, "first_guest"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private o()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/l;->n()Ljava/util/ArrayList;

    move-result-object v7

    .line 2
    new-instance v8, Lcom/netease/mpay/oversea/f6;

    iget-object v9, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/ui/l$c;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/l$c;-><init>(Lcom/netease/mpay/oversea/ui/l;)V

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 25
    invoke-virtual {v8}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 10

    const/16 v0, 0x21

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "birthday"

    .line 154
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "iso_code"

    .line 155
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLUVFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 157
    new-instance p1, Lcom/netease/mpay/oversea/f6;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 158
    invoke-static/range {v0 .. v9}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 160
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    new-instance p2, Lcom/netease/mpay/oversea/j;

    const/4 p3, 0x0

    const/16 v0, 0x2713

    invoke-direct {p2, v0, p3}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o;->a(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/l;->c(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 149
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 150
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 3
    sget-object v2, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    if-eq v1, v2, :cond_b

    sget-object v2, Lcom/netease/mpay/oversea/s9;->l:Lcom/netease/mpay/oversea/s9;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    sget-object v2, Lcom/netease/mpay/oversea/s9;->m:Lcom/netease/mpay/oversea/s9;

    const-string v3, "account"

    if-ne v2, v1, :cond_2

    .line 35
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5;->e()Ljava/lang/String;

    move-result-object v5

    .line 37
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    invoke-direct {v1, v3, v5}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/netease/mpay/oversea/f6;

    iget-object v13, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v10, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 47
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v15

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    const/16 v16, 0x0

    move-object v12, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 49
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto/16 :goto_3

    .line 50
    :cond_1
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 52
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 62
    :cond_2
    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 63
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v4, v1, Lcom/netease/mpay/oversea/t8;->i:Ljava/lang/String;

    :cond_3
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 67
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    invoke-direct {v2, v3, v6}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Lcom/netease/mpay/oversea/f6;

    iget-object v14, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v15

    sget-object v5, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v9, v1, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 70
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v16

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    const/16 v17, 0x0

    move-object v13, v2

    move-object/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 72
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/fa;->b()V

    goto/16 :goto_3

    .line 74
    :cond_4
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 76
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto/16 :goto_3

    .line 81
    :cond_5
    sget-object v2, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/netease/mpay/oversea/s9;->K:Lcom/netease/mpay/oversea/s9;

    if-ne v1, v2, :cond_6

    goto :goto_0

    .line 95
    :cond_6
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 97
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v3

    .line 98
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_3

    .line 99
    :cond_7
    :goto_0
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, v1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    .line 100
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 101
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5;->e()Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 105
    invoke-direct {v0, v4}, Lcom/netease/mpay/oversea/ui/l;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/netease/mpay/oversea/ui/l;->o()V

    goto :goto_3

    .line 108
    :cond_b
    :goto_2
    new-instance v1, Lcom/netease/mpay/oversea/f6;

    iget-object v6, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v14, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    .line 109
    invoke-static/range {v8 .. v15}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v8

    new-instance v10, Lcom/netease/mpay/oversea/ui/l$b;

    invoke-direct {v10, v0}, Lcom/netease/mpay/oversea/ui/l$b;-><init>(Lcom/netease/mpay/oversea/ui/l;)V

    const/4 v9, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 136
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    :goto_3
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;
    .locals 2

    .line 6
    new-instance p1, Lcom/netease/mpay/oversea/j;

    const/16 v0, 0x2711

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method protected c(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 5
    iget-object v1, p2, Lcom/netease/mpay/oversea/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 15
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5;->e()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    sget-object v2, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-eq v2, p1, :cond_6

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    if-eq v1, p1, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    if-ne v1, p1, :cond_2

    iget-object v1, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/oversea/ui/l$f;

    invoke-direct {v4, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/l$f;-><init>(Lcom/netease/mpay/oversea/ui/l;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/s9;)V

    invoke-static {v1, v2, v0, v4}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return v3

    .line 59
    :cond_2
    iget-object v1, p2, Lcom/netease/mpay/oversea/j;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/ui/l;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/netease/mpay/oversea/g6;

    .line 62
    sget-object v2, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v7, :cond_3

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v7, :cond_4

    goto :goto_1

    .line 63
    :cond_4
    sget-object v1, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    if-ne v1, p1, :cond_5

    .line 64
    new-instance v4, Lcom/netease/mpay/oversea/a4;

    invoke-direct {v4}, Lcom/netease/mpay/oversea/a4;-><init>()V

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v6, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 65
    invoke-static {v5, v7, v0}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/oversea/ui/l$g;

    invoke-direct {v9, p0, p2, v7}, Lcom/netease/mpay/oversea/ui/l$g;-><init>(Lcom/netease/mpay/oversea/ui/l;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/g6;)V

    new-instance v10, Lcom/netease/mpay/oversea/ui/l$h;

    invoke-direct {v10, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/l$h;-><init>(Lcom/netease/mpay/oversea/ui/l;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/s9;)V

    .line 66
    invoke-virtual/range {v4 .. v10}, Lcom/netease/mpay/oversea/a4;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/b$c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return v3

    .line 89
    :cond_5
    invoke-virtual {p0, v7, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/j;)Z

    .line 90
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    return v3

    .line 91
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_bounded_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 93
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 94
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v7, Lcom/netease/mpay/oversea/ui/l$d;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/ui/l$d;-><init>(Lcom/netease/mpay/oversea/ui/l;)V

    new-instance v9, Lcom/netease/mpay/oversea/ui/l$e;

    invoke-direct {v9, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/l$e;-><init>(Lcom/netease/mpay/oversea/ui/l;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/s9;)V

    invoke-static/range {v4 .. v9}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_guest_already_bind"

    const-string v0, "confirm"

    const-string v1, "cancel"

    .line 109
    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return v3

    :cond_7
    return v0
.end method
