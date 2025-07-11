.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field port:I

.field scheme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 980
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 982
    const/4 v1, -0x1

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 988
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .locals 8
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .line 1088
    const/4 v0, 0x0

    .line 1090
    .local v0, "offset":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/\\"

    invoke-static {p1, v0, v1, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    .line 1091
    .local v7, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_0

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1092
    .local v5, "addTrailingSlash":Z
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1093
    add-int/lit8 v0, v7, 0x1

    .line 1094
    .end local v5    # "addTrailingSlash":Z
    .end local v7    # "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1095
    return-object p0

    .line 1094
    :cond_1
    goto :goto_0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1591
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, "percentDecoded":Ljava/lang/String;
    invoke-static {v0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 1496
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 1500
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1501
    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1502
    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1503
    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1500
    :goto_1
    return v0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1598
    const/4 v0, -0x1

    :try_start_0
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "portString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    .local v2, "i":I
    if-lez v2, :cond_0

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    return v2

    .line 1601
    :cond_0
    return v0

    .line 1602
    .end local v1    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1603
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private pop()V
    .locals 4

    .line 1517
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1520
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1521
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1523
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    :goto_0
    return-void
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1574
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1575
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1577
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    .line 1578
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    .line 1574
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1582
    :cond_2
    return v0

    .line 1585
    .end local v0    # "i":I
    :cond_3
    return p2
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .line 1476
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "segment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    return-void

    .line 1481
    :cond_0
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1482
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    .line 1483
    return-void

    .line 1485
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1486
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1488
    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    :goto_0
    if-eqz p4, :cond_3

    .line 1491
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_3
    return-void
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1212
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1214
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1215
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1217
    return-void

    .line 1211
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1221
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 11
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1448
    if-ne p2, p3, :cond_0

    .line 1450
    return-void

    .line 1452
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1453
    .local v0, "c":C
    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1460
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1455
    :cond_2
    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1456
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 p2, p2, 0x1

    .line 1464
    :goto_1
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_5

    .line 1465
    const-string v2, "/\\"

    invoke-static {p1, v1, p3, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1466
    .local v2, "pathSegmentDelimiterOffset":I
    if-ge v2, p3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    move v10, v4

    .line 1467
    .local v10, "segmentHasTrailingSlash":Z
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1468
    move v1, v2

    .line 1469
    if-eqz v10, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 1470
    .end local v2    # "pathSegmentDelimiterOffset":I
    .end local v10    # "segmentHasTrailingSlash":Z
    :cond_4
    goto :goto_2

    .line 1471
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1532
    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1534
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1535
    .local v0, "c0":C
    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_1

    if-le v0, v3, :cond_2

    :cond_1
    if-lt v0, v4, :cond_a

    if-le v0, v2, :cond_2

    goto :goto_2

    .line 1537
    :cond_2
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, p2, :cond_9

    .line 1538
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1540
    .local v7, "c":C
    if-lt v7, v5, :cond_3

    if-le v7, v3, :cond_8

    :cond_3
    if-lt v7, v4, :cond_4

    if-le v7, v2, :cond_8

    :cond_4
    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    const/16 v8, 0x39

    if-le v7, v8, :cond_8

    :cond_5
    const/16 v8, 0x2b

    if-eq v7, v8, :cond_8

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_8

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_6

    .line 1546
    goto :goto_1

    .line 1547
    :cond_6
    const/16 v2, 0x3a

    if-ne v7, v2, :cond_7

    .line 1548
    return v6

    .line 1550
    :cond_7
    return v1

    .line 1537
    .end local v7    # "c":C
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1554
    .end local v6    # "i":I
    :cond_9
    return v1

    .line 1535
    :cond_a
    :goto_2
    return v1
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1559
    const/4 v0, 0x0

    .line 1560
    .local v0, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1561
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1562
    .local v1, "c":C
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 1563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1564
    nop

    .end local v1    # "c":C
    add-int/lit8 p1, p1, 0x1

    .line 1568
    goto :goto_0

    .line 1569
    :cond_1
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .line 1068
    if-eqz p1, :cond_0

    .line 1071
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1072
    return-object p0

    .line 1069
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedPathSegments"    # Ljava/lang/String;

    .line 1081
    if-eqz p1, :cond_0

    .line 1084
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1171
    if-eqz p1, :cond_2

    .line 1172
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1173
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1174
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1176
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\'<>#&="

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1177
    :cond_1
    const/4 v1, 0x0

    .line 1175
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    return-object p0

    .line 1171
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "pathSegment"    # Ljava/lang/String;

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1055
    return-object p0

    .line 1053
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "pathSegments"    # Ljava/lang/String;

    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1159
    if-eqz p1, :cond_2

    .line 1160
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1161
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1162
    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1164
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1165
    :cond_1
    const/4 v1, 0x0

    .line 1163
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object p0

    .line 1159
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lokhttp3/HttpUrl;
    .locals 2

    .line 1264
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1266
    new-instance v0, Lokhttp3/HttpUrl;

    invoke-direct {v0, p0}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V

    return-object v0

    .line 1265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method effectivePort()I
    .locals 2

    .line 1049
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedFragment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1231
    if-eqz p1, :cond_0

    .line 1232
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1233
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1234
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1027
    return-object p0

    .line 1024
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 1133
    if-eqz p1, :cond_1

    .line 1134
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1138
    return-object p0

    .line 1135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedQuery"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1150
    if-eqz p1, :cond_0

    .line 1151
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1152
    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1153
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1154
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .line 1011
    if-eqz p1, :cond_0

    .line 1012
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1014
    return-object p0

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "fragment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1224
    if-eqz p1, :cond_0

    .line 1225
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1226
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1227
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 1035
    if-eqz p1, :cond_1

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1038
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1039
    return-object p0

    .line 1037
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1035
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 26
    .param p1, "base"    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;

    .line 1322
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v11, v3, v2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v8

    .line 1323
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v11, v8, v2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v12

    .line 1326
    .local v12, "limit":I
    invoke-static {v11, v8, v12}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v13

    .line 1327
    .local v13, "schemeDelimiterOffset":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    .line 1328
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "https:"

    move-object/from16 v2, p2

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    const-string v2, "https"

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1330
    const-string v2, "https:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_0

    .line 1331
    :cond_0
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-string v5, "http:"

    move-object/from16 v2, p2

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1332
    const-string v2, "http"

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1333
    const-string v2, "http:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_0

    .line 1335
    :cond_1
    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1337
    :cond_2
    if-eqz v1, :cond_12

    .line 1338
    iget-object v2, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1344
    :goto_0
    const/4 v2, 0x0

    .line 1345
    .local v2, "hasUsername":Z
    const/4 v3, 0x0

    .line 1346
    .local v3, "hasPassword":Z
    invoke-static {v11, v8, v12}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v15

    .line 1347
    .local v15, "slashCount":I
    const/4 v4, 0x2

    const/16 v10, 0x3f

    const/16 v9, 0x23

    if-ge v15, v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v4, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v5, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1413
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1415
    iget-object v4, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1416
    iget v4, v1, Lokhttp3/HttpUrl;->port:I

    iput v4, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1417
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1418
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1419
    if-eq v8, v12, :cond_4

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5

    .line 1420
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1425
    :cond_5
    move/from16 v17, v2

    move/from16 v16, v3

    goto/16 :goto_8

    .line 1357
    :cond_6
    :goto_1
    add-int/2addr v8, v15

    move/from16 v17, v2

    move/from16 v16, v3

    .line 1360
    .end local v2    # "hasUsername":Z
    .end local v3    # "hasPassword":Z
    .local v16, "hasPassword":Z
    .local v17, "hasUsername":Z
    :goto_2
    const-string v2, "@/\\?#"

    invoke-static {v11, v8, v12, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    .line 1361
    .local v7, "componentDelimiterOffset":I
    if-eq v7, v12, :cond_7

    .line 1362
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3

    .line 1363
    :cond_7
    const/4 v2, -0x1

    :goto_3
    move v6, v2

    .line 1364
    .local v6, "c":I
    if-eq v6, v14, :cond_c

    if-eq v6, v9, :cond_c

    const/16 v2, 0x2f

    if-eq v6, v2, :cond_c

    const/16 v2, 0x5c

    if-eq v6, v2, :cond_c

    if-eq v6, v10, :cond_c

    const/16 v2, 0x40

    if-eq v6, v2, :cond_8

    goto/16 :goto_7

    .line 1367
    :cond_8
    const-string v5, "%40"

    if-nez v16, :cond_b

    .line 1368
    const/16 v2, 0x3a

    invoke-static {v11, v8, v7, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    .line 1370
    .local v4, "passwordColonOffset":I
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-string v23, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v24, v4

    .end local v4    # "passwordColonOffset":I
    .local v24, "passwordColonOffset":I
    move-object v14, v5

    move-object/from16 v5, v23

    move/from16 v23, v6

    .end local v6    # "c":I
    .local v23, "c":I
    move/from16 v6, v18

    move/from16 v25, v7

    .end local v7    # "componentDelimiterOffset":I
    .local v25, "componentDelimiterOffset":I
    move/from16 v7, v19

    move/from16 v18, v8

    .end local v8    # "pos":I
    .local v18, "pos":I
    move/from16 v8, v20

    move/from16 v9, v21

    const/16 v1, 0x3f

    move-object/from16 v10, v22

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 1373
    .local v10, "canonicalUsername":Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1375
    :cond_9
    move-object v2, v10

    :goto_4
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1376
    move/from16 v9, v24

    move/from16 v14, v25

    .end local v24    # "passwordColonOffset":I
    .end local v25    # "componentDelimiterOffset":I
    .local v9, "passwordColonOffset":I
    .local v14, "componentDelimiterOffset":I
    if-eq v9, v14, :cond_a

    .line 1377
    const/16 v16, 0x1

    .line 1378
    add-int/lit8 v3, v9, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v4, v14

    move/from16 v21, v9

    .end local v9    # "passwordColonOffset":I
    .local v21, "passwordColonOffset":I
    move/from16 v9, v19

    move-object/from16 v19, v10

    .end local v10    # "canonicalUsername":Ljava/lang/String;
    .local v19, "canonicalUsername":Ljava/lang/String;
    move-object/from16 v10, v20

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_5

    .line 1376
    .end local v19    # "canonicalUsername":Ljava/lang/String;
    .end local v21    # "passwordColonOffset":I
    .restart local v9    # "passwordColonOffset":I
    .restart local v10    # "canonicalUsername":Ljava/lang/String;
    :cond_a
    move/from16 v21, v9

    move-object/from16 v19, v10

    .line 1382
    .end local v9    # "passwordColonOffset":I
    .end local v10    # "canonicalUsername":Ljava/lang/String;
    .restart local v19    # "canonicalUsername":Ljava/lang/String;
    .restart local v21    # "passwordColonOffset":I
    :goto_5
    const/16 v17, 0x1

    .line 1383
    .end local v19    # "canonicalUsername":Ljava/lang/String;
    .end local v21    # "passwordColonOffset":I
    goto :goto_6

    .line 1384
    .end local v14    # "componentDelimiterOffset":I
    .end local v18    # "pos":I
    .end local v23    # "c":I
    .restart local v6    # "c":I
    .restart local v7    # "componentDelimiterOffset":I
    .restart local v8    # "pos":I
    :cond_b
    move-object v14, v5

    move/from16 v23, v6

    move v10, v7

    move/from16 v18, v8

    const/16 v1, 0x3f

    .end local v6    # "c":I
    .end local v7    # "componentDelimiterOffset":I
    .end local v8    # "pos":I
    .local v10, "componentDelimiterOffset":I
    .restart local v18    # "pos":I
    .restart local v23    # "c":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    const/16 v19, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move/from16 v3, v18

    move v4, v10

    move-object v1, v9

    move v9, v14

    move v14, v10

    .end local v10    # "componentDelimiterOffset":I
    .restart local v14    # "componentDelimiterOffset":I
    move-object/from16 v10, v19

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1388
    :goto_6
    add-int/lit8 v8, v14, 0x1

    .line 1389
    .end local v18    # "pos":I
    .restart local v8    # "pos":I
    nop

    .line 1410
    .end local v14    # "componentDelimiterOffset":I
    .end local v23    # "c":I
    :goto_7
    move-object/from16 v1, p1

    const/16 v9, 0x23

    const/16 v10, 0x3f

    const/4 v14, -0x1

    goto/16 :goto_2

    .line 1364
    .restart local v6    # "c":I
    .restart local v7    # "componentDelimiterOffset":I
    :cond_c
    move/from16 v23, v6

    move v14, v7

    move/from16 v18, v8

    .line 1397
    .end local v6    # "c":I
    .end local v7    # "componentDelimiterOffset":I
    .end local v8    # "pos":I
    .restart local v14    # "componentDelimiterOffset":I
    .restart local v18    # "pos":I
    .restart local v23    # "c":I
    move/from16 v8, v18

    .end local v18    # "pos":I
    .restart local v8    # "pos":I
    invoke-static {v11, v8, v14}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v1

    .line 1398
    .local v1, "portColonOffset":I
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v14, :cond_d

    .line 1399
    invoke-static {v11, v8, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1400
    add-int/lit8 v2, v1, 0x1

    invoke-static {v11, v2, v14}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1401
    iget v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1403
    :cond_d
    invoke-static {v11, v8, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1404
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1406
    :cond_e
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v2, :cond_f

    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1407
    :cond_f
    move v8, v14

    .line 1408
    nop

    .line 1425
    .end local v1    # "portColonOffset":I
    .end local v14    # "componentDelimiterOffset":I
    .end local v23    # "c":I
    :goto_8
    const-string v1, "?#"

    invoke-static {v11, v8, v12, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1426
    .local v1, "pathDelimiterOffset":I
    invoke-direct {v0, v11, v8, v1}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1427
    move v14, v1

    .line 1430
    .end local v8    # "pos":I
    .local v14, "pos":I
    if-ge v14, v12, :cond_10

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_10

    .line 1431
    const/16 v10, 0x23

    invoke-static {v11, v14, v12, v10}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v18

    .line 1432
    .local v18, "queryDelimiterOffset":I
    add-int/lit8 v3, v14, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v19, 0x0

    const-string v5, " \"\'<>#"

    move-object/from16 v2, p2

    move/from16 v4, v18

    move/from16 v20, v1

    const/16 v1, 0x23

    .end local v1    # "pathDelimiterOffset":I
    .local v20, "pathDelimiterOffset":I
    move-object/from16 v10, v19

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1434
    move/from16 v14, v18

    goto :goto_9

    .line 1430
    .end local v18    # "queryDelimiterOffset":I
    .end local v20    # "pathDelimiterOffset":I
    .restart local v1    # "pathDelimiterOffset":I
    :cond_10
    move/from16 v20, v1

    const/16 v1, 0x23

    .line 1438
    .end local v1    # "pathDelimiterOffset":I
    .restart local v20    # "pathDelimiterOffset":I
    :goto_9
    if-ge v14, v12, :cond_11

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_11

    .line 1439
    add-int/lit8 v3, v14, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, ""

    move-object/from16 v2, p2

    move v4, v12

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1443
    :cond_11
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1340
    .end local v14    # "pos":I
    .end local v15    # "slashCount":I
    .end local v16    # "hasPassword":Z
    .end local v17    # "hasUsername":Z
    .end local v20    # "pathDelimiterOffset":I
    .restart local v8    # "pos":I
    :cond_12
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    .line 1018
    if-eqz p1, :cond_0

    .line 1019
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1020
    return-object p0

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "port"    # I

    .line 1043
    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1044
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1045
    return-object p0

    .line 1043
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1142
    if-eqz p1, :cond_0

    .line 1143
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1145
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1146
    return-object p0
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .locals 10

    .line 1242
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1243
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1244
    .local v2, "pathSegment":Ljava/lang/String;
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1245
    const-string v4, "[]"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1244
    invoke-interface {v9, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1242
    .end local v2    # "pathSegment":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1247
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1248
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1249
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1250
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1251
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1252
    const-string v4, "\\^`{|}"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1251
    invoke-interface {v9, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1248
    .end local v2    # "component":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1256
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1257
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1260
    :cond_3
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedName"    # Ljava/lang/String;

    .line 1203
    if-eqz p1, :cond_1

    .line 1204
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    .line 1205
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1206
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1207
    return-object p0

    .line 1203
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 1194
    if-eqz p1, :cond_1

    .line 1195
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    .line 1196
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1199
    return-object p0

    .line 1194
    .end local v0    # "nameToRemove":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "index"    # I

    .line 1125
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1126
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .line 992
    if-eqz p1, :cond_2

    .line 994
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 996
    :cond_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 997
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1001
    :goto_0
    return-object p0

    .line 999
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .line 1111
    if-eqz p2, :cond_1

    .line 1114
    const/4 v1, 0x0

    .line 1115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1114
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    return-object p0

    .line 1119
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1188
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1189
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1190
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .line 1099
    if-eqz p2, :cond_1

    .line 1100
    const/4 v1, 0x0

    .line 1101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1100
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1107
    return-object p0

    .line 1104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1182
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1183
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1184
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1275
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1278
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1283
    :cond_2
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 1285
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1286
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1289
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :goto_0
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 1293
    .local v1, "effectivePort":I
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1298
    :cond_4
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v2}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1300
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1301
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v2}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1305
    :cond_5
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1306
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .line 1005
    if-eqz p1, :cond_0

    .line 1006
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1007
    return-object p0

    .line 1005
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
