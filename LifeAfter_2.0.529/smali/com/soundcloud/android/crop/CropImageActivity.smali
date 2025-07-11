.class public Lcom/soundcloud/android/crop/CropImageActivity;
.super Lcom/soundcloud/android/crop/MonitoredActivity;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/CropImageActivity$Cropper;
    }
.end annotation


# static fields
.field private static final IN_MEMORY_CROP:Z

.field private static final SIZE_DEFAULT:I = 0x800

.field private static final SIZE_LIMIT:I = 0x1000


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private cropView:Lcom/soundcloud/android/crop/HighlightView;

.field private exifRotation:I

.field private final handler:Landroid/os/Handler;

.field private imageView:Lcom/soundcloud/android/crop/CropImageView;

.field private isSaving:Z

.field private maxX:I

.field private maxY:I

.field private rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

.field private sampleSize:I

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/soundcloud/android/crop/CropImageActivity;->IN_MEMORY_CROP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/MonitoredActivity;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/soundcloud/android/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/RotateBitmap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    return p0
.end method

.method static synthetic access$600(Lcom/soundcloud/android/crop/CropImageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    return p0
.end method

.method static synthetic access$800(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/HighlightView;)Lcom/soundcloud/android/crop/HighlightView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calculateBitmapSampleSize(Landroid/net/Uri;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 150
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {p1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 158
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxImageSize()I

    move-result v2

    .line 160
    :goto_0
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p1, v1

    if-gt p1, v2, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr p1, v1

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 155
    :goto_2
    invoke-static {v2}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private clearImageView()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->clear()V

    .line 401
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->recycle()V

    .line 404
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private decodeRegionCrop(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, ","

    .line 329
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->clearImageView()V

    const/4 v1, 0x0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 334
    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 336
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 338
    iget v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    if-eqz v5, :cond_2

    .line 340
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 341
    iget v6, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 343
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 344
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 347
    iget p2, v6, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    int-to-float p2, v3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v7, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_1

    int-to-float v5, v4

    :cond_1
    invoke-virtual {v6, p2, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 348
    new-instance p2, Landroid/graphics/Rect;

    iget v5, v6, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v7, v6, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-direct {p2, v5, v7, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_2
    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2, p2, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :goto_1
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v2

    .line 356
    :try_start_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rectangle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is outside of the image ("

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 364
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OOM cropping image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    invoke-direct {p0, p2}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error cropping image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    return-object p1

    .line 367
    :goto_3
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private getMaxImageSize()I
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getMaxTextureSize()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    return v0

    :cond_0
    const/16 v1, 0x1000

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaxTextureSize()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    .line 178
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 179
    aget v0, v0, v2

    return v0
.end method

.method private inMemoryCrop(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 1

    .line 376
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 379
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p6, p7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 381
    new-instance p6, Landroid/graphics/Canvas;

    invoke-direct {p6, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    new-instance p7, Landroid/graphics/RectF;

    int-to-float p4, p4

    int-to-float p5, p5

    const/4 v0, 0x0

    invoke-direct {p7, v0, v0, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 384
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 385
    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object p3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p4, p5, p7, p3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 386
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 387
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p6, p1, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "OOM cropping image: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 391
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 395
    :goto_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->clearImageView()V

    return-object p2
.end method

.method private initViews()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crop_image"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/CropImageView;

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    .line 90
    iput-object p0, v0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$1;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageView;->setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V

    .line 98
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn_cancel"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$2;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$2;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "btn_done"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$3;

    invoke-direct {v1, p0}, Lcom/soundcloud/android/crop/CropImageActivity$3;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onSaveClicked()V
    .locals 12

    .line 264
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->cropView:Lcom/soundcloud/android/crop/HighlightView;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 267
    iput-boolean v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    const/4 v2, 0x0

    .line 270
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/soundcloud/android/crop/HighlightView;->getScaledCropRect(F)Landroid/graphics/Rect;

    move-result-object v7

    .line 271
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 272
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 275
    iget v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    if-lez v0, :cond_3

    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    if-lez v3, :cond_3

    if-gt v8, v0, :cond_1

    if-le v9, v3, :cond_3

    :cond_1
    int-to-float v4, v8

    int-to-float v5, v9

    div-float/2addr v4, v5

    int-to-float v5, v0

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    int-to-float v0, v3

    mul-float v0, v0, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    int-to-float v3, v0

    div-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    :goto_0
    move v10, v0

    move v11, v3

    goto :goto_1

    :cond_3
    move v10, v8

    move v11, v9

    .line 286
    :goto_1
    sget-boolean v0, Lcom/soundcloud/android/crop/CropImageActivity;->IN_MEMORY_CROP:Z

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    move-object v4, p0

    .line 287
    invoke-direct/range {v4 .. v11}, Lcom/soundcloud/android/crop/CropImageActivity;->inMemoryCrop(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 289
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v2, v0, v1}, Lcom/soundcloud/android/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 290
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v2, v1, v1}, Lcom/soundcloud/android/crop/CropImageView;->center(ZZ)V

    .line 291
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, v1, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 295
    :cond_4
    :try_start_0
    invoke-direct {p0, v2, v7}, Lcom/soundcloud/android/crop/CropImageActivity;->decodeRegionCrop(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    .line 303
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    new-instance v3, Lcom/soundcloud/android/crop/RotateBitmap;

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v3, v0, v4}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3, v1}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    .line 304
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    invoke-virtual {v2, v1, v1}, Lcom/soundcloud/android/crop/CropImageView;->center(ZZ)V

    .line 305
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, v1, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 308
    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->saveImage(Landroid/graphics/Bitmap;)V

    return-void

    :catch_0
    move-exception v0

    .line 297
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 298
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    :cond_6
    :goto_3
    return-void
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "crop__saving"

    const-string v5, "string"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$5;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/soundcloud/android/crop/CropUtil;->startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    :goto_0
    return-void
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 416
    :try_start_1
    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    :goto_1
    sget-boolean v0, Lcom/soundcloud/android/crop/CropImageActivity;->IN_MEMORY_CROP:Z

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/CropUtil;->copyExifRotation(Ljava/io/File;Ljava/io/File;)Z

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultUri(Landroid/net/Uri;)V

    goto :goto_3

    .line 419
    :goto_2
    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .line 434
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/CropImageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity$6;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void
.end method

.method private setResultException(Ljava/lang/Throwable;)V
    .locals 2

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x194

    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setResultUri(Landroid/net/Uri;)V
    .locals 2

    .line 462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setupFromIntent()V
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "aspect_x"

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectX:I

    const-string v2, "aspect_y"

    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->aspectY:I

    const-string v2, "max_x"

    .line 119
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxX:I

    const-string v2, "max_y"

    .line 120
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->maxY:I

    const-string v2, "output"

    .line 121
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->saveUri:Landroid/net/Uri;

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/CropUtil;->getFromMediaUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil;->getExifRotation(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->calculateBitmapSampleSize(Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    .line 131
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    iget v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->sampleSize:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 134
    new-instance v3, Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageActivity;->exifRotation:I

    invoke-direct {v3, v0, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 139
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOM reading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 136
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/soundcloud/android/crop/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->setResultException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :goto_2
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/soundcloud/android/crop/CropUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :goto_4
    return-void
.end method

.method private startCrop()V
    .locals 6

    .line 183
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->imageView:Lcom/soundcloud/android/crop/CropImageView;

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/CropImageView;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "crop__wait"

    const-string v5, "string"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/soundcloud/android/crop/CropImageActivity$4;

    invoke-direct {v2, p0}, Lcom/soundcloud/android/crop/CropImageActivity$4;-><init>(Lcom/soundcloud/android/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/soundcloud/android/crop/CropImageActivity;->handler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/soundcloud/android/crop/CropUtil;->startBackgroundJob(Lcom/soundcloud/android/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method

.method public isSaving()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 76
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crop__activity_crop"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/CropImageActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->setupFromIntent()V

    .line 80
    iget-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/soundcloud/android/crop/CropImageActivity;->startCrop()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 446
    invoke-super {p0}, Lcom/soundcloud/android/crop/MonitoredActivity;->onDestroy()V

    .line 447
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity;->rotateBitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    return-void
.end method
