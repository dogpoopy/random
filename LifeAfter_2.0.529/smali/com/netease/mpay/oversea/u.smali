.class public Lcom/netease/mpay/oversea/u;
.super Lcom/netease/mpay/oversea/a9;
.source "BCSessionResponse.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/u;->a:Ljava/util/List;

    .line 6
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 23

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "bound_account_types"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lcom/netease/mpay/oversea/u;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p0

    .line 6
    :try_start_1
    iget-object v15, v3, Lcom/netease/mpay/oversea/u;->a:Ljava/util/List;

    new-instance v14, Lcom/netease/mpay/oversea/e6;

    const-string v4, "id"

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "account"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "login_token"

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "token"

    .line 10
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "security_email"

    .line 11
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const-string v4, "bound_account_ids"

    .line 13
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v4, "quick_login_enable"

    .line 16
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string v4, "minor_status"

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string v4, "iso_code"

    .line 18
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "age_status"

    .line 19
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v4, "need_bind_email"

    .line 20
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const-string v4, "device_status"

    .line 21
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object v4, v14

    move-object/from16 v21, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v2

    invoke-direct/range {v4 .. v19}, Lcom/netease/mpay/oversea/e6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZILjava/lang/String;III)V

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v3, p0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v3, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 41
    :goto_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/y5;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/netease/mpay/oversea/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/e6;

    .line 44
    iget-object v3, v2, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v3, v2, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/netease/mpay/oversea/g6;

    .line 48
    invoke-virtual {v9}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v13, Lcom/netease/mpay/oversea/y5$b;

    iget-object v5, v2, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    iget-object v7, v2, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    iget-object v8, v2, Lcom/netease/mpay/oversea/e6;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    iget-object v11, v2, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    iget-boolean v4, v2, Lcom/netease/mpay/oversea/e6;->k:Z

    .line 53
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v4, v2, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    .line 54
    invoke-virtual {v13, v4}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget v5, v2, Lcom/netease/mpay/oversea/e6;->n:I

    .line 55
    invoke-virtual {v4, v5}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget v5, v2, Lcom/netease/mpay/oversea/e6;->m:I

    .line 56
    invoke-virtual {v4, v5}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget-object v5, v2, Lcom/netease/mpay/oversea/e6;->s:Ljava/lang/String;

    .line 57
    invoke-virtual {v4, v5}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget v2, v2, Lcom/netease/mpay/oversea/e6;->q:I

    .line 58
    invoke-virtual {v4, v2}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/y5$b;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
