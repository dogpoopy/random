.class public final Lcom/appsflyer/internal/AFd1qSDK;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1qSDK$AFa1ySDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventType:C = '\u0000'

.field private static AFKeystoreWrapper:C = '\u0000'

.field private static AFLogger:I = 0x0

.field private static d:[B = null

.field private static e:I = 0x0

.field private static force:I = 0x0

.field private static registerClient:C = '\u0000'

.field private static unregisterClient:I = 0x0

.field private static v:[S = null

.field private static valueOf:C = '\u0000'

.field private static w:I = 0x1


# instance fields
.field private final AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    const-string v1, ""

    invoke-static {v1, v1, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    invoke-static {v1, v1, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    const/16 v2, 0x30

    invoke-static {v1, v2, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    invoke-static {v1, v0}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    invoke-static {v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AFInAppEventParameterName()Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "\u114d\udb2b\ue21f\u2d74\u2c10\u3abc\uee37\u30e2\ue460\u1471\u3d38\u914e\ud082\u44d3\u68d8\u1435\u5e49\u34d2\u6891\u92fa\uac97\u88d8\u0950\uc58b\u7a4f\u6fdb\u7518\uaa98\u2d38\u5a2f\ud7fa\ubbda\u3d57\u7d7b\u566c\uf367\u4b93\ube74\uc286\u9bcb\u7aa9\u3761\u5b5a\ufd5f"

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/16 v6, 0x30

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 121
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v11, "\ubdcd\u7343\u37e7\uaef3\u76b5\u8628\u342c\u7592\u520a\ue36f\u04b8\uf739"

    invoke-static {v10, v10}, Landroid/view/View;->getDefaultSize(II)I

    move-result v12

    rsub-int/lit8 v12, v12, 0xc

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v11, v13, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v11, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    add-int/lit8 v12, v12, -0x22

    int-to-short v13, v12

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    int-to-byte v14, v12

    const v12, 0x6e712801

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v15

    sub-int v15, v12, v15

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v12, v16, v18

    rsub-int/lit8 v16, v12, -0x57

    const v12, 0xf88d7e7

    invoke-static {v10, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v17

    add-int v17, v17, v12

    new-array v12, v9, [Ljava/lang/Object;

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v12, v12, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 123
    invoke-static {v3, v6, v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v12

    rsub-int/lit8 v12, v12, -0x2b

    int-to-short v13, v12

    invoke-static {v8, v8}, Landroid/graphics/PointF;->length(FF)F

    move-result v12

    cmpl-float v12, v12, v8

    int-to-byte v14, v12

    const v12, 0x6e7127d1

    invoke-static {v10, v10, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v16

    cmp-long v12, v16, v4

    add-int/lit8 v16, v12, -0x60

    const v12, 0xf88d7f5

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    sub-int v17, v12, v17

    new-array v12, v9, [Ljava/lang/Object;

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v12, v12, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\ud238\u73ed\ub85a\ubddc\ucc3b\u6195"

    .line 124
    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v14

    add-int/lit8 v14, v14, -0x2b

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v13, v15, v10

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v11

    shr-int/2addr v11, v7

    rsub-int/lit8 v11, v11, -0x7

    int-to-short v12, v11

    invoke-static {v8, v8}, Landroid/graphics/PointF;->length(FF)F

    move-result v11

    cmpl-float v11, v11, v8

    int-to-byte v13, v11

    const v11, 0x6e712802

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v14

    shr-int/2addr v14, v7

    sub-int v14, v11, v14

    invoke-static {v10, v10}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    rsub-int/lit8 v15, v11, -0x41

    const v11, 0xf88d7fa

    invoke-static {v10}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x14

    shr-int/lit8 v16, v16, 0x6

    add-int v16, v16, v11

    new-array v11, v9, [Ljava/lang/Object;

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v11, v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v12

    add-int/lit8 v12, v12, 0x2c

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v2, v12, v13}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v12, v13, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v11

    shr-int/2addr v11, v7

    rsub-int/lit8 v11, v11, -0x34

    int-to-short v12, v11

    invoke-static {v3, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v11

    add-int/2addr v11, v9

    int-to-byte v13, v11

    const v11, 0x6e7127fd

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v14

    shr-int/lit8 v14, v14, 0x8

    sub-int v14, v11, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    shr-int/2addr v11, v7

    add-int/lit8 v15, v11, -0x55

    const v11, 0xf88d81e

    invoke-static {v3, v6, v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v16

    sub-int v16, v11, v16

    new-array v11, v9, [Ljava/lang/Object;

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v11, v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 135
    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    const/4 v12, 0x0

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "\u5d68\ubf26\u569b\u4794\u0d45\u6892\u36d6\u0c12\u68d8\u1435\u1cce\ucf3b\u12c1\ucf42\u5c23\u0ff7\u4227\u7125\uc10d\u516a\u8b75\uedc0\u505f\ucc1a\u563d\u4e22\ue950\u1522\ue27f\u975a\uc4db\u5870\u84d0\u6ca8\ua9cf\ua6d8\u890f\uec5b"

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v15

    shr-int/2addr v15, v7

    add-int/lit8 v15, v15, 0x25

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v14, v15, v6}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v6, v6, v10

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, -0xa8c

    if-eqz v0, :cond_0

    .line 156
    sget v12, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v12, v12, 0x39

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v12, v12, 0x2

    .line 138
    :try_start_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v12

    shr-int/2addr v12, v7

    rsub-int/lit8 v12, v12, -0x67

    int-to-short v12, v12

    invoke-static {v10, v10}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v13

    int-to-byte v13, v13

    const v14, 0x6e71280f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    add-int v19, v15, v14

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v14

    cmp-long v17, v14, v4

    add-int/lit8 v20, v17, -0x5b

    const v14, 0xf88d830

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v15

    shr-int/lit8 v15, v15, 0x18

    sub-int v21, v14, v15

    new-array v14, v9, [Ljava/lang/Object;

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v22, v14

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v12, v14, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 140
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 141
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v12

    cmpl-float v12, v12, v8

    add-int/lit8 v12, v12, 0x7

    int-to-short v12, v12

    const/16 v13, 0x30

    invoke-static {v3, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v13

    rsub-int/lit8 v13, v13, -0x1

    int-to-byte v13, v13

    const v14, 0x6e712813

    invoke-static {v10}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x14

    shr-int/lit8 v15, v15, 0x6

    add-int v19, v15, v14

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v14

    cmpl-float v14, v14, v8

    add-int/lit8 v20, v14, -0x64

    const v14, 0xf88d83a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    add-int v21, v15, v14

    new-array v14, v9, [Ljava/lang/Object;

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v22, v14

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v12, v14, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v0, v9, :cond_2

    goto :goto_2

    .line 156
    :cond_2
    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v12, v0, 0x80

    sput v12, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 142
    :goto_3
    :try_start_3
    iget-object v12, v1, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    const-string v13, "\u23fa\u3df1\u1587\u0b8c\ud740\u1e85"

    invoke-static {v10, v8, v8}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v14

    cmpl-float v8, v14, v8

    add-int/lit8 v8, v8, 0x6

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v13, v8, v14}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v8, v14, v10

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    const/4 v12, -0x1

    .line 143
    invoke-virtual {v8, v12}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 144
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4dc8\u498f"

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    shr-int/2addr v14, v7

    add-int/2addr v14, v9

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v13, v15, v10

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v10, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    add-int/lit8 v6, v6, -0x53

    int-to-short v13, v6

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    add-int/2addr v6, v9

    int-to-byte v14, v6

    const v6, 0x6e7127c1

    invoke-static {v3, v10}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v15

    sub-int v15, v6, v15

    invoke-static {v3, v10, v10}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    rsub-int/lit8 v16, v6, -0x65

    const v6, 0xf88d83c

    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    add-int v17, v3, v6

    new-array v3, v9, [Ljava/lang/Object;

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v18}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v3, v3, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u00df\u3756"

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v13

    cmp-long v3, v13, v4

    rsub-int/lit8 v3, v3, 0x1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v4, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u1db9\u3f75"

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v4, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-static {v0}, Lcom/appsflyer/internal/AFd1qSDK$AFa1ySDK;->AFKeystoreWrapper(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1qSDK$AFa1ySDK;->values([B)[B

    move-result-object v0

    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    array-length v5, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_4

    const/16 v8, 0xf

    goto :goto_5

    :cond_4
    const/16 v8, 0x51

    :goto_5
    const/16 v12, 0x51

    if-eq v8, v12, :cond_6

    aget-byte v8, v0, v6

    .line 1191
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1192
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v9, :cond_5

    const-string v12, "0"

    .line 1193
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1195
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1197
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    sget v2, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    const/16 v2, 0x24

    goto :goto_6

    :cond_7
    const/16 v2, 0x45

    :goto_6
    const/16 v3, 0x24

    goto :goto_7

    :catch_1
    move-exception v0

    .line 152
    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/2addr v3, v7

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "\uac60\ue0a1\u4582\ueeac\ueff2\u047e\u9be5\ueaf3\ue575\u9e4b\u3d57\u7d7b\ua4b6\u9819\ud740\u1e85"

    invoke-static {v5, v3, v4}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v4, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x2c

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v5, v10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    sub-int/2addr v7, v2

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "\u63c4\u21d5\u44cf\u9328\uf8cf\u74c6\u3861\u5194\u81ea\u99b7(\u3ea3\u9836\u2953\u70af\u4344"

    invoke-static {v3, v7, v2}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v2, v10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0
.end method

.method static AFInAppEventType()V
    .locals 1

    const/16 v0, 0x5ec8

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper:C

    const v0, 0xf8e9

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->registerClient:C

    const/16 v0, 0x1564

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType:C

    const v0, 0xfc6f

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->valueOf:C

    const v0, -0x4e0f7081

    sput v0, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    const v0, 0x4187a769

    sput v0, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    const v0, -0x2ff68095

    sput v0, Lcom/appsflyer/internal/AFd1qSDK;->unregisterClient:I

    const/16 v0, 0xb9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x38t
        -0x4ft
        -0x7t
        0x0t
        -0x5t
        0x54t
        -0x5ct
        0x19t
        -0xdt
        0x40t
        -0x4dt
        0xat
        -0xdt
        0x40t
        -0x4et
        -0xet
        0x6t
        -0xat
        0x18t
        -0x4t
        0x1et
        -0xct
        0x2t
        0xft
        0x44t
        -0x4ft
        0xct
        -0xet
        0x8t
        0x5t
        -0x10t
        0x47t
        -0x5ct
        0x19t
        0x13t
        0x12t
        -0x2ft
        -0x15t
        0x1ct
        0xft
        0x44t
        -0x69t
        0x71t
        -0x44t
        -0x49t
        -0x5at
        -0x47t
        -0x50t
        -0x45t
        -0x70t
        -0x38t
        -0xat
        0x65t
        -0x57t
        -0x50t
        -0x55t
        0x4t
        0x54t
        -0x37t
        -0x5dt
        -0x10t
        0x63t
        -0x46t
        -0x5dt
        -0x10t
        0x62t
        -0x5et
        -0x4at
        -0x5at
        -0x38t
        -0x54t
        -0x32t
        -0x5ct
        -0x4et
        -0x41t
        -0xct
        0x61t
        -0x44t
        -0x5et
        -0x48t
        -0x4bt
        -0x60t
        -0x55t
        -0x55t
        -0x55t
        0x76t
        -0x58t
        -0x6ft
        0x1dt
        0x3bt
        0x31t
        -0x10t
        0x29t
        0x19t
        0x15t
        0x38t
        0x39t
        -0xct
        0x2dt
        0x2dt
        0x25t
        0x2bt
        0x22t
        0x2bt
        0x22t
        0x23t
        0x2ct
        -0x7t
        0x1et
        0x1ct
        -0x4t
        0x53t
        -0x31t
        0x6t
        0xft
        0x5ct
        -0x32t
        0xet
        0x2t
        -0xet
        0x14t
        -0x8t
        0x1at
        -0x10t
        0x1et
        0xbt
        0x40t
        -0x33t
        0x8t
        0xet
        0x4t
        0x1t
        0xct
        0x43t
        -0x34t
        -0x7t
        0x1et
        0x1ct
        0x1ct
        0x25t
        -0x13t
        -0x19t
        0x18t
        0xbt
        0x35t
        0x3bt
        0x3ct
        0xet
        0x67t
        0x22t
        0x7t
        0x66t
        0x3et
        0x3dt
        0x37t
        -0xft
        0x36t
        0x3et
        0x39t
        0x3bt
        0x3dt
        0x54t
        0x6at
        0x66t
        0x74t
        0x58t
        0x7at
        0x52t
        0x64t
        0x61t
        0x56t
        -0x7t
        -0x49t
        -0x55t
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
    .end array-data
.end method

.method private static varargs AFKeystoreWrapper([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    array-length v1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_5

    const/4 v5, 0x0

    .line 70
    array-length v6, p0

    move-object v6, v5

    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x42

    const/16 v8, 0x39

    if-ge v5, v3, :cond_1

    const/16 v9, 0x42

    goto :goto_3

    :cond_1
    const/16 v9, 0x39

    :goto_3
    if-eq v9, v7, :cond_3

    .line 74
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 77
    sget v5, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v5, v5, 0x37

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :cond_2
    const/4 v5, 0x5

    goto :goto_1

    :cond_3
    sget v7, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v7, v7, 0x6b

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    rem-int/lit8 v7, v7, 0x2

    .line 70
    aget-object v7, p0, v5

    .line 71
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v6, :cond_4

    .line 77
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v6, v6, 0xd

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    :goto_4
    rem-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 72
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    xor-int/2addr v7, v6

    .line 77
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/2addr v6, v8

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    goto :goto_4

    .line 72
    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    const/16 v0, 0x4f

    if-eqz p0, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, 0x25

    :goto_0
    const/4 v2, 0x2

    if-eq v1, v0, :cond_1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2124
    sget v1, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    rem-int/2addr v1, v2

    .line 0
    :goto_1
    check-cast v0, [C

    .line 2095
    new-instance v1, Lcom/appsflyer/internal/AFj1pSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1pSDK;-><init>()V

    .line 2097
    array-length v3, v0

    new-array v3, v3, [C

    const/4 v4, 0x0

    .line 2099
    iput v4, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    new-array v5, v2, [C

    .line 2124
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    add-int/lit8 v6, v6, 0x41

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    rem-int/2addr v6, v2

    .line 2101
    :goto_2
    iget v6, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    array-length v7, v0

    const/4 v8, 0x1

    if-ge v6, v7, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_3

    .line 2124
    new-instance v0, Ljava/lang/String;

    move/from16 v6, p1

    invoke-direct {v0, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v4

    return-void

    :cond_3
    move/from16 v6, p1

    .line 2103
    iget v7, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    aget-char v7, v0, v7

    aput-char v7, v5, v4

    .line 2104
    iget v7, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    add-int/2addr v7, v8

    aget-char v7, v0, v7

    aput-char v7, v5, v8

    const v7, 0xe370

    const/4 v7, 0x0

    const v9, 0xe370

    :goto_4
    const/16 v10, 0x10

    const/16 v11, 0xf

    if-ge v7, v10, :cond_4

    const/16 v10, 0x37

    goto :goto_5

    :cond_4
    const/16 v10, 0xf

    :goto_5
    if-eq v10, v11, :cond_5

    .line 2124
    sget v10, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/2addr v10, v8

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v10, v2

    .line 2109
    aget-char v10, v5, v8

    aget-char v11, v5, v4

    add-int/2addr v11, v9

    aget-char v12, v5, v4

    shl-int/lit8 v12, v12, 0x4

    sget-char v13, Lcom/appsflyer/internal/AFd1qSDK;->valueOf:C

    int-to-long v13, v13

    const-wide v15, -0x2228788a10b648eL

    xor-long/2addr v13, v15

    long-to-int v14, v13

    int-to-char v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    aget-char v12, v5, v4

    ushr-int/lit8 v12, v12, 0x5

    sget-char v13, Lcom/appsflyer/internal/AFd1qSDK;->registerClient:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v14, v13

    int-to-char v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v8

    .line 2112
    aget-char v10, v5, v4

    aget-char v11, v5, v8

    add-int/2addr v11, v9

    aget-char v12, v5, v8

    shl-int/lit8 v12, v12, 0x4

    sget-char v13, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v14, v13

    int-to-char v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    aget-char v12, v5, v8

    ushr-int/lit8 v12, v12, 0x5

    sget-char v13, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v14, v13

    int-to-char v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v4

    const v10, 0x9e37

    sub-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    .line 2124
    sget v10, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/lit8 v10, v10, 0x1f

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v10, v2

    goto :goto_4

    .line 2118
    :cond_5
    iget v7, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    aget-char v9, v5, v4

    aput-char v9, v3, v7

    .line 2119
    iget v7, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    add-int/2addr v7, v8

    aget-char v8, v5, v8

    aput-char v8, v3, v7

    .line 2120
    iget v7, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    add-int/2addr v7, v2

    iput v7, v1, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    goto/16 :goto_2
.end method

.method private static b(SBIII[Ljava/lang/Object;)V
    .locals 13

    .line 2186
    new-instance v0, Lcom/appsflyer/internal/AFj1nSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFj1nSDK;-><init>()V

    .line 2187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2190
    sget v2, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    int-to-long v2, v2

    const-wide v4, 0x6c7e5d154187a70eL    # 4.08874731179044E214

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int v2, p3, v3

    const/4 v3, -0x1

    const/16 v6, 0x49

    if-ne v2, v3, :cond_0

    const/16 v3, 0x49

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 2246
    :cond_1
    sget v3, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eq v6, v8, :cond_3

    goto/16 :goto_8

    .line 2194
    :cond_3
    sget-object v2, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    if-eqz v2, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_5

    move-object v10, v2

    goto :goto_6

    .line 2246
    :cond_5
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/2addr v6, v8

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    array-length v6, v2

    new-array v9, v6, [B

    move-object v10, v9

    move v9, v6

    const/4 v6, 0x1

    goto :goto_4

    .line 2194
    :cond_6
    array-length v6, v2

    new-array v9, v6, [B

    move-object v10, v9

    move v9, v6

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_7

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    :goto_5
    if-eq v11, v8, :cond_13

    :goto_6
    if-eqz v10, :cond_8

    const/16 v2, 0x54

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_9

    .line 2196
    sget-object v2, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    int-to-long v9, v6

    xor-long/2addr v9, v4

    long-to-int v6, v9

    add-int v6, p4, v6

    aget-byte v2, v2, v6

    int-to-long v9, v2

    xor-long/2addr v9, v4

    long-to-int v2, v9

    int-to-byte v2, v2

    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    int-to-long v9, v6

    xor-long/2addr v9, v4

    long-to-int v6, v9

    add-int/2addr v2, v6

    int-to-byte v2, v2

    goto :goto_8

    .line 2202
    :cond_9
    sget-object v2, Lcom/appsflyer/internal/AFd1qSDK;->v:[S

    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    int-to-long v9, v6

    xor-long/2addr v9, v4

    long-to-int v6, v9

    add-int v6, p4, v6

    aget-short v2, v2, v6

    int-to-long v9, v2

    xor-long/2addr v9, v4

    long-to-int v2, v9

    int-to-short v2, v2

    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    int-to-long v9, v6

    xor-long/2addr v9, v4

    long-to-int v6, v9

    add-int/2addr v2, v6

    int-to-short v2, v2

    .line 2246
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    add-int/lit8 v6, v6, 0x23

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    rem-int/lit8 v6, v6, 0x2

    :goto_8
    if-lez v2, :cond_a

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_12

    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/lit8 v6, v6, 0x7d

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/lit8 v6, v6, 0x2

    add-int v6, p4, v2

    add-int/lit8 v6, v6, -0x2

    .line 2211
    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    int-to-long v9, v9

    xor-long/2addr v9, v4

    long-to-int v10, v9

    add-int/2addr v6, v10

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v6, v3

    iput v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    .line 2222
    sget v3, Lcom/appsflyer/internal/AFd1qSDK;->unregisterClient:I

    int-to-long v9, v3

    xor-long/2addr v9, v4

    long-to-int v3, v9

    add-int/2addr v3, p2

    int-to-char v3, v3

    iput-char v3, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    .line 2223
    iget-char v3, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2226
    iget-char v3, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    iput-char v3, v0, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    .line 2227
    sget-object v3, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    if-eqz v3, :cond_e

    array-length v6, v3

    new-array v9, v6, [B

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v6, :cond_c

    const/4 v11, 0x0

    goto :goto_c

    :cond_c
    const/16 v11, 0x4b

    :goto_c
    if-eqz v11, :cond_d

    move-object v3, v9

    goto :goto_d

    :cond_d
    aget-byte v11, v3, v10

    int-to-long v11, v11

    xor-long/2addr v11, v4

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_e
    :goto_d
    const/16 v6, 0x42

    if-eqz v3, :cond_f

    const/16 v3, 0x42

    goto :goto_e

    :cond_f
    const/16 v3, 0x40

    :goto_e
    if-eq v3, v6, :cond_10

    const/4 v3, 0x0

    goto :goto_f

    :cond_10
    const/4 v3, 0x1

    .line 2228
    :goto_f
    iput v8, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    :goto_10
    iget v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    if-ge v6, v2, :cond_12

    if-eqz v3, :cond_11

    .line 2233
    sget-object v6, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    iget v9, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    aget-byte v6, v6, v9

    int-to-long v9, v6

    xor-long/2addr v9, v4

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 2234
    iget-char v9, v0, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    add-int/2addr v6, p0

    int-to-byte v6, v6

    xor-int/2addr v6, p1

    add-int/2addr v9, v6

    int-to-char v6, v9

    iput-char v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    goto :goto_11

    .line 2238
    :cond_11
    sget-object v6, Lcom/appsflyer/internal/AFd1qSDK;->v:[S

    iget v9, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    aget-short v6, v6, v9

    int-to-long v9, v6

    xor-long/2addr v9, v4

    long-to-int v6, v9

    int-to-short v6, v6

    .line 2239
    iget-char v9, v0, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    add-int/2addr v6, p0

    int-to-short v6, v6

    xor-int/2addr v6, p1

    add-int/2addr v9, v6

    int-to-char v6, v9

    iput-char v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    .line 2241
    :goto_11
    iget-char v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2242
    iget-char v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    iput-char v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    .line 2228
    iget v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    goto :goto_10

    .line 2246
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v7

    return-void

    .line 2194
    :cond_13
    aget-byte v11, v2, v6

    int-to-long v11, v11

    xor-long/2addr v11, v4

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method private valueOf()Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    const-string v2, ""

    .line 113
    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    const/4 v3, 0x2

    rem-int/2addr v0, v3

    const/16 v4, 0x4e

    const/16 v5, 0x30

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 83
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v11, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v12, "\ubdcd\u7343\u37e7\uaef3\u76b5\u8628\u342c\u7592\u520a\ue36f\u04b8\uf739"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v13

    cmpl-float v13, v13, v6

    add-int/lit8 v13, v13, 0xb

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v12, v14, v10

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 85
    iget-object v12, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v13, "\u8e04\ue9ed\u5d68\ubf26\u763a\uf25e"

    invoke-static {v2, v5, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    const/4 v15, 0x4

    rsub-int/lit8 v14, v14, 0x4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v13, v14, v5}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v5, v5, v10

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eq v12, v9, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "\u5e8d\u0370\ube05\u9f02\u7a30\ueec8\ue3ac\uc0e1"

    .line 88
    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x8

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v5, v13, v10

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 91
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    aput-object v0, v11, v10

    aput-object v5, v11, v9

    .line 94
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v3

    invoke-static {v11}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v15, :cond_3

    .line 113
    sget v11, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v11, v11, 0x5

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/2addr v11, v3

    if-nez v11, :cond_2

    .line 98
    :try_start_1
    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v15, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    :goto_2
    if-ge v5, v15, :cond_4

    const/16 v11, 0x56

    goto :goto_3

    :cond_4
    const/16 v11, 0x4e

    :goto_3
    if-eq v11, v4, :cond_5

    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0x31

    .line 104
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    sget v11, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v11, v11, 0x19

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    rem-int/2addr v11, v3

    goto :goto_2

    .line 107
    :cond_5
    :goto_4
    :try_start_2
    invoke-static {v2, v10}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3b

    int-to-short v3, v3

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-byte v5, v5

    const v11, 0x6e712806

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    sub-int v19, v11, v12

    invoke-static {v6, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v11

    cmpl-float v11, v11, v6

    rsub-int/lit8 v20, v11, -0x64

    const v11, 0xf88d78f

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    sub-int v21, v11, v12

    new-array v11, v9, [Ljava/lang/Object;

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v22, v11

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v3, v11, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v3, v11, v7

    rsub-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    const v11, 0x6e7127bb

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int v19, v12, v11

    const/16 v11, 0x30

    invoke-static {v2, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v12

    add-int/lit8 v20, v12, -0x3e

    const v11, 0xf88d791

    invoke-static {v10}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v12

    cmpl-float v6, v12, v6

    sub-int v21, v11, v6

    new-array v6, v9, [Ljava/lang/Object;

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v3, v6, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    add-int/2addr v5, v4

    int-to-short v4, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    const v6, 0x6e712800

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v11

    cmp-long v13, v11, v7

    add-int v19, v13, v6

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    rsub-int/lit8 v20, v6, -0x3d

    const v6, 0xf88d7b8

    invoke-static {v2, v2, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v11

    sub-int v21, v6, v11

    new-array v6, v9, [Ljava/lang/Object;

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v4, v6, v10

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    const/16 v3, 0x30

    .line 113
    invoke-static {v2, v3, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x5c

    int-to-short v11, v0

    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    int-to-byte v12, v0

    const v0, 0x6e712805

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v6, v4, v7

    add-int v13, v6, v0

    invoke-static {v2, v3, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    rsub-int/lit8 v14, v0, -0x61

    const v0, 0xf88d7e1

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int v15, v2, v0

    new-array v0, v9, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v0, v0, v10

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
