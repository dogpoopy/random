.class public Lcom/netease/mpay/oversea/c3;
.super Ljava/lang/Object;
.source "ExLoginInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/t8;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c3;->a:Ljava/lang/String;

    .line 4
    iget v0, p1, Lcom/netease/mpay/oversea/t8;->b:I

    iput v0, p0, Lcom/netease/mpay/oversea/c3;->b:I

    .line 5
    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c3;->c:Ljava/lang/String;

    .line 6
    iget-wide v0, p1, Lcom/netease/mpay/oversea/t8;->a:J

    iput-wide v0, p0, Lcom/netease/mpay/oversea/c3;->d:J

    .line 8
    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c3;->e:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c3;->f:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/netease/mpay/oversea/t8;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/c3;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/c3;
    .locals 3

    .line 12
    new-instance v0, Lcom/netease/mpay/oversea/c3;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/c3;-><init>()V

    :try_start_0
    const-string v1, "uid"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/c3;->a:Ljava/lang/String;

    const-string v1, "type"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mpay/oversea/c3;->b:I

    const-string v1, "clientUsername"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/c3;->c:Ljava/lang/String;

    const-string v1, "lastLoginTimestamp"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/mpay/oversea/c3;->d:J

    const-string v1, "account"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/c3;->e:Ljava/lang/String;

    const-string v1, "roleName"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/c3;->f:Ljava/lang/String;

    const-string v1, "serverName"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/mpay/oversea/c3;->g:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uid"

    .line 3
    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 4
    iget v2, p0, Lcom/netease/mpay/oversea/c3;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "clientUsername"

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastLoginTimestamp"

    .line 6
    iget-wide v2, p0, Lcom/netease/mpay/oversea/c3;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "account"

    .line 7
    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "roleName"

    .line 8
    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverName"

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    check-cast p1, Lcom/netease/mpay/oversea/c3;

    .line 5
    iget v2, p0, Lcom/netease/mpay/oversea/c3;->b:I

    iget v3, p1, Lcom/netease/mpay/oversea/c3;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/c3;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/c3;->c:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/c3;->e:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/c3;->f:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/c3;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mpay/oversea/c3;->g:Ljava/lang/String;

    .line 11
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExLoginInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/c3;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
