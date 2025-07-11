.class public Lcom/netease/cc/videoedit/transcoder/remix/UpMixAudioRemixer;
.super Ljava/lang/Object;
.source "UpMixAudioRemixer.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/remix/AudioRemixer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemixedSize(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
    .locals 3

    .line 15
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    .line 16
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    .line 21
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 22
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
