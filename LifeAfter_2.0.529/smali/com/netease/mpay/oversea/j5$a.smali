.class Lcom/netease/mpay/oversea/j5$a;
.super Lcom/netease/mpay/oversea/e3;
.source "LocalAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/j5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "oversea6748624719139167360"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/mpay/oversea/e3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/j5$a;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/j5$b;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/j5$a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j5$b;->a()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/e3;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/e3;->a([B)V

    return-void
.end method

.method private e()Lcom/netease/mpay/oversea/j5$b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e3;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j5$a;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e3;->b()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/oversea/e3;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/j5$b;->a([B)Lcom/netease/mpay/oversea/j5$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/k5;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j5$a;->e()Lcom/netease/mpay/oversea/j5$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/j5$b;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/j5$b;-><init>()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/j5$b;->a(Lcom/netease/mpay/oversea/j5$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/k5;

    .line 7
    iget-object v3, v2, Lcom/netease/mpay/oversea/k5;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/oversea/k5;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {v0}, Lcom/netease/mpay/oversea/j5$b;->a(Lcom/netease/mpay/oversea/j5$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/j5$b;->a(Lcom/netease/mpay/oversea/j5$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/j5$a;->a(Lcom/netease/mpay/oversea/j5$b;)V

    return-void
.end method

.method public d()Lcom/netease/mpay/oversea/k5;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j5$a;->e()Lcom/netease/mpay/oversea/j5$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/j5$b;->a(Lcom/netease/mpay/oversea/j5$b;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/j5$b;->a(Lcom/netease/mpay/oversea/j5$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/k5;

    .line 6
    iget-object v3, v2, Lcom/netease/mpay/oversea/k5;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget v0, v2, Lcom/netease/mpay/oversea/k5;->b:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_2

    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1
.end method
