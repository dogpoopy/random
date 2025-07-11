.class synthetic Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider$1;
.super Ljava/lang/Object;
.source "MediaFormatProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->values()[Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider$1;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackType:[I

    :try_start_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider$1;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackType:[I

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider$1;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackType:[I

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
