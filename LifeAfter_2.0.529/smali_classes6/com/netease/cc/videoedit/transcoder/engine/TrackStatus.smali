.class public final enum Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;
.super Ljava/lang/Enum;
.source "TrackStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

.field public static final enum ABSENT:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

.field public static final enum COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

.field public static final enum PASS_THROUGH:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

.field public static final enum REMOVING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    const/4 v1, 0x0

    const-string v2, "ABSENT"

    invoke-direct {v0, v2, v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->ABSENT:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 15
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    const/4 v2, 0x1

    const-string v3, "REMOVING"

    invoke-direct {v0, v3, v2}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->REMOVING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 20
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    const/4 v3, 0x2

    const-string v4, "PASS_THROUGH"

    invoke-direct {v0, v4, v3}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->PASS_THROUGH:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 25
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    const/4 v4, 0x3

    const-string v5, "COMPRESSING"

    invoke-direct {v0, v5, v4}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 6
    sget-object v5, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->ABSENT:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->REMOVING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->PASS_THROUGH:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->$VALUES:[Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->$VALUES:[Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v0}, [Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object v0
.end method


# virtual methods
.method public isTranscoding()Z
    .locals 3

    .line 36
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus$1;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackStatus:[I

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v2

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected track status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1
.end method
