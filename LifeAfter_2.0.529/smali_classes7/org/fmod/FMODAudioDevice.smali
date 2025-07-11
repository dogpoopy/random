.class public Lorg/fmod/FMODAudioDevice;
.super Ljava/lang/Object;
.source "FMODAudioDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static FMOD_INFO_CHANNELCOUNT:I = 0x4

.field private static FMOD_INFO_DSPBUFFERLENGTH:I = 0x1

.field private static FMOD_INFO_DSPNUMBUFFERS:I = 0x2

.field private static FMOD_INFO_MIXERRUNNING:I = 0x3

.field private static FMOD_INFO_SAMPLERATE:I


# instance fields
.field private mInitialised:Z

.field private mRunning:Z

.field private mThread:Ljava/lang/Thread;

.field private mTrack:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    .line 15
    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 17
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    return-void
.end method

.method private fetchChannelConfigFromCount(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/16 p1, 0xfc

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private native fmodGetInfo(I)I
.end method

.method private native fmodProcess(Ljava/nio/ByteBuffer;)I
.end method

.method private shutDown()V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 151
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    return-void
.end method


# virtual methods
.method public isMixing()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    return v0
.end method

.method public run()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x3

    move-object v2, v0

    move-object v3, v2

    .line 62
    :goto_0
    iget-boolean v4, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    if-eqz v4, :cond_7

    .line 64
    iget-boolean v4, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_5

    .line 67
    sget v4, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_SAMPLERATE:I

    invoke-direct {p0, v4}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v9

    .line 68
    sget v4, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPBUFFERLENGTH:I

    invoke-direct {p0, v4}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v4

    .line 69
    sget v7, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPNUMBUFFERS:I

    invoke-direct {p0, v7}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v7

    .line 70
    sget v8, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_CHANNELCOUNT:I

    invoke-direct {p0, v8}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v8

    if-lez v9, :cond_4

    if-lez v4, :cond_4

    if-lez v7, :cond_4

    if-lez v8, :cond_4

    .line 74
    invoke-direct {p0, v8}, Lorg/fmod/FMODAudioDevice;->fetchChannelConfigFromCount(I)I

    move-result v10

    const/4 v2, 0x2

    .line 75
    invoke-static {v9, v10, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    const-string v11, " bytes"

    const-string v14, "fmod"

    if-gez v3, :cond_0

    const-string v12, "FMOD: AudioDevice::run               : Couldn\'t query minimum buffer size, possibly unsupported sample rate or channel count"

    .line 78
    invoke-static {v14, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FMOD: AudioDevice::run               : Min buffer size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    mul-int v7, v7, v4

    mul-int v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    if-le v7, v3, :cond_1

    move v12, v7

    goto :goto_2

    :cond_1
    move v12, v3

    .line 91
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FMOD: AudioDevice::run               : Actual buffer size: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v4, v4, v8

    mul-int/lit8 v4, v4, 0x2

    .line 93
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    new-array v3, v3, [B

    .line 96
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v13, 0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 97
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 99
    iget-object v4, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 100
    iput-boolean v6, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    goto/16 :goto_0

    .line 104
    :cond_2
    iget-object v4, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    .line 105
    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_3

    const-string v4, "FMOD: AudioDevice::run               : Couldn\'t initialize AudioTrack, giving up"

    .line 109
    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-boolean v5, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    goto/16 :goto_0

    :cond_3
    const-string v4, "FMOD: AudioDevice::run               : Couldn\'t initialize AudioTrack, retrying..."

    .line 114
    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    .line 115
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x64

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 126
    :cond_5
    sget v4, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_MIXERRUNNING:I

    invoke-direct {p0, v4}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 129
    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodProcess(Ljava/nio/ByteBuffer;)I

    .line 131
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v4, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioTrack;->write([BII)I

    goto/16 :goto_0

    .line 138
    :cond_6
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->shutDown()V

    goto/16 :goto_0

    .line 143
    :cond_7
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->shutDown()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 35
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 40
    :goto_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 46
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
