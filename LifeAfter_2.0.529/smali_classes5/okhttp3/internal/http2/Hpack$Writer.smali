.class final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lokhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLokio/Buffer;)V
    .locals 1
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "useCompression"    # Z
    .param p3, "out"    # Lokio/Buffer;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 390
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 392
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 394
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 401
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 402
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 403
    iput-boolean p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 404
    iput-object p3, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    .line 405
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 2
    .param p1, "out"    # Lokio/Buffer;

    .line 397
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    .line 398
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 581
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 582
    if-nez v0, :cond_0

    .line 583
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    goto :goto_0

    .line 585
    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 588
    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 408
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 411
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 412
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 5
    .param p1, "bytesToRecover"    # I

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 419
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 420
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 421
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 422
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 423
    add-int/lit8 v0, v0, 0x1

    .line 419
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 425
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 428
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 430
    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
    .locals 7
    .param p1, "entry"    # Lokhttp3/internal/http2/Header;

    .line 434
    iget v0, p1, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 437
    .local v0, "delta":I
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    .line 438
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 439
    return-void

    .line 443
    :cond_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 444
    .local v2, "bytesToRecover":I
    invoke-direct {p0, v2}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 446
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 447
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 448
    .local v1, "doubled":[Lokhttp3/internal/http2/Header;
    const/4 v4, 0x0

    array-length v5, v3

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 450
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 452
    .end local v1    # "doubled":[Lokhttp3/internal/http2/Header;
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 453
    .local v1, "index":I
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aput-object p1, v3, v1

    .line 454
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 455
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 456
    return-void
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I

    .line 565
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 566
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 569
    .local v0, "effectiveHeaderTableSize":I
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_0

    return-void

    .line 571
    :cond_0
    if-ge v0, v1, :cond_1

    .line 572
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 575
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 576
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 577
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    .line 578
    return-void
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 5
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Huffman;->encodedLength(Lokio/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 553
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 554
    .local v0, "huffmanBuffer":Lokio/Buffer;
    invoke-static {}, Lokhttp3/internal/http2/Huffman;->get()Lokhttp3/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lokhttp3/internal/http2/Huffman;->encode(Lokio/ByteString;Lokio/BufferedSink;)V

    .line 555
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    .line 556
    .local v2, "huffmanBytes":Lokio/ByteString;
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v1, v4}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 557
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 558
    .end local v0    # "huffmanBuffer":Lokio/Buffer;
    .end local v2    # "huffmanBytes":Lokio/ByteString;
    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 560
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 562
    :goto_0
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/http2/Header;>;"
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 462
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 464
    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 466
    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 467
    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 468
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 471
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_a

    .line 472
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/http2/Header;

    .line 473
    .local v3, "header":Lokhttp3/internal/http2/Header;
    iget-object v4, v3, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    .line 474
    .local v4, "name":Lokio/ByteString;
    iget-object v5, v3, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 475
    .local v5, "value":Lokio/ByteString;
    const/4 v6, -0x1

    .line 476
    .local v6, "headerIndex":I
    const/4 v7, -0x1

    .line 478
    .local v7, "headerNameIndex":I
    sget-object v8, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 479
    .local v8, "staticIndex":Ljava/lang/Integer;
    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 480
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 481
    if-le v7, v9, :cond_3

    const/16 v10, 0x8

    if-ge v7, v10, :cond_3

    .line 486
    sget-object v10, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v10, v5}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 487
    move v6, v7

    goto :goto_1

    .line 488
    :cond_2
    sget-object v10, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    aget-object v10, v10, v7

    iget-object v10, v10, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v10, v5}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 489
    add-int/lit8 v6, v7, 0x1

    .line 494
    :cond_3
    :goto_1
    const/4 v10, -0x1

    if-ne v6, v10, :cond_6

    .line 495
    iget v11, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v11, v9

    .local v11, "j":I
    iget-object v9, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v9, v9

    .local v9, "length":I
    :goto_2
    if-ge v11, v9, :cond_6

    .line 496
    iget-object v12, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v12, v12, v11

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-static {v12, v4}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 497
    iget-object v12, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v12, v12, v11

    iget-object v12, v12, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v12, v5}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 498
    iget v12, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v12, v11, v12

    sget-object v13, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v13, v13

    add-int v6, v12, v13

    .line 499
    goto :goto_3

    .line 500
    :cond_4
    if-ne v7, v10, :cond_5

    .line 501
    iget v12, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v12, v11, v12

    sget-object v13, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    array-length v13, v13

    add-int/2addr v12, v13

    move v7, v12

    .line 495
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 507
    .end local v9    # "length":I
    .end local v11    # "j":I
    :cond_6
    :goto_3
    if-eq v6, v10, :cond_7

    .line 509
    const/16 v9, 0x7f

    const/16 v10, 0x80

    invoke-virtual {p0, v6, v9, v10}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_4

    .line 510
    :cond_7
    const/16 v9, 0x40

    if-ne v7, v10, :cond_8

    .line 512
    iget-object v10, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v10, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 513
    invoke-virtual {p0, v4}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 514
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 515
    invoke-direct {p0, v3}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    goto :goto_4

    .line 516
    :cond_8
    sget-object v10, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;

    invoke-virtual {v4, v10}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {v10, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 519
    const/16 v9, 0xf

    invoke-virtual {p0, v7, v9, v1}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 520
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_4

    .line 523
    :cond_9
    const/16 v10, 0x3f

    invoke-virtual {p0, v7, v10, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 524
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 525
    invoke-direct {p0, v3}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    .line 471
    .end local v3    # "header":Lokhttp3/internal/http2/Header;
    .end local v4    # "name":Lokio/ByteString;
    .end local v5    # "value":Lokio/ByteString;
    .end local v6    # "headerIndex":I
    .end local v7    # "headerNameIndex":I
    .end local v8    # "staticIndex":Ljava/lang/Integer;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 528
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_a
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I

    .line 533
    if-ge p1, p2, :cond_0

    .line 534
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 535
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 540
    sub-int/2addr p1, p2

    .line 543
    :goto_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_1

    .line 544
    and-int/lit8 v0, p1, 0x7f

    .line 545
    .local v0, "b":I
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 546
    ushr-int/lit8 p1, p1, 0x7

    .line 547
    .end local v0    # "b":I
    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 549
    return-void
.end method
