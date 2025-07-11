.class public interface abstract Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;
.super Ljava/lang/Object;
.source "AudioRemixer.java"


# static fields
.field public static final DOWNMIX:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

.field public static final PASSTHROUGH:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

.field public static final UPMIX:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/remix/DownMixAudioRemixer;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/remix/DownMixAudioRemixer;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->DOWNMIX:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    .line 35
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/remix/UpMixAudioRemixer;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/remix/UpMixAudioRemixer;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->UPMIX:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    .line 37
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/remix/PassThroughAudioRemixer;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/remix/PassThroughAudioRemixer;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;->PASSTHROUGH:Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;

    return-void
.end method


# virtual methods
.method public abstract getRemixedSize(I)I
.end method

.method public abstract remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
.end method
