.class Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;
.super Ljava/lang/Object;
.source "DefaultDataSinkChecks.java"


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAudioOutputFormat(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "mime"

    .line 66
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio/mp4a-latm"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/sink/InvalidOutputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio codecs other than AAC is not supported, actual mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/cc/videoedit/transcoder/sink/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkVideoOutputFormat(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "mime"

    .line 43
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/avc"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/internal/AvcCsdUtils;->getSpsBuffer(Landroid/media/MediaFormat;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/internal/AvcSpsUtils;->getProfileIdc(Ljava/nio/ByteBuffer;)B

    move-result p1

    .line 57
    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/internal/AvcSpsUtils;->getProfileName(B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    const-string v2, "Output H.264 profile: "

    if-ne p1, v1, :cond_0

    .line 59
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This might not be supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance p1, Lcom/netease/cc/videoedit/transcoder/sink/InvalidOutputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video codecs other than AVC is not supported, actual mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netease/cc/videoedit/transcoder/sink/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method checkOutputFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_0

    .line 36
    invoke-direct {p0, p2}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->checkVideoOutputFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_1

    .line 38
    invoke-direct {p0, p2}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->checkAudioOutputFormat(Landroid/media/MediaFormat;)V

    :cond_1
    :goto_0
    return-void
.end method
