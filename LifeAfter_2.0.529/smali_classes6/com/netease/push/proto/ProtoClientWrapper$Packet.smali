.class public Lcom/netease/push/proto/ProtoClientWrapper$Packet;
.super Ljava/lang/Object;
.source "ProtoClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/ProtoClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Packet"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public type:B

.field public version:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 170
    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 171
    iput-byte p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    const/4 p1, 0x3

    .line 172
    iput-byte p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 179
    iput-byte p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    const/4 p1, 0x3

    .line 180
    iput-byte p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    .line 181
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 182
    iget-object p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 161
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Marshal()[B
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 188
    array-length v0, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 190
    :goto_0
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 192
    invoke-static {v2, v3, v0}, Lcom/netease/push/proto/ProtoClientWrapper;->Uint16ToBytes([BII)V

    const/4 v0, 0x2

    const/4 v4, 0x3

    .line 193
    aput-byte v4, v2, v0

    .line 194
    iget-byte v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    aput-byte v0, v2, v4

    .line 196
    iget-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    if-eqz v0, :cond_1

    .line 197
    array-length v4, v0

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2
.end method

.method public UnmarshalPacket([B)I
    .locals 4

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidPush"

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 210
    :cond_0
    invoke-static {p1, v1}, Lcom/netease/push/proto/ProtoClientWrapper;->BytesToUint16([BI)I

    move-result v0

    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    const/4 v0, 0x2

    .line 211
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    const/4 v0, 0x3

    .line 212
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    .line 213
    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 214
    iget-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method
