.class public Lcom/netease/mcount/d/b;
.super Lcom/netease/mcount/d/a/a;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/mcount/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mcount/d/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object p1

    const-string p2, "JF_GAMEID"

    invoke-virtual {p1, p2}, Lcom/netease/mcount/ClientLogAgent;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/d/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object p1

    const-string p2, "JF_LOG_KEY"

    invoke-virtual {p1, p2}, Lcom/netease/mcount/ClientLogAgent;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/d/b;->g:Ljava/lang/String;

    return-void
.end method

.method private g()Ljava/util/HashMap;
    .locals 5
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

    const-string v1, "application/json"

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mcount/ClientLogAgent;->getTransId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netease/mcount/ClientLogAgent;->getInst()Lcom/netease/mcount/ClientLogAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mcount/ClientLogAgent;->getUniTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "transid=%s,uni_transaction_id=%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-TASK-ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "client"

    aput-object v2, v0, v1

    const-string v1, "/%s/sdk/clientlog_batch"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mcount/b/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netease/mcount/d/b;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/mcount/d/b;->d()Lorg/json/JSONObject;

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/netease/mcount/d/b;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/mcount/d/b;->e:Lcom/netease/mcount/a/c;

    invoke-static {v1, v2}, Lcom/netease/mcount/b/a;->a(Ljava/util/List;Lcom/netease/mcount/a/c;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netease/mcount/d/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/d/b;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postEvents : size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; events = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gameid"

    iget-object v3, p0, Lcom/netease/mcount/d/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method protected d()Lorg/json/JSONObject;
    .locals 8

    iget-object v0, p0, Lcom/netease/mcount/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/mcount/d/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mcount/clientlog/a;->a()Lcom/netease/mcount/clientlog/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mcount/clientlog/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mcount/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mcount/d/b;->b()I

    move-result v1
    :try_end_0
    .catch Lcom/netease/mcount/d/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netease/mcount/c/b$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "fetch: "

    const/16 v3, 0x7530

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/netease/mcount/d/b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/d/b;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mcount/c/d;

    invoke-virtual {p0}, Lcom/netease/mcount/d/b;->b()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/mcount/d/b;->e()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v0, v4, v5}, Lcom/netease/mcount/c/d;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/netease/mcount/c/d;->b(I)Lcom/netease/mcount/c/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mcount/c/d;->a(I)Lcom/netease/mcount/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mcount/c/b;->a(Lcom/netease/mcount/c/d;)Lcom/netease/mcount/c/b$b;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mcount/d/b;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/mcount/d/b;->g()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "Gas3-Clientlog-Signature"

    iget-object v6, p0, Lcom/netease/mcount/d/b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/mcount/f/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/mcount/d/b;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mcount/d/b;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v3, v3}, Lcom/netease/mcount/c/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/c/b$b;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netease/mcount/d/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/d/b;->c:Ljava/lang/String;

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

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mcount/c/b$b;->b:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mcount/d/a;

    const-string v3, "code:%s, status:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netease/mcount/d/a;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Lcom/netease/mcount/d/a;

    invoke-direct {v0}, Lcom/netease/mcount/d/a;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/netease/mcount/d/a; {:try_start_1 .. :try_end_1} :catch_2
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

    :catch_2
    move-exception v0

    throw v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/netease/mcount/d/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/d/b;->c:Ljava/lang/String;

    const-string v2, "mGameId or mJfLogKey is isEmpty, ignore this request."

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method
