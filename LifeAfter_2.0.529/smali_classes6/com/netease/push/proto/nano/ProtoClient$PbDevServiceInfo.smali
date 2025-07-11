.class public final Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ProtoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/nano/ProtoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbDevServiceInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;


# instance fields
.field public id:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->clear()Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 2

    .line 188
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    if-nez v0, :cond_1

    .line 189
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    .line 192
    sput-object v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    .line 194
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->_emptyArray:[Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 2

    const-string v0, ""

    .line 213
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 215
    iput-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    const/4 v0, -0x1

    .line 216
    iput v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 237
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 239
    iget-object v3, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    .line 240
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 243
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    .line 244
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_1
    iget-wide v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v3, 0x3

    .line 248
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 263
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 277
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 224
    iget-object v2, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 227
    iget-object v1, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 229
    :cond_1
    iget-wide v0, p0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    .line 230
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 232
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
