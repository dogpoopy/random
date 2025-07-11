.class public Lcom/netease/mrzhna/GameVoiceUtils;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;,
        Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;
    }
.end annotation


# static fields
.field private static final PLAYER_STATE_IDLE:I = 0x1

.field private static final PLAYER_STATE_NONE:I = 0x0

.field private static final PLAYER_STATE_PLAYING:I = 0x3

.field private static final PLAYER_STATE_PREPARED:I = 0x2

.field private static final PLAYER_STATE_RELEASED:I = 0x4

.field private static final RECORDER_STATE_IDLE:I = 0x1

.field private static final RECORDER_STATE_NONE:I = 0x0

.field private static final RECORDER_STATE_PREPARED:I = 0x2

.field private static final RECORDER_STATE_RECORDING:I = 0x3

.field private static final RECORDER_STATE_RELEASED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GameVoiceUtils"

.field public static context:Landroid/app/Activity; = null

.field private static mPlayVolume:F = 1.0f

.field private static mPlayer:Landroid/media/MediaPlayer;

.field private static mPlayerListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

.field private static mPlayerState:I

.field public static mRecorder:Landroid/media/MediaRecorder;

.field private static mRecorderListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;

.field private static mRecorderState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmplitude()F
    .locals 4

    .line 162
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->isRecording()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 163
    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x466a6000    # 15000.0f

    div-float/2addr v0, v3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static interruptAll()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->isPlaying()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->stopPlay()V

    .line 63
    invoke-static {v1}, Lcom/netease/mrzhna/GameVoiceUtils;->onPlayerListener(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->stopRecord()V

    .line 68
    invoke-static {v1}, Lcom/netease/mrzhna/GameVoiceUtils;->onPlayerListener(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isPlaying()Z
    .locals 2

    .line 291
    sget v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRecording()Z
    .locals 2

    .line 157
    sget v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeOnRecorderListener(I)V
.end method

.method public static onPlayerListener(I)V
    .locals 1

    .line 302
    new-instance v0, Lcom/netease/mrzhna/GameVoiceUtils$1;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/GameVoiceUtils$1;-><init>(I)V

    .line 310
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->context:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRecorderListener(I)V
    .locals 0

    return-void
.end method

.method public static preparePlay(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: prepare play."

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->interruptAll()V

    .line 222
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 224
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    .line 225
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

    invoke-direct {v1}, Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;-><init>()V

    sput-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

    .line 227
    :cond_0
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 228
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 229
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 230
    sput v2, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    .line 233
    :cond_1
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 236
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 237
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 238
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 239
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "cocos2d-x: prepare play success."

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 249
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    .line 250
    invoke-static {p0}, Lcom/netease/mrzhna/GameVoiceUtils;->onPlayerListener(I)V

    return v2

    .line 244
    :catch_0
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    const-string v1, "cocos2d-x: prepare play voice failed"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_1
    const-string v1, "cocos2d-x: play file not found"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static prepareRecord(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: prepare record."

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/netease/mrzhna/GameVoiceUtils;->interruptAll()V

    .line 85
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    .line 88
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-direct {v1}, Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;-><init>()V

    sput-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;

    .line 90
    :cond_0
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v3, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 91
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v3, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderListener:Lcom/netease/mrzhna/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 92
    sput v2, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    .line 95
    :cond_1
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 97
    :try_start_0
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 98
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 99
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 100
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 101
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 103
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const v1, 0xea60

    invoke-virtual {p0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 105
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x1f40

    invoke-virtual {p0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 106
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 107
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "cocos2d-x: prepare record success."

    .line 113
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 114
    sput p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    return v2

    :catch_0
    const-string p0, "cocos2d-x: prepare record catch Exception"

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object p0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    const/4 p0, 0x0

    return p0
.end method

.method public static releasePlayer()V
    .locals 2

    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: release player"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 285
    sput-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x4

    .line 286
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    :cond_0
    return-void
.end method

.method public static releaseRecorder()V
    .locals 2

    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: release recorder."

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 151
    sput-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    :cond_0
    const/4 v0, 0x4

    .line 153
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    return-void
.end method

.method public static setPlayVolume(F)V
    .locals 0

    .line 297
    sput p0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayVolume:F

    return-void
.end method

.method public static startPlay()Z
    .locals 4

    const-string v0, "GameVoiceUtils"

    .line 255
    sget v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v2

    .line 259
    :cond_0
    :try_start_0
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 260
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayVolume:F

    invoke-virtual {v1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "cocos2d-x: start play success."

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 267
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    const/4 v0, 0x1

    .line 268
    invoke-static {v0}, Lcom/netease/mrzhna/GameVoiceUtils;->onPlayerListener(I)V

    return v0

    .line 262
    :catch_0
    sget-object v1, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    const-string v1, "cocos2d-x: play voice failed"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static startRecord()Z
    .locals 3

    .line 119
    sget v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "GameVoiceUtils"

    const-string v2, "cocos2d-x: start record."

    .line 122
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    sget-object v2, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 125
    sget-object v2, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "cocos2d-x: start record success."

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 132
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v2, "cocos2d-x: start record catch Exception"

    .line 127
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    return v1
.end method

.method public static stopPlay()V
    .locals 1

    .line 273
    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x1

    .line 276
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mPlayerState:I

    :cond_0
    return-void
.end method

.method public static stopRecord()V
    .locals 2

    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: stop recorder."

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    const/4 v0, 0x1

    .line 143
    sput v0, Lcom/netease/mrzhna/GameVoiceUtils;->mRecorderState:I

    return-void
.end method
