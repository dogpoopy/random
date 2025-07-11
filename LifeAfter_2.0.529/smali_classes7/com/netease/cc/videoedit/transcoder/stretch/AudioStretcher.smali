.class public interface abstract Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;
.super Ljava/lang/Object;
.source "AudioStretcher.java"


# static fields
.field public static final CUT:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

.field public static final INSERT:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

.field public static final PASSTHROUGH:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/stretch/PassThroughAudioStretcher;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/stretch/PassThroughAudioStretcher;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->PASSTHROUGH:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 33
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/stretch/CutAudioStretcher;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/stretch/CutAudioStretcher;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->CUT:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 35
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;->INSERT:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    return-void
.end method


# virtual methods
.method public abstract stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
.end method
