.class public Lcom/netease/ntunisdk/base/utils/cps/ECDR;
.super Ljava/lang/Object;
.source "ECDR.java"


# instance fields
.field contentBytes:[B

.field private offset:I


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 23
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->contentBytes:[B

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 26
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->contentBytes:[B

    const/16 p2, 0x10

    .line 1026
    aget-byte p2, p1, p2

    const/16 v0, 0x11

    aget-byte v0, p1, v0

    const/16 v1, 0x12

    aget-byte v1, p1, v1

    const/16 v2, 0x13

    aget-byte p1, p1, v2

    invoke-static {p2, v0, v1, p1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(BBBB)I

    move-result p1

    .line 26
    iput p1, p0, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method offset()J
    .locals 4

    .line 12
    iget v0, p0, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method offsetIncre(I)V
    .locals 1

    .line 16
    iget v0, p0, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset:I

    return-void
.end method
