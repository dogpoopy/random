.class public Lcom/netease/mcount/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mcount/f/a$c;,
        Lcom/netease/mcount/f/a$b;,
        Lcom/netease/mcount/f/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;I)[B
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/netease/mcount/f/a;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BI)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/netease/mcount/f/a;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .locals 2

    new-instance v0, Lcom/netease/mcount/f/a$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/netease/mcount/f/a$b;-><init>(I[B)V

    const/4 p3, 0x1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/mcount/f/a$b;->a([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/netease/mcount/f/a$b;->b:I

    iget-object p1, v0, Lcom/netease/mcount/f/a$b;->a:[B

    array-length p1, p1

    if-ne p0, p1, :cond_0

    iget-object p0, v0, Lcom/netease/mcount/f/a$b;->a:[B

    return-object p0

    :cond_0
    iget p0, v0, Lcom/netease/mcount/f/a$b;->b:I

    new-array p0, p0, [B

    iget-object p1, v0, Lcom/netease/mcount/f/a$b;->a:[B

    iget p2, v0, Lcom/netease/mcount/f/a$b;->b:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/netease/mcount/f/a;->c([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static b([BIII)[B
    .locals 5

    new-instance v0, Lcom/netease/mcount/f/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/netease/mcount/f/a$c;-><init>(I[B)V

    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    iget-boolean v1, v0, Lcom/netease/mcount/f/a$c;->d:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_3

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_0
    rem-int/lit8 v1, p2, 0x3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, 0x2

    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/netease/mcount/f/a$c;->e:Z

    if-eqz v1, :cond_5

    if-lez p2, :cond_5

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    iget-boolean v4, v0, Lcom/netease/mcount/f/a$c;->f:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    mul-int v1, v1, v2

    add-int/2addr p3, v1

    :cond_5
    new-array p3, p3, [B

    iput-object p3, v0, Lcom/netease/mcount/f/a$c;->a:[B

    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/netease/mcount/f/a$c;->a([BIIZ)Z

    iget-object p0, v0, Lcom/netease/mcount/f/a$c;->a:[B

    return-object p0
.end method

.method public static c([BI)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/netease/mcount/f/a;->b([BIII)[B

    move-result-object p0

    return-object p0
.end method
