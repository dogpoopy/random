.class public abstract Lcom/netease/mcount/c/e;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/content/Context;


# instance fields
.field protected b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mcount/c/e;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a()V
    .locals 3

    sget-object v0, Lcom/netease/mcount/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mcount/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\n\nresp.content : error -  NO_NETWORK_ERROR"

    invoke-static {v0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mcount/c/b$a;

    const/16 v1, 0xb

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mcount/c/b$a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/netease/mcount/c/h;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;IILcom/netease/mcount/c/d$a;Z)Lcom/netease/mcount/c/b$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;II",
            "Lcom/netease/mcount/c/d$a;",
            "Z)",
            "Lcom/netease/mcount/c/b$b;"
        }
    .end annotation

    move v0, p1

    move-object v1, p2

    move-object v2, p4

    invoke-direct {p0}, Lcom/netease/mcount/c/e;->a()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    :try_start_0
    const-string v4, "UTF-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, p0

    :try_start_1
    invoke-direct {p0, p4, v4}, Lcom/netease/mcount/c/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    move-object v5, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v10, p0

    :goto_0
    new-instance v1, Lcom/netease/mcount/c/b$a;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/netease/mcount/c/b$a;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    move-object v10, p0

    goto :goto_1

    :cond_1
    move-object v10, p0

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "?"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/netease/mcount/c/h;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/netease/mcount/c/b$a;

    const/4 v1, 0x4

    const-string v2, "data and query string are exclusive in GET method"

    invoke-direct {v0, v1, v2}, Lcom/netease/mcount/c/b$a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object v3, v1

    move-object v5, v4

    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/netease/mcount/c/e;->a(ILjava/lang/String;Ljava/util/HashMap;[BIILcom/netease/mcount/c/d$a;Z)Lcom/netease/mcount/c/b$b;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v1, Lcom/netease/mcount/c/b$a;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid request method"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/mcount/c/b$a;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method protected abstract a(ILjava/lang/String;Ljava/util/HashMap;[BIILcom/netease/mcount/c/d$a;Z)Lcom/netease/mcount/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII",
            "Lcom/netease/mcount/c/d$a;",
            "Z)",
            "Lcom/netease/mcount/c/b$b;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;II)Lcom/netease/mcount/c/b$b;
    .locals 9
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

    invoke-direct {p0}, Lcom/netease/mcount/c/e;->a()V

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/netease/mcount/c/h;->a(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/netease/mcount/c/b$a;

    const/4 p3, 0x4

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/netease/mcount/c/b$a;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/netease/mcount/c/b$a;

    const/4 p3, 0x1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/netease/mcount/c/b$a;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mcount/c/e;->a(ILjava/lang/String;Ljava/util/HashMap;[BIILcom/netease/mcount/c/d$a;Z)Lcom/netease/mcount/c/b$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/c/e;->a:Landroid/content/Context;

    sget-object v0, Lcom/netease/mcount/c/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p1, Lcom/netease/mcount/c/e;->a:Landroid/content/Context;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/mcount/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method
