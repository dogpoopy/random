.class public Lcom/netease/mpay/oversea/j1;
.super Lcom/netease/mpay/oversea/a;
.source "DataRecoveryRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/k1;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/netease/mpay/oversea/t1;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/t1;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/devices/dary"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/j1;->c:Lcom/netease/mpay/oversea/t1;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/j1;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/k1;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/k1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/j1;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/k1;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/k1;-><init>()V

    const-string v0, "data"

    .line 5
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/a;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "guest_account"

    .line 6
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/k1;->a:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "last_login_type"

    .line 7
    invoke-static {p2, v1, v0}, Lcom/netease/mpay/oversea/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/netease/mpay/oversea/k1;->b:I

    if-ne v1, v0, :cond_1

    .line 8
    iget-object v0, p1, Lcom/netease/mpay/oversea/k1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/k1;->b:I

    :cond_1
    const-string v0, "account_list"

    .line 12
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Lcom/netease/mpay/oversea/ca;->b(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/j1;->c:Lcom/netease/mpay/oversea/t1;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t1;->c:[B

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/e1;->c([B[B)[B

    move-result-object p2

    if-eqz p2, :cond_2

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/b3;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/a3;->b(Ljava/util/List;)Lcom/netease/mpay/oversea/a3;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/mpay/oversea/k1;->c:Lcom/netease/mpay/oversea/a3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 18
    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
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

    iget-object v1, p0, Lcom/netease/mpay/oversea/j1;->c:Lcom/netease/mpay/oversea/t1;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
