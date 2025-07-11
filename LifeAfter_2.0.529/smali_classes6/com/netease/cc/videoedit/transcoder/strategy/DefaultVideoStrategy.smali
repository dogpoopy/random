.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;
.super Ljava/lang/Object;
.source "DefaultVideoStrategy.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;,
        Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;
    }
.end annotation


# static fields
.field public static final BITRATE_UNKNOWN:J = -0x8000000000000000L

.field public static final DEFAULT_FRAME_RATE:I = 0x1e

.field public static final DEFAULT_KEY_FRAME_INTERVAL:F = 3.0f

.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-class v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    return-void
.end method

.method public static aspectRatio(F)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 90
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/AspectRatioResizer;

    invoke-direct {v1, p0}, Lcom/netease/cc/videoedit/transcoder/strategy/size/AspectRatioResizer;-><init>(F)V

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-object v0
.end method

.method public static atMost(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 103
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;

    invoke-direct {v1, p0}, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-object v0
.end method

.method public static atMost(II)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 117
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;

    invoke-direct {v1, p0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-object v0
.end method

.method private checkMimeType(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)Z"
        }
    .end annotation

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 295
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$500(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static exact(II)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 64
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactResizer;

    invoke-direct {v1, p0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactResizer;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-object v0
.end method

.method public static fraction(F)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 77
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/FractionResizer;

    invoke-direct {v1, p0}, Lcom/netease/cc/videoedit/transcoder/strategy/size/FractionResizer;-><init>(F)V

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;)V

    return-object v0
.end method

.method private getAverageIFrameInterval(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    const-string v3, "i-frame-interval"

    .line 363
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 365
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 368
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private getBestInputSize(Ljava/util/List;)Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)",
            "Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 316
    new-array v1, v0, [F

    .line 317
    new-array v2, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "height"

    const-string v7, "width"

    if-ge v4, v0, :cond_3

    .line 319
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaFormat;

    .line 320
    invoke-virtual {v8, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 321
    invoke-virtual {v8, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const-string v9, "rotation-degrees"

    .line 323
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 324
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 326
    :goto_1
    rem-int/lit16 v8, v8, 0xb4

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 327
    :goto_2
    aput-boolean v8, v2, v4

    if-eqz v8, :cond_2

    div-float/2addr v6, v7

    goto :goto_3

    :cond_2
    div-float v6, v7, v6

    .line 328
    :goto_3
    aput v6, v1, v4

    .line 329
    aget v6, v1, v4

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    int-to-float v4, v0

    div-float/2addr v5, v4

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    :goto_4
    if-ge v3, v0, :cond_5

    .line 335
    aget v9, v1, v3

    sub-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v10, v9, v8

    if-gez v10, :cond_4

    move v4, v3

    move v8, v9

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 341
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    .line 342
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 343
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 344
    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;

    aget-boolean v3, v2, v4

    if-eqz v3, :cond_6

    move v3, p1

    goto :goto_5

    :cond_6
    move v3, v0

    :goto_5
    aget-boolean v2, v2, v4

    if-eqz v2, :cond_7

    move p1, v0

    :cond_7
    invoke-direct {v1, v3, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;-><init>(II)V

    return-object v1
.end method

.method private getMinFrameRate(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    const-string v3, "frame-rate"

    .line 352
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 221
    invoke-direct/range {p0 .. p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->checkMimeType(Ljava/util/List;)Z

    move-result v2

    .line 224
    invoke-direct/range {p0 .. p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->getBestInputSize(Ljava/util/List;)Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->getWidth()I

    move-result v4

    .line 226
    invoke-virtual {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->getHeight()I

    move-result v5

    .line 227
    sget-object v6, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input width&height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 230
    :try_start_0
    iget-object v6, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$100(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;->getOutputSize(Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    instance-of v7, v6, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;

    if-eqz v7, :cond_0

    .line 236
    move-object v4, v6

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;

    invoke-virtual {v4}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->getWidth()I

    move-result v5

    .line 237
    invoke-virtual {v4}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_0
    if-lt v4, v5, :cond_1

    .line 239
    invoke-virtual {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result v5

    .line 240
    invoke-virtual {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v4

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v5

    .line 243
    invoke-virtual {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result v4

    .line 245
    :goto_0
    sget-object v7, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Output width&height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->getMinor()I

    move-result v7

    invoke-virtual {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gt v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 250
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->getMinFrameRate(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 252
    iget-object v11, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v11}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_2

    .line 254
    :cond_3
    iget-object v11, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v11}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)I

    move-result v11

    :goto_2
    if-gt v8, v11, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 259
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->getAverageIFrameInterval(Ljava/util/List;)I

    move-result v13

    int-to-float v14, v13

    .line 260
    iget-object v15, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v15}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 266
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v9, :cond_6

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_7

    if-eqz v2, :cond_7

    if-eqz v7, :cond_7

    if-eqz v12, :cond_7

    if-eqz v14, :cond_7

    .line 268
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input minSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->getMinor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", desired minSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nInput frameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", desired frameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nInput iFrameInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", desired iFrameInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    .line 270
    invoke-static {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->PASS_THROUGH:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object v0

    .line 275
    :cond_7
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$500(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    .line 276
    invoke-virtual {v0, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "height"

    .line 277
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "rotation-degrees"

    .line 278
    invoke-virtual {v0, v2, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 279
    invoke-virtual {v0, v2, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 280
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const-string v6, "i-frame-interval"

    if-lt v2, v3, :cond_8

    .line 281
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v2

    invoke-virtual {v0, v6, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_6

    .line 283
    :cond_8
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_6
    const v2, 0x7f000789

    const-string v3, "color-format"

    .line 285
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 286
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$300(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)J

    move-result-wide v2

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v2, v6

    if-nez v8, :cond_9

    .line 287
    invoke-static {v5, v4, v11}, Lcom/netease/cc/videoedit/transcoder/internal/BitRates;->estimateVideoBitRate(III)J

    move-result-wide v2

    goto :goto_7

    :cond_9
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;

    .line 288
    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;->access$300(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Options;)J

    move-result-wide v2

    :goto_7
    long-to-int v3, v2

    const-string v2, "bitrate"

    .line 289
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 290
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object v0

    :catch_0
    move-exception v0

    .line 232
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Resizer error:"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
