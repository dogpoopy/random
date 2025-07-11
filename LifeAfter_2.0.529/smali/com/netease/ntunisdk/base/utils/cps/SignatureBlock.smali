.class public Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;
.super Ljava/lang/Object;
.source "SignatureBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;
    }
.end annotation


# instance fields
.field idValuesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;",
            ">;"
        }
    .end annotation
.end field

.field magic:[B

.field size1:J

.field size2:J


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;J)V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->idValuesList:Ljava/util/LinkedList;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->magic:[B

    .line 18
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->size1:J

    const-wide/16 v0, 0x18

    sub-long/2addr p2, v0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 23
    new-instance v0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;-><init>(Ljava/io/RandomAccessFile;)V

    .line 24
    iget-wide v1, v0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->size:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    sub-long/2addr p2, v1

    .line 25
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->idValuesList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->size2:J

    .line 29
    iget-object p2, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->magic:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 31
    iget-wide p1, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->size1:J

    iget-wide v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->size2:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "size1 != size2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method checkV2()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->idValuesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;

    .line 52
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->hasV2Mark()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getChannel()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->idValuesList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;

    .line 42
    iget v2, v1, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->id:I

    const v3, -0xe9ce9d

    if-ne v2, v3, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock$IdValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
