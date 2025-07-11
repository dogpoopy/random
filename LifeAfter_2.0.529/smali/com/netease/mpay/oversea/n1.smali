.class public Lcom/netease/mpay/oversea/n1;
.super Lcom/netease/mpay/oversea/a;
.source "DataUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/netease/mpay/oversea/t1;

.field private final d:Lcom/netease/mpay/oversea/a3;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/t1;Lcom/netease/mpay/oversea/a3;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/devices/daud"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n1;->c:Lcom/netease/mpay/oversea/t1;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/n1;->d:Lcom/netease/mpay/oversea/a3;

    return-void
.end method


# virtual methods
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

    iget-object v1, p0, Lcom/netease/mpay/oversea/n1;->c:Lcom/netease/mpay/oversea/t1;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/q;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_ci"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/q;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ci_code"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/n1;->d:Lcom/netease/mpay/oversea/a3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b3;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/n1;->c:Lcom/netease/mpay/oversea/t1;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->c:[B

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/e1;->d([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "account_list"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
