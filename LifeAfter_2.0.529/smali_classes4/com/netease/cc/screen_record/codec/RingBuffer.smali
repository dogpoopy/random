.class public Lcom/netease/cc/screen_record/codec/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private buffSize:Ljava/lang/Integer;

.field private nextReadPosition:Ljava/lang/Integer;

.field private nextWritePosition:Ljava/lang/Integer;

.field private ringBuff:[B

.field private unusedSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gvoice"

    .line 108
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    .line 21
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public CanReadSize()I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public ReadBuffer([BLjava/lang/Boolean;)I
    .locals 8

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 115
    :cond_0
    array-length v1, p1

    .line 116
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lez v1, :cond_6

    if-gtz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ge v2, v1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    const-string p2, "ReadBuffer enableread < len"

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x2

    if-le v1, v2, :cond_3

    .line 132
    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    aput-object v7, v6, v3

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    sub-int v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "ReadBuffer realRead > rightLeft. nextReadPosition %d, rightLeft %d, realRead-rightLeft %d."

    .line 132
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    invoke-static {v4, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    .line 143
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "ReadBuffer realRead == rightLeft. nextReadPosition %d, realRead %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    goto :goto_0

    .line 152
    :cond_4
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "ReadBuffer realRead < rightLeft. nextReadPosition %d, realRead %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    .line 159
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    return v1

    .line 119
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    const-string p2, "ReadBuffer len <= 0 || enableread <= 0"

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public WriteBuffer([B)Z
    .locals 5

    .line 29
    array-length v0, p1

    .line 30
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    .line 41
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    sub-int v4, v0, v1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public WriteBuffer([BI)Z
    .locals 9

    .line 71
    array-length v0, p1

    if-le p2, v0, :cond_0

    array-length p2, p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, p2, :cond_1

    .line 74
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    aput-object v1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "Not Enough Buffer! WriteBuffer unusedSize %d < bsize %d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v0, v4

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-le p2, v0, :cond_2

    .line 83
    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    aput-object v8, v6, v3

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    aput-object v8, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    sub-int v1, p2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const-string v4, " WriteBuffer bsize %d > bsize %d.  nextWritePosition %d, rightLeft %d, bsize - rightLeft %d."

    .line 83
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    invoke-static {p1, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 91
    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    aput-object v8, v6, v3

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    aput-object v8, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, " WriteBuffer bsize %d == bsize %d.  nextWritePosition %d, rightLeft %d, bsize - rightLeft %d."

    .line 91
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    goto :goto_0

    .line 98
    :cond_3
    iget-object v7, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    aput-object v8, v6, v3

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    aput-object v8, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, " WriteBuffer bsize %d < bsize %d.  nextWritePosition %d, rightLeft %d, bsize - rightLeft %d."

    .line 98
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->ringBuff:[B

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextWritePosition:Ljava/lang/Integer;

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    return v2
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->nextReadPosition:Ljava/lang/Integer;

    .line 166
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->buffSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/RingBuffer;->unusedSize:Ljava/lang/Integer;

    return-void
.end method
