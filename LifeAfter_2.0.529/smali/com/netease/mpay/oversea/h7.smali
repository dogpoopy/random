.class public Lcom/netease/mpay/oversea/h7;
.super Lcom/netease/mpay/oversea/a;
.source "PNGuestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Lcom/netease/mpay/oversea/e6;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/login/v2/channel_guest"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/h7;->c:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/h7;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/e6;

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

    return-object p1
.end method

.method protected c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
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
    invoke-static {p1}, Lcom/netease/mpay/oversea/ib;->a(Landroid/content/Context;)Lcom/netease/mpay/oversea/ib;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h7;->c:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object v2, p1, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    const-string v3, "account"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object v2, p1, Lcom/netease/mpay/oversea/ib;->b:Ljava/lang/String;

    const-string v3, "session_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "channel_type"

    const-string v3, "pn"

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->o()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    const-string v3, "udid"

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ib;->f:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
