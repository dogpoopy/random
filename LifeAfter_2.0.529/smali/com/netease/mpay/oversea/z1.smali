.class public Lcom/netease/mpay/oversea/z1;
.super Ljava/lang/Object;
.source "DeviceRestoreData.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/z1;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/z1;->b:Ljava/util/List;

    return-void
.end method

.method public static a([B)Lcom/netease/mpay/oversea/z1;
    .locals 3

    if-nez p0, :cond_0

    .line 5
    new-instance p0, Lcom/netease/mpay/oversea/z1;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/z1;-><init>()V

    return-object p0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/u2;->a([B)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/netease/mpay/oversea/u2;->a(Ljava/util/HashMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/z1;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/z1;-><init>()V

    const-string v1, "0"

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/z1;->a:Ljava/lang/String;

    .line 17
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    :goto_0
    invoke-static {v1}, Lcom/netease/mpay/oversea/b3;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/netease/mpay/oversea/z1;->b:Ljava/util/List;

    return-object v0

    .line 22
    :cond_2
    :goto_1
    new-instance p0, Lcom/netease/mpay/oversea/z1;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/z1;-><init>()V

    return-object p0

    .line 23
    :catch_1
    new-instance p0, Lcom/netease/mpay/oversea/z1;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/z1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a()[B
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/z1;->a:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/z1;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b3;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/u2;->a(Ljava/io/Serializable;)[B

    move-result-object v0

    return-object v0
.end method
