.class public Lcom/netease/cc/videoedit/transcoder/remix/PassThroughAudioRemixer;
.super Ljava/lang/Object;
.source "PassThroughAudioRemixer.java"

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

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 14
    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    return-void
.end method
