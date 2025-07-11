.class public Lcom/netease/mpay/oversea/ba;
.super Lcom/netease/mpay/oversea/z;
.source "SecurityStorage.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ka;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/oversea/ka;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/z;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/la;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/oversea/ba;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/netease/mpay/oversea/la;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ba;->c:Lcom/netease/mpay/oversea/ka;

    .line 4
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ba;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ba;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/netease/mpay/oversea/u2;->a([B)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u2;->a(Ljava/io/Serializable;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ba;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->c:Lcom/netease/mpay/oversea/ka;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ka;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->c:Lcom/netease/mpay/oversea/ka;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ka;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->c:Lcom/netease/mpay/oversea/ka;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/ba;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/ka;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/u2;->a([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->c:Lcom/netease/mpay/oversea/ka;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/ba;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/ka;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/u2;->b([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ba;->c:Lcom/netease/mpay/oversea/ka;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ka;->getAll()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v2}, Lcom/netease/mpay/oversea/ba;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
