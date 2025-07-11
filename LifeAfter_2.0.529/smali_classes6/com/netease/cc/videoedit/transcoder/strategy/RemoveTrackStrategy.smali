.class public Lcom/netease/cc/videoedit/transcoder/strategy/RemoveTrackStrategy;
.super Ljava/lang/Object;
.source "RemoveTrackStrategy.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 21
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->REMOVING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object p1
.end method
