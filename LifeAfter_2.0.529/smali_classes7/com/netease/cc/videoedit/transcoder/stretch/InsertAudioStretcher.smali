.class public Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;
.super Ljava/lang/Object;
.source "InsertAudioStretcher.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;


# static fields
.field private static final NOISE:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->NOISE:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static noise()S
    .locals 2

    .line 18
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->NOISE:Ljava/util/Random;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method private static ratio(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
    .locals 7

    .line 27
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_1

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal use of AudioStretcher.INSERT. Channels:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    div-int/2addr v0, p3

    .line 34
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v4, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 37
    invoke-static {v0, v0}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->ratio(II)F

    move-result v3

    .line 38
    invoke-static {v2, v2}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->ratio(II)F

    move-result v4

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    :goto_1
    if-lez v2, :cond_5

    if-lez v3, :cond_5

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_3

    .line 43
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p3, v1, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 46
    invoke-static {v2, v0}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->ratio(II)F

    move-result v4

    goto :goto_1

    .line 48
    :cond_3
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->noise()S

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p3, v1, :cond_4

    .line 49
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->noise()S

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 51
    invoke-static {v3, v0}, Lcom/netease/cc/videoedit/transcoder/stretch/InsertAudioStretcher;->ratio(II)F

    move-result v5

    goto :goto_1

    :cond_5
    return-void

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of AudioStretcher.INSERT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
