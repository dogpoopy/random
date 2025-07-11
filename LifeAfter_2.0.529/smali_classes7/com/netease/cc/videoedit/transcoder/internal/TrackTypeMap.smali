.class public Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
.super Ljava/lang/Object;
.source "TrackTypeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->map:Ljava/util/Map;

    .line 23
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0, p2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 24
    sget-object p2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, p2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
            ")TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAudio()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVideo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasAudio()Z
    .locals 1

    .line 78
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->has(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result v0

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .line 82
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->has(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result v0

    return v0
.end method

.method public require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
            ")TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public requireAudio()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requireVideo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
            "TT;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAudio(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method public setVideo(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p0, v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-void
.end method
