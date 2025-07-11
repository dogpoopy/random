.class public Lcom/netease/mpay/oversea/trackers/a$i;
.super Lcom/netease/mpay/oversea/trackers/a;
.source "TraceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/trackers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "user_action"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/netease/mpay/oversea/trackers/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/trackers/a;->d:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/trackers/a;
    .locals 2

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->e:Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "event_name"

    .line 3
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "page"

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "button"

    .line 6
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/trackers/a;->e:Lorg/json/JSONObject;

    const-string v0, "event_data"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/a;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method
