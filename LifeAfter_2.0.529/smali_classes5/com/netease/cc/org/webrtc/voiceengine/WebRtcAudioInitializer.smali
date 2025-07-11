.class public final Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;
.super Ljava/lang/Object;
.source "WebRtcAudioInitializer.java"


# static fields
.field private static volatile sInstance:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;


# instance fields
.field private mAudioRouting:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

.field final mContext:Landroid/content/Context;

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStartedCounter:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStopSent:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mAudioRouting:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    .line 21
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStartedCounter:I

    return p0
.end method

.method static synthetic access$008(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I
    .locals 2

    .line 8
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStartedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStartedCounter:I

    return v0
.end method

.method static synthetic access$010(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I
    .locals 2

    .line 8
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStartedCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStartedCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStopSent:Z

    return p0
.end method

.method static synthetic access$102(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mStopSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mAudioRouting:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;
    .locals 1

    .line 81
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->sInstance:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-direct {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->sInstance:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    .line 84
    :cond_0
    sget-object p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->sInstance:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;

    invoke-direct {v1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public setRouting(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->mAudioRouting:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    return-void
.end method
