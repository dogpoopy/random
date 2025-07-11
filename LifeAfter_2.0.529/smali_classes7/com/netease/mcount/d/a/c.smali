.class public Lcom/netease/mcount/d/a/c;
.super Lcom/netease/mcount/d/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mcount/d/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mcount/d/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mcount/d/a/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/netease/mcount/c/a;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/netease/mcount/a/b;
    .locals 7

    new-instance v0, Lcom/netease/mcount/a/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/netease/mcount/a/b;-><init>(I)V

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/mcount/a/b;->a:Z

    const-string v1, "upload_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, v0, Lcom/netease/mcount/a/b;->b:J

    const-string v1, "upload_only_wifi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/mcount/a/b;->c:Z

    const-string v1, "upload_batch"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mcount/a/b;->d:I

    const-string v1, "max_cache_items"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mcount/a/b;->e:I

    const-string v1, "max_items_one_round"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mcount/a/b;->f:I

    const-string v1, "expire_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/mcount/a/b;->g:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    const-string v1, "exclude_keys"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, v0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "base_transaction_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mcount/a/b;->i:Ljava/lang/String;

    sget-object v1, Lcom/netease/mcount/b;->DISABLED:Lcom/netease/mcount/b;

    invoke-virtual {v1}, Lcom/netease/mcount/b;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_level"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mcount/a/b;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-string v3, "timestamp"

    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/mcount/a/b;->k:J

    const-string v1, "exclude_step_pattern"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/mcount/a/b;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "/config"

    return-object v0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mcount/c/a;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api_ver"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mcount/c/a;

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->b:Ljava/lang/String;

    const-string v3, "app_key"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v1, v1, Lcom/netease/mcount/a/c;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mcount/c/a;

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v2, v2, Lcom/netease/mcount/a/c;->h:Ljava/lang/String;

    const-string v3, "sub_app_key"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/netease/mcount/c/a;

    const-string v2, "sdk_version"

    const-string v3, "a1.6.0"

    invoke-direct {v1, v2, v3}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mcount/c/a;

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->d:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v1, v1, Lcom/netease/mcount/a/c;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mcount/c/a;

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v2, v2, Lcom/netease/mcount/a/c;->i:Ljava/lang/String;

    const-string v3, "app_unique_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/netease/mcount/c/a;

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v2, v2, Lcom/netease/mcount/a/c;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v2, v2, Lcom/netease/mcount/a/c;->j:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object v2

    const-string v3, "APP_CHANNEL"

    invoke-virtual {v2, v3}, Lcom/netease/mcount/ClientLogAgent;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "app_channel"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mcount/c/a;

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v2, v2, Lcom/netease/mcount/a/c;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/netease/mcount/d/a/c;->e:Lcom/netease/mcount/a/c;

    iget-object v2, v2, Lcom/netease/mcount/a/c;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object v2

    const-string v3, "LOGIN_CHANNEL"

    invoke-virtual {v2, v3}, Lcom/netease/mcount/ClientLogAgent;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "login_channel"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netease/mcount/c/a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gdpr"

    invoke-direct {v1, v3, v2}, Lcom/netease/mcount/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/netease/mcount/d/a/c;->a(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public g()Lcom/netease/mcount/a/b;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mcount/d/a/c;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mcount/d/a/c;->b(Lorg/json/JSONObject;)Lcom/netease/mcount/a/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netease/mcount/d/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/mcount/d/a;-><init>(Ljava/lang/String;)V

    throw v1
.end method
