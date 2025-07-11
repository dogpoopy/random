.class Lcom/netease/cc/screen_record/codec/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;,
        Lcom/netease/cc/screen_record/codec/Utils$Callback;
    }
.end annotation


# static fields
.field static sAACProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sAVCLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sAVCProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sColorFormats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    .line 204
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aacProfiles()[Ljava/lang/String;
    .locals 3

    .line 117
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/netease/cc/screen_record/codec/Utils;->initProfileLevels()V

    .line 120
    :cond_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 121
    :goto_0
    sget-object v2, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    sget-object v2, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static avcProfileLevelToString(Landroid/media/MediaCodecInfo$CodecProfileLevel;)Ljava/lang/String;
    .locals 4

    .line 93
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    invoke-static {}, Lcom/netease/cc/screen_record/codec/Utils;->initProfileLevels()V

    .line 97
    :cond_1
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    iget v1, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 99
    sget-object v2, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 102
    :goto_0
    sget-object v2, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    iget v3, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 104
    sget-object v1, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    if-nez v0, :cond_4

    .line 108
    iget v0, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v1, :cond_5

    .line 111
    iget p0, p0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static findEncodersByType(Ljava/lang/String;)[Landroid/media/MediaCodecInfo;
    .locals 6

    .line 64
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 67
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/media/MediaCodecInfo;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/MediaCodecInfo;

    return-object p0
.end method

.method static findEncodersByTypeAsync(Ljava/lang/String;Lcom/netease/cc/screen_record/codec/Utils$Callback;)V
    .locals 2

    .line 55
    new-instance v0, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;

    invoke-direct {v0, p1}, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;-><init>(Lcom/netease/cc/screen_record/codec/Utils$Callback;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static initColorFormatFields()V
    .locals 6

    .line 229
    const-class v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 230
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 231
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x18

    if-nez v4, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COLOR_"

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 237
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 238
    sget-object v5, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static initProfileLevels()V
    .locals 7

    .line 179
    const-class v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 180
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 181
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x18

    if-nez v4, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AVCProfile"

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    sget-object v5, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    const-string v5, "AVCLevel"

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    sget-object v5, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    const-string v5, "AACObject"

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    sget-object v5, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    :goto_1
    const/4 v6, 0x0

    .line 196
    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static keyOfValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 170
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static toColorFormat(Ljava/lang/String;)I
    .locals 1

    .line 216
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/netease/cc/screen_record/codec/Utils;->initColorFormatFields()V

    .line 219
    :cond_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/netease/cc/screen_record/codec/Utils;->keyOfValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    return v0

    :cond_1
    const-string v0, "0x"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static toHumanReadable(I)Ljava/lang/String;
    .locals 2

    .line 207
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/netease/cc/screen_record/codec/Utils;->initColorFormatFields()V

    .line 210
    :cond_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 211
    sget-object p0, Lcom/netease/cc/screen_record/codec/Utils;->sColorFormats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toProfileLevel(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 5

    .line 128
    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    invoke-static {}, Lcom/netease/cc/screen_record/codec/Utils;->initProfileLevels()V

    :cond_1
    const/16 v0, 0x2d

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 139
    :goto_0
    new-instance v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    const-string v3, "AVC"

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    sget-object v4, Lcom/netease/cc/screen_record/codec/Utils;->sAVCProfiles:Landroid/util/SparseArray;

    invoke-static {v4, p0}, Lcom/netease/cc/screen_record/codec/Utils;->keyOfValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    goto :goto_1

    :cond_3
    const-string v4, "AAC"

    .line 142
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    sget-object v4, Lcom/netease/cc/screen_record/codec/Utils;->sAACProfiles:Landroid/util/SparseArray;

    invoke-static {v4, p0}, Lcom/netease/cc/screen_record/codec/Utils;->keyOfValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    goto :goto_1

    .line 146
    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 154
    sget-object p0, Lcom/netease/cc/screen_record/codec/Utils;->sAVCLevels:Landroid/util/SparseArray;

    invoke-static {p0, v0}, Lcom/netease/cc/screen_record/codec/Utils;->keyOfValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    goto :goto_2

    .line 157
    :cond_5
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    return-object v1

    .line 164
    :cond_6
    :goto_2
    iget p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-lez p0, :cond_7

    iget p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ltz p0, :cond_7

    move-object v1, v2

    :catch_1
    :cond_7
    return-object v1
.end method
