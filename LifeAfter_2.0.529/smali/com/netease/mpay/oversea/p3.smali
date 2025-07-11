.class public Lcom/netease/mpay/oversea/p3;
.super Lcom/netease/mpay/oversea/a;
.source "GameConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/q3;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/games/config"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/p3;->c:Landroid/app/Activity;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/k6;
    .locals 7

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/k6;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/k6;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    const-string v2, "minor_area_enable"

    .line 4
    invoke-static {p1, v2, v1}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/k6;->a:Z

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/h8;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/h8;-><init>()V

    const-string v2, "terms"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    const-string v4, "text"

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v6, Lcom/netease/mpay/oversea/d5;

    invoke-direct {v6, v5, v2}, Lcom/netease/mpay/oversea/d5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/netease/mpay/oversea/h8;->a:Lcom/netease/mpay/oversea/d5;

    :cond_0
    const-string v2, "privacy"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v3, Lcom/netease/mpay/oversea/d5;

    invoke-direct {v3, v2, p1}, Lcom/netease/mpay/oversea/d5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/netease/mpay/oversea/h8;->b:Lcom/netease/mpay/oversea/d5;

    .line 18
    :cond_1
    iput-object v1, v0, Lcom/netease/mpay/oversea/k6;->b:Lcom/netease/mpay/oversea/h8;

    :cond_2
    return-object v0
.end method

.method private a(Lcom/netease/mpay/oversea/q3;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/g6;)V
    .locals 25

    move-object/from16 v0, p2

    move-object/from16 v13, p3

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const-string v2, "api_type"

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v2, v4, v14

    const-string v2, "enable"

    .line 22
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v15, p0

    if-eqz v2, :cond_0

    iget-object v2, v15, Lcom/netease/mpay/oversea/p3;->c:Landroid/app/Activity;

    .line 23
    invoke-static {v2, v13, v4}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    aget-object v8, v4, v14

    const-string v2, "url"

    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const-string v6, "priority"

    .line 26
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "login_priority"

    .line 27
    invoke-virtual {v0, v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v5, "allow_bind_mode"

    .line 28
    invoke-virtual {v0, v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v5, "ban_register"

    .line 29
    invoke-virtual {v0, v5, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v5, "icon"

    .line 30
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "channel_icon"

    .line 31
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v11, "small"

    const-string v14, "color"

    const-string v1, "background"

    const-string v15, "text"

    if-eqz v5, :cond_1

    .line 34
    new-instance v23, Lcom/netease/mpay/oversea/q3$g;

    const/4 v13, 0x0

    .line 35
    invoke-virtual {v5, v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 36
    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 37
    invoke-virtual {v5, v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move/from16 v24, v12

    const-string v12, "bind_text"

    .line 38
    invoke-virtual {v5, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 39
    invoke-virtual {v5, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v22}, Lcom/netease/mpay/oversea/q3$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v23

    goto :goto_1

    :cond_1
    move/from16 v24, v12

    const/4 v5, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 43
    new-instance v12, Lcom/netease/mpay/oversea/q3$d;

    const/4 v13, 0x0

    .line 44
    invoke-virtual {v6, v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v6, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v10

    .line 46
    invoke-virtual {v6, v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 47
    invoke-virtual {v6, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v1, v14, v10, v6}, Lcom/netease/mpay/oversea/q3$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v12

    goto :goto_2

    :cond_2
    move/from16 v16, v10

    const/4 v13, 0x0

    move-object v6, v13

    .line 49
    :goto_2
    new-instance v11, Lcom/netease/mpay/oversea/h8;

    invoke-direct {v11}, Lcom/netease/mpay/oversea/h8;-><init>()V

    const-string v1, "terms"

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v12, Lcom/netease/mpay/oversea/d5;

    invoke-direct {v12, v10, v1}, Lcom/netease/mpay/oversea/d5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v11, Lcom/netease/mpay/oversea/h8;->a:Lcom/netease/mpay/oversea/d5;

    :cond_3
    const-string v1, "privacy"

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/netease/mpay/oversea/d5;

    invoke-direct {v2, v10, v1}, Lcom/netease/mpay/oversea/d5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v11, Lcom/netease/mpay/oversea/h8;->b:Lcom/netease/mpay/oversea/d5;

    .line 64
    :cond_4
    new-instance v13, Lcom/netease/mpay/oversea/q3$f;

    move-object v1, v13

    move-object/from16 v2, p3

    move/from16 v10, v16

    move/from16 v12, v24

    invoke-direct/range {v1 .. v12}, Lcom/netease/mpay/oversea/q3$f;-><init>(Lcom/netease/mpay/oversea/g6;ZLjava/lang/String;Lcom/netease/mpay/oversea/q3$g;Lcom/netease/mpay/oversea/q3$d;ZLjava/lang/String;IILcom/netease/mpay/oversea/h8;I)V

    const-string v1, "permissions"

    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    .line 72
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 74
    :cond_5
    invoke-virtual {v13, v3}, Lcom/netease/mpay/oversea/q3$f;->a(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 77
    invoke-virtual {v0, v1, v13}, Lcom/netease/mpay/oversea/q3;->a(Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/q3$f;)V

    :cond_7
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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/p3;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/q3;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/q3;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "game_config"

    move-object/from16 v2, p2

    .line 5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "text"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "account_type"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string v5, "server_list"

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v1, :cond_3

    const-string v6, "quick_login"

    .line 9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v1, :cond_4

    const-string v7, "security_email"

    .line 10
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-eqz v1, :cond_5

    const-string v8, "account_security_check"

    .line 11
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    if-eqz v1, :cond_6

    const-string v9, "jsbridge_whitelist"

    .line 12
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-eqz v1, :cond_7

    const-string v10, "urlscheme_whitelist"

    .line 13
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    if-eqz v1, :cond_8

    const-string v11, "hydra"

    .line 14
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    if-eqz v1, :cond_9

    const-string v12, "login_config"

    .line 15
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    .line 16
    :goto_9
    new-instance v13, Lcom/netease/mpay/oversea/q3;

    invoke-direct {v13}, Lcom/netease/mpay/oversea/q3;-><init>()V

    const/4 v14, 0x0

    const-string v15, "debug_mode"

    .line 17
    invoke-static {v1, v15, v14}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v13, Lcom/netease/mpay/oversea/q3;->b:Z

    const/4 v15, 0x1

    const-string v2, "verify_status"

    .line 18
    invoke-static {v1, v2, v15}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v13, Lcom/netease/mpay/oversea/q3;->c:Z

    const-string v2, "api_logout"

    .line 19
    invoke-static {v1, v2, v14}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v13, Lcom/netease/mpay/oversea/q3;->d:Z

    const-string v2, ""

    const-string v14, "region"

    .line 20
    invoke-static {v1, v14, v2}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/netease/mpay/oversea/q3;->J:Ljava/lang/String;

    const-string v14, "login_style"

    .line 21
    invoke-static {v1, v14, v15}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/netease/mpay/oversea/q3;->q:I

    const-string v14, "login_page_style_v2"

    .line 23
    invoke-static {v1, v14, v15}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/netease/mpay/oversea/q3;->r:I

    const-string v14, "persistence"

    .line 25
    invoke-static {v1, v14, v15}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Lcom/netease/mpay/oversea/q3;->s:I

    const-string v14, "filepicker_upload_url"

    .line 26
    invoke-static {v1, v14}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/netease/mpay/oversea/q3;->v:Ljava/lang/String;

    const-string v14, "force_bind_email_enable"

    .line 27
    invoke-static {v1, v14}, Lcom/netease/mpay/oversea/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/netease/mpay/oversea/q3;->z:Z

    if-eqz v1, :cond_b

    const-string v14, "platform_cross"

    .line 28
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_a

    :cond_a
    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v14, 0x1

    :goto_b
    iput-boolean v14, v13, Lcom/netease/mpay/oversea/q3;->B:Z

    if-eqz v1, :cond_c

    const-string v14, "link_account"

    .line 30
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    :goto_c
    if-eqz v1, :cond_d

    const-string v15, "guide_passport_config"

    .line 32
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_d

    :cond_d
    const/4 v15, 0x0

    :goto_d
    move-object/from16 v16, v6

    if-eqz v15, :cond_e

    const-string v6, "need_guide_passport"

    move-object/from16 v17, v10

    const/4 v10, 0x0

    .line 34
    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v13, Lcom/netease/mpay/oversea/q3;->E:Z

    goto :goto_e

    :cond_e
    move-object/from16 v17, v10

    :goto_e
    const-string v6, "channel_auto_login"

    .line 37
    invoke-static {v1, v6}, Lcom/netease/mpay/oversea/a;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_10

    const/4 v10, 0x5

    const-string v15, "guest_login_countdown"

    .line 39
    invoke-static {v6, v15, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    .line 40
    iget-object v15, v13, Lcom/netease/mpay/oversea/q3;->M:Lcom/netease/mpay/oversea/q3$c;

    invoke-virtual {v15, v10}, Lcom/netease/mpay/oversea/q3$c;->a(I)V

    const-string v10, "show_close_button"

    const/4 v15, 0x0

    .line 41
    invoke-static {v6, v10, v15}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    .line 42
    :goto_f
    iget-object v10, v13, Lcom/netease/mpay/oversea/q3;->M:Lcom/netease/mpay/oversea/q3$c;

    invoke-virtual {v10, v6}, Lcom/netease/mpay/oversea/q3$c;->a(Z)V

    :cond_10
    const-string v6, "enable"

    if-eqz v14, :cond_11

    .line 45
    invoke-static {v14, v6}, Lcom/netease/mpay/oversea/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v13, Lcom/netease/mpay/oversea/q3;->A:Z

    :cond_11
    const/4 v10, 0x0

    if-eqz v7, :cond_12

    .line 48
    invoke-static {v7, v6, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v13, Lcom/netease/mpay/oversea/q3;->g:Z

    const-string v14, "restore_type"

    const/4 v15, 0x1

    .line 49
    invoke-static {v7, v14, v15}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    iput v7, v13, Lcom/netease/mpay/oversea/q3;->h:I

    .line 51
    :cond_12
    iput-boolean v10, v13, Lcom/netease/mpay/oversea/q3;->f:Z

    if-eqz v11, :cond_14

    const-string v7, "api_key"

    .line 53
    invoke-static {v11, v7, v2}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/netease/mpay/oversea/q3;->w:Ljava/lang/String;

    const-string v7, "host"

    .line 54
    invoke-static {v11, v7, v2}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/netease/mpay/oversea/q3;->x:Ljava/lang/String;

    .line 55
    invoke-static {v11, v6, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v13, Lcom/netease/mpay/oversea/q3;->w:Ljava/lang/String;

    .line 56
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v13, Lcom/netease/mpay/oversea/q3;->x:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    const/4 v7, 0x1

    goto :goto_10

    :cond_13
    const/4 v7, 0x0

    :goto_10
    iput-boolean v7, v13, Lcom/netease/mpay/oversea/q3;->y:Z

    :cond_14
    if-eqz v12, :cond_17

    const-string v7, "bc_session"

    const/4 v10, 0x0

    .line 59
    invoke-static {v12, v7, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v13, Lcom/netease/mpay/oversea/q3;->C:Z

    const-string v7, "show_all_bound_accounts"

    .line 60
    invoke-static {v12, v7, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v13, Lcom/netease/mpay/oversea/q3;->D:Z

    const-string v7, "privacy_text"

    .line 61
    invoke-static {v12, v7, v2}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/netease/mpay/oversea/q3;->G:Ljava/lang/String;

    const-string v2, "new_privacy_mode"

    .line 62
    invoke-static {v12, v2, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v13, Lcom/netease/mpay/oversea/q3;->H:I

    const-string v2, "need_device_recovery"

    .line 63
    invoke-static {v12, v2, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v7, v2, :cond_15

    const/4 v2, 0x1

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    :goto_11
    iput-boolean v2, v13, Lcom/netease/mpay/oversea/q3;->I:Z

    const-string v2, "recovery_account_list"

    .line 64
    invoke-static {v12, v2, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    if-ne v7, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_12

    :cond_16
    const/4 v2, 0x0

    :goto_12
    iput-boolean v2, v13, Lcom/netease/mpay/oversea/q3;->K:Z

    const-string v2, "recovery_account_cnt"

    .line 65
    invoke-static {v12, v2, v10}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v13, Lcom/netease/mpay/oversea/q3;->L:I

    :cond_17
    if-eqz v3, :cond_18

    .line 68
    new-instance v2, Lcom/netease/mpay/oversea/q3$e;

    const-string v7, "bind_user_description"

    .line 69
    invoke-static {v3, v7}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v7, "switch_account_description"

    .line 70
    invoke-static {v3, v7}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v7, "load_user_confirm"

    .line 71
    invoke-static {v3, v7}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v7, "switch_other_accounts"

    .line 72
    invoke-static {v3, v7}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v7, "switch_recent_accounts"

    .line 73
    invoke-static {v3, v7}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v23}, Lcom/netease/mpay/oversea/q3$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v13, Lcom/netease/mpay/oversea/q3;->a:Lcom/netease/mpay/oversea/q3$e;

    :cond_18
    if-eqz v1, :cond_19

    const-string v2, "minor_config"

    .line 76
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_13

    :cond_19
    const/4 v2, 0x0

    :goto_13
    invoke-direct {v0, v2}, Lcom/netease/mpay/oversea/p3;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/k6;

    move-result-object v2

    iput-object v2, v13, Lcom/netease/mpay/oversea/q3;->j:Lcom/netease/mpay/oversea/k6;

    if-eqz v1, :cond_1a

    const-string v2, "minor_v2_config"

    .line 77
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_14

    :cond_1a
    const/4 v2, 0x0

    :goto_14
    invoke-static {v2}, Lcom/netease/mpay/oversea/l6;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/l6;

    move-result-object v1

    iput-object v1, v13, Lcom/netease/mpay/oversea/q3;->k:Lcom/netease/mpay/oversea/l6;

    if-eqz v8, :cond_1b

    const/4 v1, 0x0

    .line 80
    invoke-static {v8, v6, v1}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v13, Lcom/netease/mpay/oversea/q3;->F:Z

    :cond_1b
    if-eqz v4, :cond_22

    .line 84
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_15

    :cond_1c
    const-string v7, "ly_passport"

    .line 90
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "nt_passport"

    .line 91
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "enyi_passport"

    .line 92
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_16

    :cond_1d
    const/4 v7, 0x1

    goto :goto_17

    :cond_1e
    :goto_16
    const/4 v7, 0x1

    .line 93
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_15

    .line 97
    :cond_1f
    :goto_17
    invoke-static {v2}, Lcom/netease/mpay/oversea/g6;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    .line 98
    sget-object v8, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v8, :cond_20

    goto :goto_15

    .line 99
    :cond_20
    invoke-direct {v0, v13, v3, v2}, Lcom/netease/mpay/oversea/p3;->a(Lcom/netease/mpay/oversea/q3;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/g6;)V

    goto :goto_15

    :cond_21
    const-string v1, "unbind_account"

    .line 101
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v13, Lcom/netease/mpay/oversea/q3;->e:Z

    .line 106
    :cond_22
    invoke-virtual {v13}, Lcom/netease/mpay/oversea/q3;->b()V

    if-eqz v5, :cond_24

    .line 108
    iget-object v1, v13, Lcom/netease/mpay/oversea/q3;->l:Lcom/netease/mpay/oversea/c2;

    const-string v2, "expire"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netease/mpay/oversea/c2;->b:J

    .line 109
    iget-object v1, v13, Lcom/netease/mpay/oversea/q3;->l:Lcom/netease/mpay/oversea/c2;

    const-string v2, "version"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/mpay/oversea/c2;->c:Ljava/lang/String;

    const-string v1, "domains"

    .line 110
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_24

    .line 114
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_19

    .line 116
    :cond_23
    iget-object v5, v13, Lcom/netease/mpay/oversea/q3;->l:Lcom/netease/mpay/oversea/c2;

    iget-object v5, v5, Lcom/netease/mpay/oversea/c2;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_24
    if-eqz v9, :cond_26

    .line 122
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_26

    .line 124
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_1b

    .line 126
    :cond_25
    iget-object v4, v13, Lcom/netease/mpay/oversea/q3;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_26
    if-eqz v17, :cond_29

    .line 131
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_28

    move-object/from16 v10, v17

    .line 133
    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_1d

    .line 135
    :cond_27
    iget-object v4, v13, Lcom/netease/mpay/oversea/q3;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v10

    goto :goto_1c

    .line 137
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheme whitelist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/netease/mpay/oversea/q3;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    :cond_29
    if-eqz v16, :cond_2a

    move-object/from16 v2, v16

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "show_role"

    .line 143
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 144
    new-instance v2, Lcom/netease/mpay/oversea/q3$h;

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/oversea/q3$h;-><init>(ZZ)V

    iput-object v2, v13, Lcom/netease/mpay/oversea/q3;->i:Lcom/netease/mpay/oversea/q3$h;

    :cond_2a
    return-object v13
.end method

.method public b(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q;->a()Lcom/netease/mpay/oversea/n6;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/netease/mpay/oversea/n6;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/netease/mpay/oversea/n6;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
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

    .line 3
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "google_login_version"

    invoke-static {}, Lcom/netease/mpay/oversea/h6;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 6
    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
