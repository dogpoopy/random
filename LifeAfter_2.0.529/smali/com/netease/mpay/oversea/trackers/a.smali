.class public abstract Lcom/netease/mpay/oversea/trackers/a;
.super Ljava/lang/Object;
.source "TraceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/trackers/a$i;,
        Lcom/netease/mpay/oversea/trackers/a$g;,
        Lcom/netease/mpay/oversea/trackers/a$h;,
        Lcom/netease/mpay/oversea/trackers/a$a;,
        Lcom/netease/mpay/oversea/trackers/a$b;,
        Lcom/netease/mpay/oversea/trackers/a$e;,
        Lcom/netease/mpay/oversea/trackers/a$f;,
        Lcom/netease/mpay/oversea/trackers/a$c;,
        Lcom/netease/mpay/oversea/trackers/a$d;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field protected e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/trackers/a;->d:I

    .line 6
    iput-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->a:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/netease/mpay/oversea/trackers/a;->b:I

    .line 8
    iput-object p1, p0, Lcom/netease/mpay/oversea/trackers/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/trackers/a;
    .locals 1

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->e:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/trackers/a;->e:Lorg/json/JSONObject;

    const-string v0, "login_type"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event_name"

    .line 7
    iget-object v2, p0, Lcom/netease/mpay/oversea/trackers/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget v1, p0, Lcom/netease/mpay/oversea/trackers/a;->b:I

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_0

    const-string v2, "status"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/a;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v2, "event_data"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
