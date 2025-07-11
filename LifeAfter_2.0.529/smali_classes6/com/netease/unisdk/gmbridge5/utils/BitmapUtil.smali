.class public Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final DEFAULT_DECODE_MEMORY_LIMIT:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "gm_bridge BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 47
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 48
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 49
    .local v1, "width":I
    const/4 v2, 0x1

    .line 50
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v1, p1, :cond_1

    .line 51
    :cond_0
    div-int/lit8 v3, v0, 0x2

    .line 52
    .local v3, "halfHeight":I
    div-int/lit8 v4, v1, 0x2

    .line 55
    .local v4, "halfWidth":I
    :goto_0
    div-int v5, v3, v2

    if-le v5, p2, :cond_1

    div-int v5, v4, v2

    if-le v5, p1, :cond_1

    .line 57
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 60
    .end local v3    # "halfHeight":I
    .end local v4    # "halfWidth":I
    :cond_1
    return v2
.end method

.method public static createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgParam"    # Ljava/lang/Object;

    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    instance-of v2, p1, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 72
    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 73
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 75
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "gm_bridge BitmapUtil"

    const-string v6, "JustDecodeBounds : [%d,%d]"

    invoke-static {v5, v6, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v4, :cond_6

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v4, :cond_3

    goto :goto_2

    .line 85
    :cond_3
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/lit8 v4, v4, 0x2

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v4, v4, v6

    .line 86
    .local v4, "originalSize":I
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "original bitmap size = %d"

    invoke-static {v5, v7, v6}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/high16 v6, 0x200000

    if-le v4, v6, :cond_5

    .line 89
    div-int v6, v4, v6

    .line 90
    .local v6, "scale":I
    const/4 v7, 0x1

    .line 91
    .local v7, "sample":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 92
    mul-int/lit8 v7, v7, 0x4

    goto :goto_1

    .line 94
    :cond_4
    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 95
    .local v8, "inSampleSize":I
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "scale = %d,inSampleSize = %d"

    invoke-static {v5, v1, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 99
    .end local v6    # "scale":I
    .end local v7    # "sample":I
    .end local v8    # "inSampleSize":I
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 82
    .end local v4    # "originalSize":I
    :cond_6
    :goto_2
    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 30
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 31
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    invoke-static {v0, p1, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 38
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .line 113
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .line 117
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 118
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return-object v1

    .line 121
    :cond_0
    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmap(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgParam"    # Ljava/lang/Object;
    .param p2, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .line 103
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0, v0, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeStream(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 18
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "sizeLimit"    # I

    .line 133
    move-object/from16 v0, p0

    const/16 v1, 0x4b

    .line 134
    .local v1, "quality":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 135
    .local v2, "scale":D
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v4, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v5, p0

    .line 137
    .local v5, "image":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 138
    .local v6, "srcW":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 139
    .local v7, "srcH":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 141
    .local v8, "std":I
    const/4 v9, 0x1

    .line 143
    .local v9, "compressResult":Z
    :goto_0
    const-string v10, "gm_bridge BitmapUtil"

    const-string v11, "start compress ..."

    invoke-static {v10, v11}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v11, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 145
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v14, p2

    if-ge v11, v14, :cond_0

    .line 146
    new-array v11, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    const-string v12, "compress finish,size = %d"

    invoke-static {v10, v12, v11}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    if-eq v5, v0, :cond_2

    .line 148
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 153
    :cond_0
    int-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v2

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    cmpg-double v17, v13, v15

    if-gez v17, :cond_5

    .line 154
    add-int/lit8 v1, v1, -0xf

    .line 155
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v11, 0x0

    aput-object v13, v12, v11

    const-string v13, "reduce quality to %d"

    invoke-static {v10, v13, v12}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const/16 v12, 0x1e

    if-ge v1, v12, :cond_4

    .line 157
    if-eq v5, v0, :cond_1

    .line 158
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_1
    const-string v12, "can\'t reduce quality any more"

    invoke-static {v10, v12}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v9, 0x0

    .line 162
    nop

    .line 178
    :cond_2
    :goto_1
    if-nez v9, :cond_3

    .line 179
    const/4 v10, 0x0

    return v10

    .line 182
    :cond_3
    move-object/from16 v13, p1

    invoke-static {v4, v13}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->writeFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result v10

    return v10

    .line 156
    :cond_4
    move-object/from16 v13, p1

    goto :goto_2

    .line 165
    :cond_5
    move-object/from16 v13, p1

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v14

    .line 166
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/4 v11, 0x0

    aput-object v14, v12, v11

    const-string v14, "scale bitmap to %d"

    invoke-static {v10, v14, v12}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    move-object v10, v5

    .line 168
    .local v10, "tmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v2

    double-to-int v12, v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v2

    double-to-int v14, v14

    const/4 v11, 0x0

    invoke-static {v0, v12, v14, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 169
    if-eq v10, v0, :cond_6

    .line 170
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    .end local v10    # "tmp":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_0
.end method
