.class public abstract Lcom/netease/mcount/d/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/netease/mcount/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/d/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mcount/d/a/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/mcount/f/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/d/a/a;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/mcount/d/a/a;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/d/a/a;->e:Lcom/netease/mcount/a/c;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "api_ver"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    const-string v1, "app_key"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netease/mcount/d/a/a;->d:Ljava/lang/String;

    const-string v1, "device_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/d/a/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mcount/a/c;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mcount/a/c;->i:Ljava/lang/String;

    const-string v2, "app_unique_id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, v0, Lcom/netease/mcount/a/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/netease/mcount/a/c;->j:Ljava/lang/String;

    const-string v2, "app_channel"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, v0, Lcom/netease/mcount/a/c;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/netease/mcount/a/c;->k:Ljava/lang/String;

    const-string v1, "login_channel"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "sdk_version"

    const-string v1, "a1.6.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method protected abstract b()I
.end method

.method protected c()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mcount/d/a/a;->e:Lcom/netease/mcount/a/c;

    invoke-virtual {v1}, Lcom/netease/mcount/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mcount/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mcount/d/a/a;->b()I

    move-result v1
    :try_end_0
    .catch Lcom/netease/mcount/c/b$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "fetch: "

    const/16 v3, 0x7530

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/d/a/a;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mcount/c/d;

    invoke-virtual {p0}, Lcom/netease/mcount/d/a/a;->b()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/mcount/d/a/a;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/netease/mcount/c/d;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/netease/mcount/c/d;->b(I)Lcom/netease/mcount/c/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mcount/c/d;->a(I)Lcom/netease/mcount/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mcount/c/b;->a(Lcom/netease/mcount/c/d;)Lcom/netease/mcount/c/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mcount/d/a/a;->c()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v4, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mcount/d/a/a;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mcount/d/a/a;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2, v1, v3, v3}, Lcom/netease/mcount/c/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/c/b$b;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netease/mcount/d/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/d/a/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch resp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mcount/c/b$b;->b:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/netease/mcount/c/b$b;->a:I

    invoke-static {v1}, Lcom/netease/mcount/f/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mcount/c/b$b;->b:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mcount/d/a;

    invoke-direct {v1, v0}, Lcom/netease/mcount/d/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/netease/mcount/d/a;

    invoke-direct {v0}, Lcom/netease/mcount/d/a;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/netease/mcount/c/b$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netease/mcount/d/a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/mcount/d/a;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netease/mcount/d/a;

    invoke-virtual {v0}, Lcom/netease/mcount/c/b$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/mcount/d/a;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected f()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
