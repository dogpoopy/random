.class Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;
.super Ljava/lang/Object;
.source "SignatureBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdValue"
.end annotation


# static fields
.field static final CUSTOM_CHANNEL_ID:I = -0xe9ce9d

.field static final V2_MARK:I = 0x7109871a


# instance fields
.field id:I

.field size:J

.field value:[B


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->size:J

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1021
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v1, 0x0

    .line 1022
    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(BBBB)I

    move-result v0

    .line 72
    iput v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->id:I

    .line 73
    iget-wide v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->size:J

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->value:[B

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->value:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method hasV2Mark()Z
    .locals 2

    .line 84
    iget v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->id:I

    const v1, 0x7109871a

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
