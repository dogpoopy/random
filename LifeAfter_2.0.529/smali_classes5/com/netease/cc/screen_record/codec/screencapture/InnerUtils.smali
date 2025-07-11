.class Lcom/netease/cc/screen_record/codec/screencapture/InnerUtils;
.super Ljava/lang/Object;
.source "InnerUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blackBmpCheck(Landroid/graphics/Bitmap;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 16
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 18
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const/high16 v8, -0x1000000

    if-ne v8, v3, :cond_0

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-ne v8, v3, :cond_0

    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-ne v8, v3, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    if-ne v8, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 29
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 30
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 31
    invoke-virtual {p0, p2, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method
