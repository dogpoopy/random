.class public Lcom/netease/mpay/oversea/vb$c;
.super Lcom/netease/mpay/oversea/vb;
.source "UrlForWebViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field g:Ljava/lang/String;

.field h:Lcom/netease/mpay/oversea/s9;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/vb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p8, p0, Lcom/netease/mpay/oversea/vb$c;->g:Ljava/lang/String;

    .line 3
    iput-object p7, p0, Lcom/netease/mpay/oversea/vb$c;->h:Lcom/netease/mpay/oversea/s9;

    .line 4
    iput-object p6, p0, Lcom/netease/mpay/oversea/vb$c;->j:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/vb$c;->i:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/netease/mpay/oversea/vb$c;->k:Ljava/lang/String;

    .line 7
    iput-object p9, p0, Lcom/netease/mpay/oversea/vb$c;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-static/range {v0 .. v8}, Lcom/netease/mpay/oversea/vb$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-object/from16 v0, p7

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    move-object/from16 v11, p6

    if-ne v11, v3, :cond_1

    sget-object v3, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v3, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/api/users/login/v2/nt_passport/bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_1
    sget-object v3, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/netease/mpay/oversea/g6;->L:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v12, v2

    goto :goto_4

    .line 8
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/netease/mpay/oversea/g6;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "&"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_2
    invoke-virtual/range {p7 .. p7}, Lcom/netease/mpay/oversea/g6;->c()I

    move-result v2

    const/4 v4, 0x1

    const-string v5, "="

    const-string v6, "page"

    if-ne v2, v4, :cond_5

    .line 16
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "register"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual/range {p7 .. p7}, Lcom/netease/mpay/oversea/g6;->c()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 18
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "recovery"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 22
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 24
    :cond_7
    new-instance v0, Lcom/netease/mpay/oversea/vb$c;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p8

    invoke-direct/range {v4 .. v13}, Lcom/netease/mpay/oversea/vb$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/vb;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_5
    return-object v1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/vb;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->h:Lcom/netease/mpay/oversea/s9;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->h:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    const-string v2, "scene"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->h:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_1

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/p5;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bind_ticket"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "cb_type"

    const-string v2, "2"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    sget-object v0, Lcom/netease/mpay/oversea/s9;->L:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->h:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_2

    .line 12
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->i:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->j:Ljava/lang/String;

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->i:Ljava/lang/String;

    const-string v2, "bind_user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->j:Ljava/lang/String;

    const-string v2, "bind_user_token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->k:Ljava/lang/String;

    const-string v2, "origin_user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/vb$c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/vb$c;->l:Ljava/lang/String;

    const-string v2, "login_code"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p1
.end method
