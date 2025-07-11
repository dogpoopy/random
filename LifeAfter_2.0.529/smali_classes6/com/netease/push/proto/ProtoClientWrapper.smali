.class public Lcom/netease/push/proto/ProtoClientWrapper;
.super Ljava/lang/Object;
.source "ProtoClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$Message;,
        Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;,
        Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;,
        Lcom/netease/push/proto/ProtoClientWrapper$Packet;
    }
.end annotation


# static fields
.field public static final GET_NEW_ID_TYPE:B = 0x1t

.field public static final GOT_TIME_TYPE:B = 0x5t

.field public static final HB_FLAG:S = 0x2s

.field public static final HB_TYPE:B = 0x3t

.field public static final LOGIN_TYPE:B = 0x4t

.field public static final NEW_ID_TYPE:B = 0x34t

.field private static final PACKET_HEAD_LEN:I = 0x4

.field public static final PACKET_LEN_HEAD:S = 0x2s

.field public static final PROTO_VER:B = 0x3t

.field public static final PUSH_TYPE:B = 0x32t

.field public static final RC4_FLAG:S = 0x0s

.field public static final REGISTER_TYPE:B = 0x6t

.field public static final RESET_TYPE:B = 0x33t

.field public static final SET_NEW_ID_TYPE:B = 0x2t

.field private static final TAG:Ljava/lang/String;

.field public static final TLS_FLAG:S = 0x1s

.field public static final UNREGISTER_TYPE:B = 0x7t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/push/proto/ProtoClientWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BytesToUint16([BI)I
    .locals 1

    .line 89
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static final MarshalObject(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)[B
    .locals 5

    .line 94
    invoke-interface {p1}, Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;->Marshal()[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    .line 99
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    add-int/2addr v1, v2

    .line 100
    new-array v3, v1, [B

    .line 101
    invoke-static {v3, v0, v1}, Lcom/netease/push/proto/ProtoClientWrapper;->Uint16ToBytes([BII)V

    const/4 v1, 0x2

    const/4 v4, 0x3

    .line 102
    aput-byte v4, v3, v1

    .line 103
    aput-byte p0, v3, v4

    .line 104
    array-length p0, p1

    invoke-static {p1, v0, v3, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public static Uint16ToBytes([BII)V
    .locals 1

    const v0, 0xffff

    and-int/2addr p2, v0

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 75
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 76
    aput-byte p2, p0, p1

    return-void
.end method

.method public static UnmarshalPacket([B)Lcom/netease/push/proto/ProtoClientWrapper$Packet;
    .locals 6

    .line 109
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 110
    sget-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 113
    :cond_0
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$Packet;-><init>()V

    const/4 v3, 0x0

    .line 114
    invoke-static {p0, v3}, Lcom/netease/push/proto/ProtoClientWrapper;->BytesToUint16([BI)I

    move-result v4

    iput v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 115
    iget v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    if-lt v4, v2, :cond_3

    iget v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    array-length v5, p0

    if-le v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 119
    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    const/4 v1, 0x3

    .line 120
    aget-byte v1, p0, v1

    iput-byte v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    .line 121
    iget v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 122
    iget v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    if-le v1, v2, :cond_2

    .line 123
    iget-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    iget-object v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v4, v4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v0

    .line 116
    :cond_3
    :goto_0
    sget-object v3, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packet length error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not in ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getTypeName(B)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "newid"

    goto :goto_0

    :pswitch_1
    const-string p0, "reset"

    goto :goto_0

    :pswitch_2
    const-string p0, "push"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 70
    sget-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
