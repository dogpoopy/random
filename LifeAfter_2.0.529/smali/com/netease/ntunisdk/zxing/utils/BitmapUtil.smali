.class public Lcom/netease/ntunisdk/zxing/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeYUV420SP([B[III)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v6, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    move v7, v6

    move v6, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 42
    aget v8, p1, v5

    .line 43
    aget v8, p1, v5

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x10

    .line 44
    aget v9, p1, v5

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    .line 45
    aget v10, p1, v5

    const/16 v11, 0xff

    and-int/2addr v10, v11

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v12, v8, 0x42

    mul-int/lit16 v13, v9, 0x81

    add-int/2addr v12, v13

    mul-int/lit8 v13, v10, 0x19

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x10

    mul-int/lit8 v13, v8, -0x26

    mul-int/lit8 v14, v9, 0x4a

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v10, 0x70

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v13, v13, 0x80

    mul-int/lit8 v8, v8, 0x70

    mul-int/lit8 v9, v9, 0x5e

    sub-int/2addr v8, v9

    mul-int/lit8 v10, v10, 0x12

    sub-int/2addr v8, v10

    add-int/lit16 v8, v8, 0x80

    shr-int/lit8 v8, v8, 0x8

    add-int/lit16 v8, v8, 0x80

    .line 50
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 51
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 52
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v11, v6, 0x1

    int-to-byte v9, v9

    .line 53
    aput-byte v9, p0, v6

    .line 54
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_0

    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_0

    add-int/lit8 v6, v7, 0x1

    int-to-byte v8, v8

    .line 55
    aput-byte v8, p0, v7

    add-int/lit8 v7, v6, 0x1

    int-to-byte v8, v10

    .line 56
    aput-byte v8, p0, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v6, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    move v6, v7

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static getBitmapYUVBytes(Landroid/graphics/Bitmap;)[B
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v11, v9, v10

    .line 17
    new-array v12, v11, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v12

    move v4, v9

    move v7, v9

    move v8, v10

    .line 18
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 19
    rem-int/lit8 v1, v9, 0x2

    if-nez v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v9, 0x1

    :goto_0
    rem-int/lit8 v2, v10, 0x2

    if-nez v2, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v10, 0x1

    :goto_1
    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    new-array v1, v11, [B

    .line 20
    invoke-static {v1, v12, v9, v10}, Lcom/netease/ntunisdk/zxing/utils/BitmapUtil;->encodeYUV420SP([B[III)V

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method
