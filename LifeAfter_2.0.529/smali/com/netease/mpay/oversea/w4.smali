.class public Lcom/netease/mpay/oversea/w4;
.super Lcom/netease/mpay/oversea/a;
.source "LVUConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/x4;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/oversea/s9;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/kid_protect/configs"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/w4;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/w4;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/w4;->e:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/w4;->f:Lcom/netease/mpay/oversea/s9;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/w4;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/x4;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/x4;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "config"

    .line 1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    const-string v3, "privacy_guide_text"

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "default_birthday"

    .line 11
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "birth_mode"

    .line 12
    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "show_region_select"

    .line 13
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "use_default_birthday"

    .line 14
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "need_reconfirm"

    .line 15
    invoke-virtual {v1, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    move v11, v10

    move v10, v8

    move-object v8, v4

    move/from16 v21, v5

    move-object v5, v3

    move/from16 v3, v21

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    const-string v4, "age_type"

    const-string v12, "text"

    const-string v13, "key"

    const-string v14, "name"

    const-string v15, "iso_code"

    const/4 v2, 0x2

    const-string v9, ""

    move-object/from16 v16, v8

    if-ne v3, v2, :cond_a

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "region_list"

    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 21
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 22
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_1

    move-object/from16 p1, v1

    move/from16 v17, v11

    :goto_2
    move-object/from16 v20, v12

    move-object/from16 v19, v13

    move-object/from16 v18, v14

    goto/16 :goto_6

    :cond_1
    move-object/from16 p1, v1

    .line 24
    new-instance v1, Lcom/netease/mpay/oversea/w8;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/w8;-><init>()V

    move/from16 v17, v11

    .line 25
    invoke-virtual {v8, v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/netease/mpay/oversea/w8;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v8, v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/netease/mpay/oversea/w8;->b:Ljava/lang/String;

    const-string v11, "age_stage_list"

    .line 28
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v18, v14

    const/4 v11, 0x0

    .line 30
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_5

    .line 31
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_3

    move-object/from16 p2, v8

    :goto_4
    move-object/from16 v20, v12

    move-object/from16 v19, v13

    goto :goto_5

    :cond_3
    move-object/from16 p2, v8

    .line 33
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v19, v13

    .line 35
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v12

    const/4 v12, 0x1

    .line 36
    invoke-virtual {v14, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 37
    new-instance v12, Lcom/netease/mpay/oversea/w8$a;

    invoke-direct {v12, v8, v13, v14}, Lcom/netease/mpay/oversea/w8$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    iget-object v8, v1, Lcom/netease/mpay/oversea/w8;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p2

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    goto :goto_3

    :cond_5
    move-object/from16 v20, v12

    move-object/from16 v19, v13

    .line 40
    iget-object v8, v1, Lcom/netease/mpay/oversea/w8;->a:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v8, Lcom/netease/mpay/oversea/d1;

    iget-object v11, v1, Lcom/netease/mpay/oversea/w8;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/mpay/oversea/w8;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v1}, Lcom/netease/mpay/oversea/d1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    move/from16 v11, v17

    move-object/from16 v14, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    goto/16 :goto_1

    :cond_6
    move/from16 v17, v11

    .line 44
    new-instance v1, Lcom/netease/mpay/oversea/x4;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    move-object v2, v1

    move-object v4, v5

    move v5, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/x4;-><init>(ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V

    if-ne v10, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 45
    :goto_8
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/x4;->b(Z)Lcom/netease/mpay/oversea/x4;

    move-result-object v0

    move/from16 v11, v17

    if-ne v11, v8, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    .line 46
    :goto_9
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/x4;->a(Z)Lcom/netease/mpay/oversea/x4;

    move-result-object v0

    return-object v0

    :cond_a
    move-object/from16 v20, v12

    move-object/from16 v19, v13

    move-object/from16 v18, v14

    const/4 v8, 0x3

    if-ne v3, v8, :cond_12

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    new-instance v2, Lcom/netease/mpay/oversea/w8;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/w8;-><init>()V

    const-string v8, "curr_region_info"

    .line 50
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 52
    invoke-virtual {v8, v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/netease/mpay/oversea/w8;->a:Ljava/lang/String;

    move-object/from16 v12, v18

    .line 53
    invoke-virtual {v8, v12, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/netease/mpay/oversea/w8;->b:Ljava/lang/String;

    :cond_b
    const-string v8, "age_detail_list"

    .line 55
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v8, 0x0

    .line 57
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_e

    .line 58
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_c

    move-object/from16 p1, v1

    move-object/from16 v12, v19

    :goto_b
    move-object/from16 v14, v20

    goto :goto_c

    :cond_c
    move-object/from16 v12, v19

    .line 60
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 61
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object/from16 p1, v1

    goto :goto_b

    :cond_d
    move-object/from16 v14, v20

    .line 62
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v1

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 64
    new-instance v1, Lcom/netease/mpay/oversea/w8$a;

    invoke-direct {v1, v13, v15, v9}, Lcom/netease/mpay/oversea/w8$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    iget-object v9, v2, Lcom/netease/mpay/oversea/w8;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v19, v12

    move-object/from16 v20, v14

    goto :goto_a

    .line 68
    :cond_e
    iget-object v1, v2, Lcom/netease/mpay/oversea/w8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Lcom/netease/mpay/oversea/d1;

    iget-object v4, v2, Lcom/netease/mpay/oversea/w8;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/oversea/w8;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/netease/mpay/oversea/d1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/netease/mpay/oversea/x4;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    const/4 v7, 0x1

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    :goto_d
    move-object v2, v1

    move-object v4, v5

    move v5, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/x4;-><init>(ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V

    if-ne v10, v8, :cond_10

    const/4 v0, 0x1

    goto :goto_e

    :cond_10
    const/4 v0, 0x0

    .line 71
    :goto_e
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/x4;->b(Z)Lcom/netease/mpay/oversea/x4;

    move-result-object v0

    if-ne v11, v8, :cond_11

    const/4 v1, 0x1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    .line 72
    :goto_f
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/x4;->a(Z)Lcom/netease/mpay/oversea/x4;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v1, "country_codes"

    .line 74
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v3, 0x0

    .line 76
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v8, v2, :cond_13

    const/4 v9, 0x0

    goto :goto_11

    .line 79
    :cond_13
    new-instance v8, Lcom/netease/mpay/oversea/d1;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v12, v4}, Lcom/netease/mpay/oversea/d1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_14
    const/4 v9, 0x0

    const-string v1, "ban_minor_update"

    .line 82
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "minor_mapping"

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_17

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 87
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_12

    .line 92
    :cond_15
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    const/4 v8, 0x0

    :goto_13
    if-nez v8, :cond_16

    goto :goto_12

    .line 96
    :cond_16
    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 99
    :cond_17
    new-instance v0, Lcom/netease/mpay/oversea/x4;

    const/4 v12, 0x1

    if-ne v7, v12, :cond_18

    const/4 v7, 0x1

    goto :goto_14

    :cond_18
    const/4 v7, 0x0

    :goto_14
    if-ne v1, v12, :cond_19

    const/4 v8, 0x1

    goto :goto_15

    :cond_19
    const/4 v8, 0x0

    :goto_15
    move-object v2, v0

    move-object v3, v6

    move-object/from16 v6, v16

    const/4 v1, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/netease/mpay/oversea/x4;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-ne v10, v12, :cond_1a

    const/4 v2, 0x1

    goto :goto_16

    :cond_1a
    const/4 v2, 0x0

    .line 102
    :goto_16
    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/x4;->b(Z)Lcom/netease/mpay/oversea/x4;

    move-result-object v0

    if-ne v11, v12, :cond_1b

    const/4 v1, 0x1

    .line 103
    :cond_1b
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/x4;->a(Z)Lcom/netease/mpay/oversea/x4;

    move-result-object v0

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

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/w4;->c:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/w4;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/w4;->e:Ljava/lang/String;

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/w4;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/w4;->d:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w4;->f:Lcom/netease/mpay/oversea/s9;

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    const-string v2, "scene"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method
