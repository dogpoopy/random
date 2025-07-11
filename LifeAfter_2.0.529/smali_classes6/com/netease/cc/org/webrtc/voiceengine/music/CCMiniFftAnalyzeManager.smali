.class public Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;
.super Ljava/lang/Object;
.source "CCMiniFftAnalyzeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager$FftDataCallback;
    }
.end annotation


# static fields
.field private static _instance:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;


# instance fields
.field private _cb:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager$FftDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;

    invoke-direct {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;-><init>()V

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;->_instance:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;->_instance:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;

    return-object v0
.end method


# virtual methods
.method public native getNativeFftCallback(I)J
.end method

.method public onFftData([I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;->_cb:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager$FftDataCallback;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager$FftDataCallback;->onGetData([I)V

    :cond_0
    return-void
.end method

.method public setFftAnalyzeCallback(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager$FftDataCallback;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager;->_cb:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniFftAnalyzeManager$FftDataCallback;

    return-void
.end method
