.class public Lcom/netease/mpay/oversea/zb;
.super Lcom/netease/mpay/oversea/a;
.source "UserInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/ac;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/games/user/info"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/zb;->f:Z

    .line 9
    iput-object p1, p0, Lcom/netease/mpay/oversea/zb;->c:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/netease/mpay/oversea/zb;->d:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/netease/mpay/oversea/zb;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/f8;)Lcom/netease/mpay/oversea/zb;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/zb;->f:Z

    .line 3
    iget-object v0, p1, Lcom/netease/mpay/oversea/f8;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/zb;->h:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/netease/mpay/oversea/f8;->d:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/zb;->g:I

    .line 5
    iget-object p1, p1, Lcom/netease/mpay/oversea/f8;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/zb;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/zb;->f:Z

    :goto_0
    return-object p0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/zb;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/ac;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, "user"

    .line 1
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "bound_accounts"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 5
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v2, Lcom/netease/mpay/oversea/ac;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/ac;-><init>()V

    const-string v3, ""

    if-eqz p1, :cond_2

    const-string v4, "security_email"

    .line 7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/mpay/oversea/ac;->e:Ljava/lang/String;

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    iput-object v3, v2, Lcom/netease/mpay/oversea/ac;->e:Ljava/lang/String;

    :goto_2
    if-eqz p1, :cond_3

    const-string v3, "link_account_info"

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, p2

    :goto_3
    if-eqz p1, :cond_4

    const/4 v3, -0x1

    const-string v4, "status"

    .line 17
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "msg"

    .line 18
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v4, Lcom/netease/mpay/oversea/ac$a;

    invoke-direct {v4, v3, p1}, Lcom/netease/mpay/oversea/ac$a;-><init>(ILjava/lang/String;)V

    iput-object v4, v2, Lcom/netease/mpay/oversea/ac;->f:Lcom/netease/mpay/oversea/ac$a;

    :cond_4
    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 23
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 27
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "nickname"

    .line 33
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, p2

    :goto_5
    const/4 v7, 0x0

    if-eqz v5, :cond_6

    const-string v8, "email_verified"

    .line 34
    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-eqz v5, :cond_7

    const-string v9, "passport_type"

    .line 35
    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    if-eqz v5, :cond_8

    const-string v10, "ids"

    .line 36
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    goto :goto_8

    :cond_8
    move-object v5, p2

    :goto_8
    if-eqz v5, :cond_9

    .line 38
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v7, v3, :cond_9

    .line 40
    iget-object v3, v2, Lcom/netease/mpay/oversea/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 44
    :cond_9
    invoke-static {v4}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v3

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/oversea/ac$b;

    invoke-direct {v5, v6, v8, v9}, Lcom/netease/mpay/oversea/ac$b;-><init>(Ljava/lang/String;ZI)V

    .line 46
    invoke-virtual {v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Lcom/netease/mpay/oversea/ac$b;)V

    goto :goto_4

    :catchall_0
    nop

    goto :goto_4

    :cond_a
    return-object v2
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

    iget-object v1, p0, Lcom/netease/mpay/oversea/zb;->c:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/zb;->d:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/zb;->e:Ljava/lang/String;

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/zb;->f:Z

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget v1, p0, Lcom/netease/mpay/oversea/zb;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias_type"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/zb;->h:Ljava/lang/String;

    const-string v2, "auth_code"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/zb;->i:Ljava/lang/String;

    const-string v2, "player_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method
