.class public final Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbLoginInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

.field public supportMpayCmd:Z

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 427
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 428
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;
    .locals 2

    .line 401
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    if-nez v0, :cond_1

    .line 402
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    sget-object v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    .line 405
    sput-object v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    .line 407
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 409
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 555
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;
    .locals 2

    const-string v0, ""

    .line 432
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    .line 433
    invoke-static {}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    .line 434
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    .line 435
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->supportMpayCmd:Z

    const/4 v0, -0x1

    .line 437
    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 469
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    const/4 v3, 0x1

    .line 472
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 475
    :goto_0
    iget-object v3, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 476
    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    .line 479
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 484
    iget-object v3, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    .line 485
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 488
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    .line 489
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_4
    iget-boolean v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->supportMpayCmd:Z

    if-eqz v1, :cond_5

    const/16 v2, 0x64

    .line 493
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x320

    if-eq v0, v1, :cond_1

    .line 508
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 546
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->supportMpayCmd:Z

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    goto :goto_0

    .line 538
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_4
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 520
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 521
    new-array v0, v0, [Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    if-eqz v1, :cond_6

    .line 524
    iget-object v3, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    :cond_6
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    .line 527
    new-instance v2, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    invoke-direct {v2}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;-><init>()V

    aput-object v2, v0, v1

    .line 528
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 529
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 532
    :cond_7
    new-instance v2, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    invoke-direct {v2}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;-><init>()V

    aput-object v2, v0, v1

    .line 533
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 534
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    goto :goto_0

    .line 514
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 448
    :goto_0
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 449
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 451
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 456
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 459
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 461
    :cond_4
    iget-boolean v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->supportMpayCmd:Z

    if-eqz v0, :cond_5

    const/16 v1, 0x64

    .line 462
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 464
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
