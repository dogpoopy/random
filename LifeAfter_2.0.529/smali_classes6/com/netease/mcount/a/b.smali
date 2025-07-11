.class public Lcom/netease/mcount/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:J

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Ljava/lang/String;

.field private final m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mcount/a/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mcount/a/b;->m:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/mcount/a/b;->a:Z

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/netease/mcount/a/b;->b:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/mcount/a/b;->c:Z

    const/16 p1, 0x14

    iput p1, p0, Lcom/netease/mcount/a/b;->d:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/netease/mcount/a/b;->e:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/netease/mcount/a/b;->f:I

    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/netease/mcount/a/b;->g:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/netease/mcount/a/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/netease/mcount/b;->DISABLED:Lcom/netease/mcount/b;

    invoke-virtual {v0}, Lcom/netease/mcount/b;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mcount/a/b;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/mcount/a/b;->k:J

    iput-object p1, p0, Lcom/netease/mcount/a/b;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/mcount/a/b;->m:I

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mcount/a/b;->a:Z

    const-string v0, "upload_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netease/mcount/a/b;->b:J

    const-string v0, "upload_only_wifi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mcount/a/b;->c:Z

    const-string v0, "upload_batch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/mcount/a/b;->d:I

    const-string v0, "max_cache_items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/mcount/a/b;->e:I

    const-string v0, "max_items_one_round"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/mcount/a/b;->f:I

    const-string v0, "expire_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mcount/a/b;->g:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    const-string v0, "exclude_keys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "base_transaction_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mcount/a/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/netease/mcount/b;->DISABLED:Lcom/netease/mcount/b;

    invoke-virtual {v0}, Lcom/netease/mcount/b;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log_level"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mcount/a/b;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/mcount/a/b;->k:J

    const-string v0, "exclude_step_pattern"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/a/b;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p0, Lcom/netease/mcount/a/b;->a:Z

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/netease/mcount/a/b;->b:J

    const-string v3, "upload_interval"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/netease/mcount/a/b;->c:Z

    const-string v2, "upload_only_wifi"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget v1, p0, Lcom/netease/mcount/a/b;->d:I

    const-string v2, "upload_batch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/netease/mcount/a/b;->e:I

    const-string v2, "max_cache_items"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p0, Lcom/netease/mcount/a/b;->f:I

    const-string v2, "max_items_one_round"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/netease/mcount/a/b;->g:J

    const-string v3, "expire_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "exclude_keys"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mcount/a/b;->i:Ljava/lang/String;

    const-string v2, "base_transaction_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mcount/a/b;->j:Ljava/lang/String;

    const-string v2, "log_level"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mcount/a/b;->l:Ljava/lang/String;

    const-string v2, "exclude_step_pattern"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/netease/mcount/a/b;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
