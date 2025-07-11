.class public Lcom/netease/mcount/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mcount/c/b$b;,
        Lcom/netease/mcount/c/b$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/netease/mcount/c/d;)Lcom/netease/mcount/c/b$b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/netease/mcount/c/b;->a(Lcom/netease/mcount/c/d;Z)Lcom/netease/mcount/c/b$b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/netease/mcount/c/d;Z)Lcom/netease/mcount/c/b$b;
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/netease/mcount/c/b;->a()Lcom/netease/mcount/c/e;

    move-result-object v0

    iget v1, p0, Lcom/netease/mcount/c/d;->d:I

    iget-object v2, p0, Lcom/netease/mcount/c/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/c/d;->e:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/netease/mcount/c/d;->b:Ljava/util/ArrayList;

    iget v5, p0, Lcom/netease/mcount/c/d;->f:I

    iget v6, p0, Lcom/netease/mcount/c/d;->g:I

    iget-object v7, p0, Lcom/netease/mcount/c/d;->h:Lcom/netease/mcount/c/d$a;

    iget-boolean v8, p0, Lcom/netease/mcount/c/d;->c:Z

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mcount/c/e;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;IILcom/netease/mcount/c/d$a;Z)Lcom/netease/mcount/c/b$b;

    move-result-object p0
    :try_end_0
    .catch Lcom/netease/mcount/c/b$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/netease/mcount/c/b$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/mcount/c/b;->a()Lcom/netease/mcount/c/e;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mcount/c/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netease/mcount/c/e;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/netease/mcount/c/b;->a(Lcom/netease/mcount/c/d;Z)Lcom/netease/mcount/c/b$b;

    move-result-object p0

    return-object p0

    :cond_0
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/c/b$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "II)",
            "Lcom/netease/mcount/c/b$b;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/netease/mcount/c/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;IIZ)Lcom/netease/mcount/c/b$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;IIZ)Lcom/netease/mcount/c/b$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "IIZ)",
            "Lcom/netease/mcount/c/b$b;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/netease/mcount/c/b;->a()Lcom/netease/mcount/c/e;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mcount/c/e;->a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/c/b$b;

    move-result-object p0
    :try_end_0
    .catch Lcom/netease/mcount/c/b$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p5, :cond_0

    invoke-virtual {v0}, Lcom/netease/mcount/c/b$a;->b()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/netease/mcount/c/b;->a()Lcom/netease/mcount/c/e;

    move-result-object p5

    invoke-virtual {p5, p0}, Lcom/netease/mcount/c/e;->b(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/netease/mcount/c/b;->a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;IIZ)Lcom/netease/mcount/c/b$b;

    move-result-object p0

    return-object p0

    :cond_0
    throw v0
.end method

.method private static a()Lcom/netease/mcount/c/e;
    .locals 1

    new-instance v0, Lcom/netease/mcount/c/c;

    invoke-direct {v0}, Lcom/netease/mcount/c/c;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netease/mcount/c/b;->a()Lcom/netease/mcount/c/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/mcount/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
