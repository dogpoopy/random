.class final enum Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;
.super Ljava/lang/Enum;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DECODER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

.field public static final enum HARDWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

.field public static final enum SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 189
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    const-string v1, "SOFTWARE_DECODER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->SOFTWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    const-string v3, "HARDWARE_DECODER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->HARDWARE_DECODER:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->$VALUES:[Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;
    .locals 1

    .line 189
    const-class v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    return-object p0
.end method

.method public static values()[Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;
    .locals 1

    .line 189
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->$VALUES:[Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    invoke-virtual {v0}, [Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DECODER_TYPE;

    return-object v0
.end method
