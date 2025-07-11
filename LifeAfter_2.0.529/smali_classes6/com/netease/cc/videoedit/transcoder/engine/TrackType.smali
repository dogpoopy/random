.class public final enum Lcom/netease/cc/videoedit/transcoder/engine/TrackType;
.super Ljava/lang/Enum;
.source "TrackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

.field public static final enum AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

.field public static final enum VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    const/4 v1, 0x0

    const-string v2, "VIDEO"

    invoke-direct {v0, v2, v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    const/4 v2, 0x1

    const-string v3, "AUDIO"

    invoke-direct {v0, v3, v2}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    .line 6
    sget-object v3, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->$VALUES:[Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/engine/TrackType;
    .locals 1

    .line 6
    const-class v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/videoedit/transcoder/engine/TrackType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->$VALUES:[Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v0}, [Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    return-object v0
.end method
