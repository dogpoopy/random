.class public Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;
.super Ljava/lang/Object;
.source "CCMiniMusicPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;,
        Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;
    }
.end annotation


# static fields
.field public static final MUSIC_LOCAL_PLAY:I = 0x7

.field public static final MUSIC_PAUSE:I = 0x2

.field public static final MUSIC_PLAY:I = 0x1

.field public static final MUSIC_RESUME:I = 0x3

.field public static final MUSIC_SEEK:I = 0x5

.field public static final MUSIC_STOP:I = 0x4

.field public static final MUSIC_VOLUME:I = 0x6

.field private static PERMISSION_HEADSET:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static phoneStatePermission:Z = true


# instance fields
.field private final MSG_INIT:I

.field private final MSG_PAUSE:I

.field private final MSG_RELEASE:I

.field private final MSG_RESUME:I

.field private final MSG_SEEK:I

.field private final MSG_START:I

.field private final MSG_STOP:I

.field private final TAG:Ljava/lang/String;

.field private final TIMEOUT_US:I

.field private audioManager:Landroid/media/AudioManager;

.field private ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private channels:I

.field private codecInputBuffers:[Ljava/nio/ByteBuffer;

.field private codecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private controlHandler:Landroid/os/Handler;

.field private controlThread:Landroid/os/HandlerThread;

.field private decodeData:[B

.field private decoderTimeUs:J

.field private durationUs:J

.field private enableAudioTrackPlay:Z

.field private info:Landroid/media/MediaCodec$BufferInfo;

.field private inputThread:Ljava/lang/Thread;

.field private inputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInCall:Z

.field private listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBTHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBTHeadSetRegistered:Z

.field private mIsBTHeadsetPlugged:Z

.field private mIsHeadSetRegistered:Z

.field private mIsWiredHeadsetPlugged:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mediaExtractor:Landroid/media/MediaExtractor;

.field private outputThread:Ljava/lang/Thread;

.field private outputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private presentTimeMs:J

.field private sampleRate:I

.field private sawInputEOS:Z

.field private sawOutputEOS:Z

.field private state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

.field private streamType:I

.field private targetStreamType:I

.field private url:Ljava/lang/String;

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CCMiniMusicPlayer"

    .line 44
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    .line 47
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_INIT:I

    const/16 v0, 0x65

    .line 48
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_START:I

    const/16 v0, 0x66

    .line 49
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_PAUSE:I

    const/16 v0, 0x67

    .line 50
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_RESUME:I

    const/16 v0, 0x68

    .line 51
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_STOP:I

    const/16 v0, 0x69

    .line 52
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_SEEK:I

    const/16 v0, 0x6e

    .line 53
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->MSG_RELEASE:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThread:Ljava/lang/Thread;

    .line 64
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThread:Ljava/lang/Thread;

    const/16 v1, 0x2710

    .line 67
    iput v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->TIMEOUT_US:I

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawInputEOS:Z

    .line 69
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawOutputEOS:Z

    .line 70
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decodeData:[B

    const-wide/16 v2, 0x0

    .line 78
    iput-wide v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->durationUs:J

    .line 80
    iput-wide v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decoderTimeUs:J

    .line 81
    iput-wide v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->presentTimeMs:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    iput v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->enableAudioTrackPlay:Z

    .line 84
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->audioManager:Landroid/media/AudioManager;

    .line 88
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    .line 90
    iput v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->streamType:I

    iput v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->targetStreamType:I

    .line 106
    sget-object v2, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    .line 729
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 731
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 732
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 733
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadsetPlugged:Z

    .line 734
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadSetRegistered:Z

    .line 840
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 841
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsHeadSetRegistered:Z

    .line 842
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsWiredHeadsetPlugged:Z

    .line 880
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->isInCall:Z

    .line 112
    iput-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    .line 113
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    return p0
.end method

.method static synthetic access$1100(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doSetVolume(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->feedData()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sleep(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->drainData()V

    return-void
.end method

.method static synthetic access$602(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$702(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsWiredHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->updateStreamType()V

    return-void
.end method

.method static synthetic access$902(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->isInCall:Z

    return p1
.end method

.method private changeState(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;)Z
    .locals 3

    .line 630
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$7;->$SwitchMap$com$netease$cc$org$webrtc$voiceengine$music$CCMiniMusicPlayer$STATE:[I

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-ne p1, v0, :cond_5

    .line 639
    :cond_1
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    goto :goto_2

    .line 632
    :cond_2
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-ne p1, v0, :cond_5

    .line 634
    :cond_3
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    goto :goto_2

    .line 645
    :cond_4
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PAUSE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 646
    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    :goto_2
    return v1
.end method

.method private detectAudioFormat(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_0

    .line 441
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "mime"

    if-ge v2, p1, :cond_2

    .line 447
    :try_start_1
    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 448
    invoke-virtual {v4, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v1, :cond_3

    return v0

    .line 457
    :cond_3
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    const-string v2, "sample-rate"

    .line 463
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sampleRate:I

    const-string v2, "channel-count"

    .line 464
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->channels:I

    const-string v2, "durationUs"

    .line 465
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->durationUs:J

    .line 468
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 469
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 471
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->codecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 472
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 474
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 475
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 477
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private doPause()V
    .locals 2

    .line 273
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PAUSE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->changeState(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onStateChange(I)V

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private doPlay(Ljava/lang/String;)I
    .locals 4

    .line 212
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->url:Ljava/lang/String;

    .line 213
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    sget-object v2, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const/4 p1, 0x4

    return p1

    .line 219
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->detectAudioFormat(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    return p1

    .line 222
    :cond_3
    iget p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sampleRate:I

    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->channels:I

    invoke-direct {p0, p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initAudioTrack(II)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x3

    return p1

    .line 225
    :cond_4
    sget-object p1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->changeState(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;)Z

    const-wide/16 v0, 0x0

    .line 226
    iput-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decoderTimeUs:J

    .line 227
    iput-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->presentTimeMs:J

    .line 228
    iput-boolean v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawInputEOS:Z

    .line 229
    iput-boolean v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawOutputEOS:Z

    .line 230
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sampleRate:I

    iget v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->channels:I

    invoke-interface {p1, v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onMusicStart(II)V

    .line 231
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->id()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onStateChange(I)V

    .line 232
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->startInputThread()V

    .line 233
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->startOutputThread()V

    return v3
.end method

.method private doRelease()V
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->unRegisterReceiver()V

    .line 321
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :catch_0
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThread:Ljava/lang/Thread;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 332
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :catch_1
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThread:Ljava/lang/Thread;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 341
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 342
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    :catch_2
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 351
    :try_start_3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 352
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 353
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 357
    :catch_3
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_4

    .line 362
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 366
    :catch_4
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 368
    :cond_4
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doResume()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PAUSE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->changeState(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onStateChange(I)V

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private doSeek(F)V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    .line 301
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doPause()V

    .line 302
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->waitMediaCodecFinish()V

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-wide/16 v1, -0x1

    .line 308
    iput-wide v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->presentTimeMs:J

    .line 309
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 310
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    .line 311
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->durationUs:J

    long-to-float v2, v2

    mul-float v2, v2, p1

    float-to-long v2, v2

    const/4 p1, 0x2

    invoke-virtual {v1, v2, v3, p1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 312
    sget-object p1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-ne v0, p1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doResume()V

    :cond_0
    return-void
.end method

.method private doSetVolume(F)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onVolumeChange(F)V

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->enableAudioTrackPlay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->isInCall:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    .line 167
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 168
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 172
    :goto_1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 174
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_2

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method private doStop()V
    .locals 2

    .line 246
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->changeState(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onStateChange(I)V

    .line 248
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->waitMediaCodecFinish()V

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 251
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 258
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 259
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method

.method private drainData()V
    .locals 7

    .line 547
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawOutputEOS:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 548
    invoke-direct {p0, v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sleep(J)V

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_5

    .line 554
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    .line 556
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decodeData:[B

    if-eqz v2, :cond_1

    array-length v2, v2

    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v2, v3, :cond_2

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decodeData:[B

    const-string v2, "CCMiniMusicPlayer"

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new alloc size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_2
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decodeData:[B

    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 562
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 565
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_4

    .line 568
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    iput-wide v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->presentTimeMs:J

    .line 569
    iget v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->targetStreamType:I

    iget v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->streamType:I

    if-eq v1, v2, :cond_3

    .line 570
    iput v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->streamType:I

    .line 571
    iget v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sampleRate:I

    iget v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->channels:I

    invoke-direct {p0, v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initAudioTrack(II)Z

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decodeData:[B

    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v1, v2, v3}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onAudioData([BI)V

    .line 575
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decodeData:[B

    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 579
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawOutputEOS:Z

    .line 581
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->onPlayEnd()V

    goto :goto_0

    :cond_5
    const/4 v1, -0x3

    if-ne v0, v1, :cond_6

    .line 584
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_6
    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 586
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackRate(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 591
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->onCodecException()V

    .line 592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method private feedData()V
    .locals 10

    .line 485
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawInputEOS:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 486
    invoke-direct {p0, v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sleep(J)V

    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_3

    .line 493
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->codecInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    .line 494
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawInputEOS:Z

    const/4 v6, 0x0

    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decoderTimeUs:J

    move v6, v0

    .line 504
    :goto_0
    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->decoderTimeUs:J

    .line 509
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawInputEOS:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/4 v9, 0x4

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 504
    :goto_1
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 510
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sawInputEOS:Z

    if-nez v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 516
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->onCodecException()V

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 905
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initAudioTrack(II)Z
    .locals 0

    .line 405
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->newAudioTrack(II)V

    .line 406
    iget p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doSetVolume(F)V

    .line 407
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initHeadSet(Landroid/content/Context;)V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$5;

    invoke-direct {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$5;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    if-eqz p1, :cond_1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->PERMISSION_HEADSET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    .line 874
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsHeadSetRegistered:Z

    .line 877
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsWiredHeadsetPlugged:Z

    return-void
.end method

.method private initPhoneStateListener(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "phone"

    .line 884
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 885
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$6;

    invoke-direct {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$6;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V

    const/16 v1, 0x20

    .line 895
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 896
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->isInCall:Z

    .line 897
    iget p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doSetVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 419
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 422
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private newAudioTrack(II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 377
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 378
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/16 v0, 0xc

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const/16 v3, 0xc

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    .line 384
    :goto_1
    invoke-static {p1, v3, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 389
    iget v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->targetStreamType:I

    iput v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->streamType:I

    .line 390
    new-instance v3, Landroid/media/AudioTrack;

    iget v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->streamType:I

    if-ne p2, v2, :cond_2

    const/16 v7, 0xc

    goto :goto_2

    :cond_2
    const/4 v7, 0x4

    :goto_2
    const/4 v8, 0x2

    const/4 v10, 0x1

    move-object v4, v3

    move v6, p1

    .line 392
    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 397
    invoke-virtual {v3, p1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    return-void
.end method

.method private onCodecException()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onError(I)V

    .line 434
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->stop()V

    return-void
.end method

.method private onPlayEnd()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onPlayEnd(Ljava/lang/String;)V

    return-void
.end method

.method private registReceiver()V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->audioManager:Landroid/media/AudioManager;

    .line 910
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initHeadSet(Landroid/content/Context;)V

    .line 911
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initBluetooth(Landroid/content/Context;)V

    .line 912
    sget-boolean v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->phoneStatePermission:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initPhoneStateListener(Landroid/content/Context;)V

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->updateStreamType()V

    return-void
.end method

.method private sleep(J)V
    .locals 0

    .line 622
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startInputThread()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$1;

    invoke-direct {v1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$1;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThread:Ljava/lang/Thread;

    .line 541
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private startOutputThread()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$2;

    invoke-direct {v1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$2;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThread:Ljava/lang/Thread;

    .line 616
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 5

    .line 920
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 921
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_1

    .line 925
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 930
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsHeadSetRegistered:Z

    if-eqz v4, :cond_2

    .line 932
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :catch_0
    iput-boolean v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsHeadSetRegistered:Z

    .line 939
    :cond_2
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadSetRegistered:Z

    if-eqz v4, :cond_3

    .line 941
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 945
    :catch_1
    iput-boolean v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadSetRegistered:Z

    .line 949
    :cond_3
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->ccHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 950
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateStreamType()V
    .locals 2

    .line 954
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadsetPlugged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 955
    :goto_1
    iget v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->targetStreamType:I

    if-eq v0, v1, :cond_2

    .line 956
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->targetStreamType:I

    :cond_2
    return-void
.end method

.method private waitMediaCodecFinish()V
    .locals 3

    const/16 v0, 0x64

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->inputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->outputThreadWork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-lez v0, :cond_1

    const-wide/16 v1, 0xa

    .line 240
    invoke-direct {p0, v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public doControlMusic(Landroid/os/Message;)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-ne v0, v1, :cond_0

    return-void

    .line 663
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 680
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->enableAudioTrackPlay:Z

    .line 681
    iget p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doSetVolume(F)V

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->setVolume(F)V

    goto :goto_0

    .line 677
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->seek(F)V

    goto :goto_0

    .line 674
    :pswitch_3
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->stop()V

    goto :goto_0

    .line 671
    :pswitch_4
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->resume()V

    goto :goto_0

    .line 668
    :pswitch_5
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->pause()V

    goto :goto_0

    .line 665
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->play(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChannels()I
    .locals 1

    .line 966
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->channels:I

    return v0
.end method

.method public getMusicDurationUs()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->durationUs:J

    return-wide v0
.end method

.method public getMusicTsMs()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->presentTimeMs:J

    return-wide v0
.end method

.method public getMusicVolume()F
    .locals 1

    .line 970
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 962
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->sampleRate:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .line 974
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->streamType:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 693
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doSeek(F)V

    goto :goto_0

    .line 712
    :pswitch_1
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doStop()V

    goto :goto_0

    .line 708
    :pswitch_2
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doResume()V

    goto :goto_0

    .line 704
    :pswitch_3
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doPause()V

    goto :goto_0

    .line 698
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doPlay(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 699
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->listener:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;

    if-eqz v0, :cond_1

    .line 700
    invoke-interface {v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;->onError(I)V

    goto :goto_0

    .line 695
    :pswitch_5
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->registReceiver()V

    goto :goto_0

    .line 719
    :cond_0
    sget-object p1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->changeState(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;)Z

    .line 720
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doRelease()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initBluetooth(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.permission.BLUETOOTH"

    .line 740
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 749
    :cond_2
    :try_start_0
    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$3;

    invoke-direct {v1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$3;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 769
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 774
    :cond_3
    :try_start_1
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;

    invoke-direct {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 819
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_5

    .line 820
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    .line 821
    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const/4 v0, 0x2

    .line 826
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 827
    iput-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadsetPlugged:Z

    .line 831
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 832
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 833
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 834
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mBTHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 836
    iput-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->mIsBTHeadSetRegistered:Z

    :cond_5
    return-void
.end method

.method public pause()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioDecodeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlThread:Landroid/os/HandlerThread;

    .line 119
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->state:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    if-ne v0, v1, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x6e

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 200
    :try_start_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 201
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 202
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 207
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    return-void
.end method

.method public resume()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public seek(F)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x69

    .line 146
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 150
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->volume:F

    .line 152
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->doSetVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->controlHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x68

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
