.class public Ltv/danmaku/ijk/media/player/PlayerConfig;
.super Ljava/lang/Object;
.source "PlayerConfig.java"


# instance fields
.field public anchorCCid:I

.field public ccid:I

.field public cdn:Ljava/lang/String;

.field public client_no:Ljava/lang/String;

.field public context:I

.field public eid:I

.field public gametype:I

.field public identity:Ljava/lang/String;

.field public panorama:I

.field public roomId:I

.field public sid:Ljava/lang/String;

.field public src:Ljava/lang/String;

.field public strGameUid:Ljava/lang/String;

.field public strLogExtraInfo:Ljava/lang/String;

.field public subId:I

.field public templateType:I

.field public uid:J

.field public unisdkDeviceId:Ljava/lang/String;

.field public urs:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->eid:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->uid:J

    .line 6
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->ccid:I

    .line 7
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->anchorCCid:I

    .line 8
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->templateType:I

    .line 9
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->roomId:I

    .line 10
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->subId:I

    .line 11
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->context:I

    .line 12
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->gametype:I

    .line 13
    iput v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->panorama:I

    const-string v0, "-2"

    .line 22
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->unisdkDeviceId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/PlayerConfig;->client_no:Ljava/lang/String;

    return-void
.end method
