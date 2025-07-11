.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
.super Ljava/lang/Object;
.source "DefaultVideoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

.field private targetBitRate:J

.field private targetFrameRate:I

.field private targetKeyFrameInterval:F

.field private targetMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    const/16 v0, 0x1e

    .line 122
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 123
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    const/high16 v0, 0x40400000    # 3.0f

    .line 124
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    const-string v0, "video/avc"

    .line 125
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    const/16 v0, 0x1e

    .line 122
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 123
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    const/high16 v0, 0x40400000    # 3.0f

    .line 124
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    const-string v0, "video/avc"

    .line 125
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;->addResizer(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-void
.end method


# virtual methods
.method public addResizer(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;->addResizer(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-object p0
.end method

.method public bitRate(J)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 0

    .line 157
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    return-object p0
.end method

.method public build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;
    .locals 2

    .line 206
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->options()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)V

    return-object v0
.end method

.method public frameRate(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 0

    .line 169
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    return-object p0
.end method

.method public keyFrameInterval(F)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 0

    .line 181
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public options()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;
    .locals 3

    .line 195
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$1;)V

    .line 196
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/MultiResizer;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$102(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;

    .line 197
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetFrameRate:I

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$202(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;I)I

    .line 198
    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetBitRate:J

    invoke-static {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$302(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;J)J

    .line 199
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetKeyFrameInterval:F

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$402(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;F)F

    .line 200
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->targetMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$502(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
