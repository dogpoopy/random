.class public Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;
.super Ljava/lang/Object;
.source "AvcCsdUtils.java"


# static fields
.field private static final AVC_SPS_NAL:B = 0x67t

.field private static final AVC_SPS_NAL_2:B = 0x27t

.field private static final AVC_SPS_NAL_3:B = 0x47t

.field private static final AVC_START_CODE_3:[B

.field private static final AVC_START_CODE_4:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;->AVC_START_CODE_3:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 31
    fill-array-data v0, :array_1

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;->AVC_START_CODE_4:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpsBuffer(Landroid/media/MediaFormat;)Ljava/nio/ByteBuffer;
    .locals 2

    const-string v0, "csd-0"

    .line 44
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 49
    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;->skipStartCode(Ljava/nio/ByteBuffer;)V

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 v1, 0x67

    if-eq p0, v1, :cond_1

    const/16 v1, 0x27

    if-eq p0, v1, :cond_1

    const/16 v1, 0x47

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Got non SPS NAL data."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static skipStartCode(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 61
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 62
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;->AVC_START_CODE_3:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    .line 64
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    aput-byte p0, v1, v0

    .line 66
    sget-object p0, Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;->AVC_START_CODE_4:[B

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AVC NAL start code not found in csd."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
