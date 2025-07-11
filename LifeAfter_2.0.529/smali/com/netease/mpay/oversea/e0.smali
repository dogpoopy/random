.class public Lcom/netease/mpay/oversea/e0;
.super Ljava/lang/Thread;
.source "BestHostTask.java"


# instance fields
.field private final a:J

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/oversea/c2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/c2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x1388

    .line 2
    iput-wide v0, p0, Lcom/netease/mpay/oversea/e0;->a:J

    .line 8
    iput-object p1, p0, Lcom/netease/mpay/oversea/e0;->b:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/netease/mpay/oversea/e0;->c:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/netease/mpay/oversea/e0;->d:Lcom/netease/mpay/oversea/c2;

    return-void
.end method

.method private a(Ljava/lang/String;I)J
    .locals 13

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    const/4 p2, 0x2

    :cond_0
    const-wide/16 v0, 0x0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/test/echo"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/mpay/oversea/e0;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/speed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 39
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Content-loginType"

    const-string v6, "application/json"

    .line 40
    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1388

    const/16 v12, 0x1388

    .line 42
    :try_start_0
    invoke-static/range {v6 .. v12}, Lcom/netease/mpay/oversea/i3;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/k3;
    :try_end_0
    .catch Lcom/netease/mpay/oversea/i3$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    add-long/2addr v0, v5

    goto :goto_1

    :catch_0
    const-wide/16 v3, 0x1388

    add-long/2addr v0, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-long p1, p2

    .line 51
    div-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 12

    const-string v0, "========TestSpeed========="

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/e0;->d:Lcom/netease/mpay/oversea/c2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/c2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/e0;->d:Lcom/netease/mpay/oversea/c2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/c2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "http://"

    const-string v3, "https://"

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/e0;->d:Lcom/netease/mpay/oversea/c2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/c2;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    goto :goto_2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e0;->d:Lcom/netease/mpay/oversea/c2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/c2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x1388

    const/4 v1, 0x0

    move-wide v6, v4

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 13
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 14
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x3

    .line 15
    invoke-direct {p0, v8, v9}, Lcom/netease/mpay/oversea/e0;->a(Ljava/lang/String;I)J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-gtz v11, :cond_2

    cmp-long v1, v9, v4

    if-nez v1, :cond_4

    .line 18
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v1, v8

    :goto_1
    move-wide v6, v9

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 22
    :cond_6
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 23
    new-instance v1, Lcom/netease/mpay/oversea/c0;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/c0;-><init>()V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/netease/mpay/oversea/e0;->d:Lcom/netease/mpay/oversea/c2;

    iget-wide v5, v4, Lcom/netease/mpay/oversea/c2;->b:J

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/netease/mpay/oversea/c0;->b:J

    .line 25
    iget-object v2, v4, Lcom/netease/mpay/oversea/c2;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/oversea/c0;->c:Ljava/lang/String;

    .line 26
    iput-object v0, v1, Lcom/netease/mpay/oversea/c0;->a:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/oversea/c0;->d:Ljava/lang/String;

    .line 28
    new-instance v2, Lcom/netease/mpay/oversea/pa;

    iget-object v3, p0, Lcom/netease/mpay/oversea/e0;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/mpay/oversea/e0;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/pa;->a()Lcom/netease/mpay/oversea/b0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/b0;->a(Lcom/netease/mpay/oversea/c0;)V

    goto :goto_3

    .line 30
    :cond_7
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/e0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/oversea/e0;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->a()Lcom/netease/mpay/oversea/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b0;->d()V

    .line 31
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/h9;->i:Ljava/lang/String;

    .line 33
    :goto_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    iput-object v0, v1, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestSpeed:\nbest Host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e0;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/e0;->b:Landroid/content/Context;

    return-void
.end method
