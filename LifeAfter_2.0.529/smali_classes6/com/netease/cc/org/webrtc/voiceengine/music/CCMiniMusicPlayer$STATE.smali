.class final enum Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;
.super Ljava/lang/Enum;
.source "CCMiniMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

.field public static final enum PAUSE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

.field public static final enum PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

.field public static final enum RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

.field public static final enum STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 93
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    const-string v1, "PLAY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    new-instance v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    const-string v4, "PAUSE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PAUSE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    new-instance v4, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    const-string v6, "STOP"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    new-instance v6, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    const-string v8, "RELEASE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    new-array v8, v9, [Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 92
    sput-object v8, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->$VALUES:[Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;
    .locals 1

    .line 92
    const-class v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;
    .locals 1

    .line 92
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->$VALUES:[Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v0}, [Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->mValue:I

    return v0
.end method
