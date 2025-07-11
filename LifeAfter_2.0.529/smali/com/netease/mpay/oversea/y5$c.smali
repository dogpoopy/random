.class public Lcom/netease/mpay/oversea/y5$c;
.super Ljava/lang/Object;
.source "LoginInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(ILcom/netease/mpay/oversea/g6;)I
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/y5$c;->a(ILcom/netease/mpay/oversea/g6;Z)I

    move-result p0

    return p0
.end method

.method private static a(ILcom/netease/mpay/oversea/g6;Z)I
    .locals 4

    .line 31
    invoke-static {}, Lcom/netease/mpay/oversea/g6;->values()[Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_0

    .line 33
    iget v3, v3, Lcom/netease/mpay/oversea/g6;->e:I

    or-int/2addr p0, v3

    goto :goto_1

    :cond_0
    iget v3, v3, Lcom/netease/mpay/oversea/g6;->e:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr p0, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static a(Lcom/netease/mpay/oversea/y5;Z)V
    .locals 5

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "before:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/mpay/oversea/y5;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/g6;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne p1, v3, :cond_3

    move-object p1, v2

    .line 14
    :cond_3
    iget v3, v2, Lcom/netease/mpay/oversea/g6;->e:I

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/netease/mpay/oversea/y5;->l:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_1

    move-object p1, v2

    .line 19
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/mpay/oversea/y5;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne p1, v1, :cond_5

    iget-object v2, p0, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object p1, p0, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/g6;

    :cond_5
    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_6

    .line 25
    iget-object v1, p0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object p1, v0

    .line 28
    :cond_6
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 29
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5;->g:Lcom/netease/mpay/oversea/g6;

    :cond_7
    :goto_1
    return-void
.end method

.method public static b(ILcom/netease/mpay/oversea/g6;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/y5$c;->a(ILcom/netease/mpay/oversea/g6;Z)I

    move-result p0

    return p0
.end method
