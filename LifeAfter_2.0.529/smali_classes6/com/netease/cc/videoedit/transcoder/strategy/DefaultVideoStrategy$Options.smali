.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;
.super Ljava/lang/Object;
.source "DefaultVideoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;

.field private targetBitRate:J

.field private targetFrameRate:I

.field private targetKeyFrameInterval:F

.field private targetMimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->resizer:Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetFrameRate:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetFrameRate:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetBitRate:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetBitRate:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetKeyFrameInterval:F

    return p0
.end method

.method static synthetic access$402(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetKeyFrameInterval:F

    return p1
.end method

.method static synthetic access$500(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p1
.end method
