.class public Lcom/netease/mpay/oversea/w;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/w$b;,
        Lcom/netease/mpay/oversea/w$a;
    }
.end annotation


# direct methods
.method public static a([BI)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/netease/mpay/oversea/w;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .locals 5

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/netease/mpay/oversea/w$b;-><init>(I[B)V

    .line 5
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 8
    iget-boolean v1, v0, Lcom/netease/mpay/oversea/w$b;->f:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 9
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_3

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 13
    :cond_0
    rem-int/lit8 v1, p2, 0x3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, 0x2

    .line 21
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/netease/mpay/oversea/w$b;->g:Z

    if-eqz v1, :cond_5

    if-lez p2, :cond_5

    add-int/lit8 v1, p2, -0x1

    .line 22
    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    .line 23
    iget-boolean v4, v0, Lcom/netease/mpay/oversea/w$b;->h:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    mul-int v1, v1, v2

    add-int/2addr p3, v1

    .line 26
    :cond_5
    new-array p3, p3, [B

    iput-object p3, v0, Lcom/netease/mpay/oversea/w$a;->a:[B

    .line 27
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/netease/mpay/oversea/w$b;->a([BIIZ)Z

    .line 29
    iget-object p0, v0, Lcom/netease/mpay/oversea/w$a;->a:[B

    return-object p0
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/w;->a([BI)[B

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
