.class public final Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbMessageInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;


# instance fields
.field public id:Ljava/lang/String;

.field public messages:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 996
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 997
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 2

    .line 979
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    if-nez v0, :cond_1

    .line 980
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_0
    sget-object v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    .line 983
    sput-object v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    .line 985
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 987
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1090
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 1

    const-string v0, ""

    .line 1001
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    .line 1002
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    const/4 v0, -0x1

    .line 1003
    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1026
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1027
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    .line 1029
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1034
    :goto_0
    iget-object v5, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 1035
    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1039
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_3
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 1058
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1069
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1070
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1071
    new-array v0, v0, [[B

    if-eqz v1, :cond_3

    .line 1073
    iget-object v3, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 1076
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1077
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1080
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1081
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    goto :goto_0

    .line 1064
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1014
    :goto_0
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1015
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 1017
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
