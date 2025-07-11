.class public Lcom/netease/mpay/oversea/c6;
.super Lcom/netease/mpay/oversea/a;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/e6;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:Lcom/netease/mpay/oversea/u5;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/netease/mpay/oversea/s9;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/u5;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p2, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/g6;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/c6;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/u5;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/u5;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    if-eqz p2, :cond_1

    .line 5
    iget-object p3, p2, Lcom/netease/mpay/oversea/u5;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/c6;->f:Ljava/lang/String;

    .line 6
    iget-object p3, p2, Lcom/netease/mpay/oversea/u5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/c6;->e:Ljava/lang/String;

    .line 7
    iget-object p3, p2, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    iput-object p3, p0, Lcom/netease/mpay/oversea/c6;->g:Lcom/netease/mpay/oversea/s9;

    .line 8
    iput-object p1, p0, Lcom/netease/mpay/oversea/c6;->d:Ljava/lang/String;

    .line 9
    iget-object p1, p2, Lcom/netease/mpay/oversea/u5;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/c6;->h:Ljava/lang/String;

    const-string p1, "LoginQuest--> LoginData not null "

    .line 10
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoginQuest--> devid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/c6;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/mpay/oversea/e6;
    .locals 2

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 50
    invoke-static {p0}, Lcom/netease/mpay/oversea/c6;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/e6;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/e6;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "user"

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "bound_account_types"

    .line 3
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/a;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->a()V

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 9
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v5

    .line 10
    sget-object v6, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v6, v5, :cond_0

    .line 11
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "bound_account_ids"

    .line 18
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/a;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object v10, v2

    const-string v2, "confirm_message"

    .line 21
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "notify_guest_bind"

    .line 22
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "unknown_bind_guide"

    .line 23
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "minor_status"

    .line 24
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v5, 0x2

    const-string v6, "age_status"

    .line 25
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    const-string v5, "need_bind_email"

    .line 26
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const-string v5, "device_status"

    .line 27
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    const-string v3, ""

    const-string v5, "iso_code"

    .line 28
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "restore_tips"

    .line 29
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "security_email"

    .line 31
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object v8, v3

    .line 36
    new-instance v13, Lcom/netease/mpay/oversea/e6;

    const-string v3, "id"

    .line 37
    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "account"

    .line 38
    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "login_token"

    .line 39
    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "token"

    .line 40
    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 42
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "quick_login_enable"

    .line 44
    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    move-object v3, v13

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v11

    move v11, v2

    move-object v2, v13

    move v13, v1

    invoke-direct/range {v3 .. v18}, Lcom/netease/mpay/oversea/e6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZILjava/lang/String;III)V

    .line 46
    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/e6;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/e6;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/c6;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/e6;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/e6;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/netease/mpay/oversea/c6;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/e6;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    iget-object p2, p2, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/e6;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/e6;

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

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->d:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginQuest--> devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->g:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/g6;->L:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v0, :cond_1

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->e:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->f:Ljava/lang/String;

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->e:Ljava/lang/String;

    const-string v2, "bind_user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->f:Ljava/lang/String;

    const-string v2, "bind_user_token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->g:Lcom/netease/mpay/oversea/s9;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->g:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    const-string v2, "scene"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->h:Ljava/lang/String;

    const-string v2, "origin_user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/h9;->n:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 23
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "game_iso_code"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u5;->h:Ljava/lang/String;

    const-string v2, "iso_code"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c6;->c:Lcom/netease/mpay/oversea/u5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u5;->g:Ljava/lang/String;

    const-string v2, "birthday"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p1
.end method
