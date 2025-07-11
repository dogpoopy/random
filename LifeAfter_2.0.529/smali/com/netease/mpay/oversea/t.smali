.class public Lcom/netease/mpay/oversea/t;
.super Lcom/netease/mpay/oversea/a;
.source "BCSessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/u;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/l0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "/api/users/login/v2/bc_session"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/t;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/t;->d:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/t;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/u;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/u;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lorg/json/JSONObject;

    const-string p1, "{\n    \"alert_type\": 0,\n    \"code\": 0,\n    \"msg\": \"ok\",\n    \"user_ls\": [\n        {\n            \"account\": \"bc|3605fb3bbf86b844ac383ec40b88545c-55d5d74feb3ececd\",\n            \"age_status\": 2,\n            \"bound_account_ids\": {\n                \"1\": [\n                    \"bc|3605fb3bbf86b844ac383ec40b88545c\"\n                ]\n            },\n            \"bound_account_types\": [\n                1\n            ],\n            \"id\": \"846457576\",\n            \"login_token\": \"2-login-ss-AQAAAAAAAAGDAAAAADJz6ugAAAAAXXJrpwAAAABkrM8n-eyJuIjogIjdlWkpQTXFRYlV6YiIsICJhdHAiOiAxLCAiZHQiOiAxfQ==-856192495d6bfd14c6f909a12d38fe75c044db35\",\n            \"minor_status\": 102,\n            \"need_bind_email\": 0,\n            \"quick_login_enable\": true,\n            \"token\": \"4-sdk-ss-AQAAAAAAAAGDAAAAADJz6ugAAAAAXXJrpwAAAABkrM8n-eyJhdHAiOiAxLCAiZHQiOiAxfQ==-dab634c0966924a1dda81cd043fa6a146ece4059\"\n        }\n    ]\n}"

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string p1, "user_ls"

    .line 28
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/a;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/netease/mpay/oversea/u;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/u;-><init>(Lorg/json/JSONArray;)V

    return-object p2
.end method

.method protected c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
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

    iget-object v1, p0, Lcom/netease/mpay/oversea/t;->c:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/t;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/l0;

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "bc_uid"

    .line 7
    iget-object v5, v2, Lcom/netease/mpay/oversea/l0;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bc_session"

    .line 8
    iget-object v2, v2, Lcom/netease/mpay/oversea/l0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bc_data"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
