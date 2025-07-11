.class public Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;
.super Ljava/lang/Object;
.source "GameVoiceBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameVoiceBuffer"

.field private static final mOutputBufferSize:I = 0x800


# instance fields
.field private debug_fo_pull:Ljava/io/FileOutputStream;

.field private debug_fo_push:Ljava/io/FileOutputStream;

.field private enable_debug_:Z

.field private mAudioSampleRate:I

.field private mGameVoicePollRate:I

.field private mOutputSamepleBytes:I

.field private outBytes:[B

.field private ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;

    .line 21
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enable_debug_:Z

    .line 23
    iput v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mGameVoicePollRate:I

    return-void
.end method


# virtual methods
.method public canReadData()Z
    .locals 3

    .line 101
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    monitor-exit p0

    const/16 v2, 0x800

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearData()V
    .locals 2

    .line 110
    monitor-enter p0

    :try_start_0
    const-string v0, "GameVoiceBuffer"

    const-string v1, "[gvoice] clearData"

    .line 112
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/RingBuffer;->clear()V

    const-string v0, "GameVoiceBuffer"

    const-string v1, "[gvoice] ringBuffer_ clear"

    .line 115
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDebug(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "GameVoiceBuffer"

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010gvoice\u3011enableDebug "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;

    .line 60
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enable_debug_:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enable_debug_:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public getGameVoiceBufferData()[B
    .locals 4

    .line 148
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/RingBuffer;->ReadBuffer([BLjava/lang/Boolean;)I

    const-string v0, "GameVoiceBuffer"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gvoice] ringBuffer_ getGameVoiceBufferData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " begin. current size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enable_debug_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    const-string v0, "GameVoiceBuffer"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gvoice] ringBuffer_ getGameVoiceBufferData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end. current size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    return-object v0

    :catchall_0
    move-exception v0

    .line 163
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getGameVoicePollRateMs()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mGameVoicePollRate:I

    return v0
.end method

.method public init(IIIII)I
    .locals 3

    const-string v0, "GameVoiceBuffer"

    const/16 v1, 0x1f40

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e80

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d00

    if-eq p1, v1, :cond_0

    const v1, 0xac44

    if-eq p1, v1, :cond_0

    const v1, 0xbb80

    if-eq p1, v1, :cond_0

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "==============invalid sampleRate======"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_1

    if-eq p2, v2, :cond_1

    const-string p1, "==============invalid channels========"

    .line 36
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_1
    const/16 v1, 0x10

    if-eq p3, v1, :cond_2

    const-string p1, "==============only 16 bits per sample support========="

    .line 40
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    .line 43
    :cond_2
    iput p1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mAudioSampleRate:I

    const/16 p3, 0x800

    .line 44
    iput p3, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mOutputSamepleBytes:I

    .line 45
    iget p3, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mOutputSamepleBytes:I

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->outBytes:[B

    if-lez p5, :cond_3

    move p3, p5

    goto :goto_0

    :cond_3
    const p3, 0x1f4000

    .line 46
    div-int/2addr p3, p1

    :goto_0
    iput p3, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mGameVoicePollRate:I

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gvoice] optionalAudioPollRateMs-"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " mGameVoicePollRate-"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mGameVoicePollRate:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " optionalSize-"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p3, Lcom/netease/cc/screen_record/codec/RingBuffer;

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    if-le p4, p1, :cond_4

    move p1, p4

    :cond_4
    invoke-direct {p3, p1}, Lcom/netease/cc/screen_record/codec/RingBuffer;-><init>(I)V

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public pushGameVoiceBufferData([BI)I
    .locals 5

    .line 123
    monitor-enter p0

    :try_start_0
    const-string v0, "GameVoiceBuffer"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gvoice] ringBuffer_ pushGameVoiceBufferData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " begin. current size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/RingBuffer;->WriteBuffer([BI)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "GameVoiceBuffer"

    const-string v2, "[gvoice] game voice buffer is NOT enough. Please wait and try pushing data again."

    .line 127
    invoke-static {v0, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "GameVoiceBuffer"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[gvoice] ringBuffer_ pushGameVoiceBufferData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " end. current size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v4}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enable_debug_:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;

    invoke-virtual {v2, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 3

    .line 72
    monitor-enter p0

    :try_start_0
    const-string v0, "GameVoiceBuffer"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010gvoice\u3011release. ring buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/RingBuffer;->CanReadSize()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->ringBuffer_:Lcom/netease/cc/screen_record/codec/RingBuffer;

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-boolean v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enable_debug_:Z

    if-eqz v1, :cond_2

    .line 80
    :try_start_1
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 83
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_pull:Ljava/io/FileOutputStream;

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 88
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->debug_fo_push:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 76
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setGameVoicePollRate(I)V
    .locals 1

    .line 168
    iput p1, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mGameVoicePollRate:I

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[gvoice] set poll rate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->mGameVoicePollRate:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameVoiceBuffer"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
