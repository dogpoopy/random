.class public Lcom/netease/cc/videoedit/transcoder/strategy/PassThroughTrackStrategy;
.super Ljava/lang/Object;
.source "PassThroughTrackStrategy.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;"
        }
    .end annotation

    .line 23
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->PASS_THROUGH:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object p1
.end method
