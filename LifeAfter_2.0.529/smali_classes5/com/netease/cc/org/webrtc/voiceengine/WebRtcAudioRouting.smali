.class public Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;
.super Ljava/lang/Object;
.source "WebRtcAudioRouting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;,
        Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;,
        Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_NOTIFY_DELAY:I = 0x320

.field private static final EVENT_BLUETOOTH_PLUGIN:I = 0x2

.field private static final EVENT_BLUETOOTH_SCO_CHANGED:I = 0x3

.field private static final EVENT_GO_BACKGROUND:I = 0x5

.field private static final EVENT_HEADSET_PLUGIN:I = 0x1

.field private static final EVENT_PHONE_CALL:I = 0x4

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AudioRoute"

.field public static phoneStatePermission:Z = true


# instance fields
.field private audioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private final audioManager:Landroid/media/AudioManager;

.field private ccHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBTHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Landroid/os/Handler;

.field private mIsBTHeadSetRegistered:Z

.field private mIsHeadSetRegistered:Z

.field private mNativeInstance:J

.field private mNeedSco:Z

.field private mRoutingEnabled:Z

.field private mScoStarted:Z

.field private mThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;

.field private phonelistener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mRoutingEnabled:Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mNeedSco:Z

    .line 57
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mScoStarted:Z

    .line 63
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsHeadSetRegistered:Z

    .line 66
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsBTHeadSetRegistered:Z

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->phonelistener:Landroid/telephony/PhoneStateListener;

    .line 79
    iput-wide p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mNativeInstance:J

    .line 80
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    const-string p2, "audio"

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mRoutingEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;JII)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->nativeSendEvent(JII)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->updateSpeaker()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;III)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->sendEventDelay(III)V

    return-void
.end method

.method static synthetic access$602(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->sendEvent(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initInThread()V

    return-void
.end method

.method private getBtConnectState(I)Z
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 556
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v0, v2, :cond_4

    if-ne p1, v4, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 559
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 560
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 568
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 570
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBtConnectState error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioRoute"

    invoke-static {v0, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return v1
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 177
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

.method private initBackgroundListener()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->getInstance(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->setRouting(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    return-void
.end method

.method private initBluetooth()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "AudioRoute"

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "do not support BT monitoring on this device"

    .line 218
    invoke-static {v4, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_2

    const-string v1, "Bluetooth service Listener already been initialized"

    .line 223
    invoke-static {v4, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    :try_start_0
    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$3;

    invoke-direct {v1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$3;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize failed: unable to create BluetoothProfile.ServiceListener, err="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "lacks BLUETOOTH permission"

    .line 247
    invoke-static {v4, v0}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_3
    :try_start_1
    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;)V

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create BluetoothHeadsetBroadcastReceiver, err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_4

    .line 257
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    .line 259
    :try_start_2
    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBTAdapter.getProfileProxy err:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 269
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 270
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 271
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    :try_start_3
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver mBTHeadsetReceiver error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_3
    iput-boolean v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsBTHeadSetRegistered:Z

    return-void

    :cond_4
    const-string v0, "initialize: failed to get bluetooth adapter!!"

    .line 264
    invoke-static {v4, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initDeviceChangeCallBack()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 185
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$2;

    invoke-direct {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$2;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 208
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method private initHeadSet()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->ccHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

    invoke-direct {v0, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->ccHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->ccHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver ccHeadsetReceiver error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsHeadSetRegistered:Z

    :cond_1
    return-void
.end method

.method private initInThread()V
    .locals 1

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mEventHandler:Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initHeadSet()V

    .line 96
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initBluetooth()V

    .line 98
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initDeviceChangeCallBack()V

    .line 100
    sget-boolean v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->phoneStatePermission:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initPhoneStateListener()V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initBackgroundListener()V

    .line 106
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->initNetworkListener()V

    .line 108
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->updateSpeaker()V

    return-void
.end method

.method private initNetworkListener()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "connectivity"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 357
    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$5;

    invoke-direct {v1, p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$5;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;Landroid/net/ConnectivityManager;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNetworkListener addObserver error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initPhoneStateListener()V
    .locals 6

    const-string v0, "AudioRoute"

    .line 283
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "phone"

    .line 286
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 287
    new-instance v2, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$4;

    invoke-direct {v2, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$4;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->phonelistener:Landroid/telephony/PhoneStateListener;

    .line 304
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 306
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateInitialized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->setPhoneState(Z)V

    .line 308
    invoke-static {v3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->setPhoneState(Z)V

    const/4 v3, 0x4

    .line 309
    invoke-direct {p0, v3, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->sendEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize phone state error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->phonelistener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listen phone state error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private native nativeCallStateChanged(I)V
.end method

.method private native nativeSendEvent(JII)V
.end method

.method private sendEvent(II)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mRoutingEnabled:Z

    if-eqz v0, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mNativeInstance:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->nativeSendEvent(JII)V

    :cond_0
    return-void
.end method

.method private sendEventDelay(III)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEventDelay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " millis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;II)V

    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startBtSco()V
    .locals 3

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mScoStarted:Z

    const-string v1, "AudioRoute"

    const-string v2, "startBtSco"

    .line 422
    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 424
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void
.end method

.method private stopBtSco()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "stopBtSco"

    .line 429
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mScoStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mScoStarted:Z

    .line 434
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 435
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void
.end method

.method private updateBtSco()V
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mRoutingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mNeedSco:Z

    if-eqz v0, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->startBtSco()V

    goto :goto_0

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->stopBtSco()V

    :goto_0
    return-void
.end method

.method private updateSpeaker()V
    .locals 4

    .line 400
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->wiredHeadsetPlugged()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->btHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->btA2DPPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 401
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeakerOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioRoute"

    invoke-static {v3, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method


# virtual methods
.method public btA2DPPlugged()Z
    .locals 1

    const/4 v0, 0x2

    .line 548
    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->getBtConnectState(I)Z

    move-result v0

    return v0
.end method

.method public btHeadsetPlugged()Z
    .locals 1

    const/4 v0, 0x1

    .line 544
    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->getBtConnectState(I)Z

    move-result v0

    return v0
.end method

.method public disableAudioRouting(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 540
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mRoutingEnabled:Z

    return-void
.end method

.method public dispose()V
    .locals 7

    const-string v0, "AudioRoute"

    const-string v1, "AudioRouting dispose"

    .line 112
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 114
    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_1

    .line 118
    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 122
    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->ccHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsHeadSetRegistered:Z

    if-eqz v5, :cond_2

    .line 124
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to unregisterReceiver ccHeadsetReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    iput-boolean v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsHeadSetRegistered:Z

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;

    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsBTHeadSetRegistered:Z

    if-eqz v5, :cond_3

    .line 133
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to unregisterReceiver mBTHeadsetReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_1
    iput-boolean v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mIsBTHeadSetRegistered:Z

    .line 140
    :cond_3
    invoke-static {v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->getInstance(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->setRouting(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    .line 142
    :cond_4
    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->ccHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$CCHeadsetReceiver;

    .line 143
    iput-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mBTHeadsetReceiver:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;

    .line 145
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->joinThread()V

    :cond_5
    return-void
.end method

.method public enableSco(Z)V
    .locals 0

    .line 406
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mNeedSco:Z

    .line 407
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->updateBtSco()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 86
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->mThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;

    .line 87
    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->start()V

    return-void
.end method

.method public onBackgroundChange(I)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundChange status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->sendEvent(II)V

    return-void
.end method

.method public wiredHeadsetPlugged()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
