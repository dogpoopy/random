.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperApi19"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperApi19"

.field private static final MAX_PRINT_SIZE:I = 0xdac


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mIsMinMarginsHandlingCorrect:Z

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field protected mPrintActivityRespectsOrientation:Z

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    .line 218
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 220
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mPrintActivityRespectsOrientation:Z

    .line 226
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    .line 228
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
    .param p1, "x1"    # Landroid/print/PrintAttributes;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "x5"    # Landroid/os/CancellationSignal;
    .param p6, "x6"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 199
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/RectF;
    .param p4, "x4"    # I

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;
    .param p1, "x1"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .line 199
    invoke-static {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .line 199
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    .line 814
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 815
    return-object p1

    .line 818
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 820
    .local v0, "grayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 821
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 822
    .local v2, "p":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 823
    .local v3, "cm":Landroid/graphics/ColorMatrix;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 824
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 825
    .local v5, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 826
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 827
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 829
    return-object v0
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 6
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    .line 419
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 422
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 423
    .local v1, "scale":F
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    .line 424
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 428
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 431
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 433
    .local v2, "translateX":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    mul-float v5, v5, v1

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 435
    .local v4, "translateY":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 436
    return-object v0
.end method

.method private static isPortrait(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 795
    const-string v0, "close fail "

    const-string v1, "PrintHelperApi19"

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 798
    const/4 v3, 0x0

    .line 800
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    .line 801
    const/4 v2, 0x0

    invoke-static {v3, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    if-eqz v3, :cond_0

    .line 805
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    goto :goto_0

    .line 806
    :catch_0
    move-exception v4

    .line 807
    .local v4, "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v4    # "t":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v2

    .line 803
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_1

    .line 805
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 808
    goto :goto_1

    .line 806
    :catch_1
    move-exception v4

    .line 807
    .restart local v4    # "t":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v4    # "t":Ljava/io/IOException;
    :cond_1
    :goto_1
    throw v2

    .line 796
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to loadBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 745
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 749
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 750
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 751
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 753
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 754
    .local v2, "w":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 757
    .local v3, "h":I
    const/4 v4, 0x0

    if-lez v2, :cond_4

    if-gtz v3, :cond_0

    goto :goto_3

    .line 762
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 764
    .local v5, "imageSide":I
    const/4 v6, 0x1

    .line 765
    .local v6, "sampleSize":I
    :goto_0
    const/16 v7, 0xdac

    if-le v5, v7, :cond_1

    .line 766
    ushr-int/lit8 v5, v5, 0x1

    .line 767
    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 771
    :cond_1
    if-lez v6, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v6

    if-gtz v7, :cond_2

    goto :goto_2

    .line 775
    :cond_2
    iget-object v7, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 776
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 777
    iget-object v8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 778
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 779
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 780
    .local v1, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 782
    :try_start_2
    invoke-direct {p0, p1, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    iget-object v8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 785
    :try_start_3
    iput-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 786
    monitor-exit v8

    return-object v7

    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 784
    :catchall_1
    move-exception v7

    iget-object v8, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 785
    :try_start_4
    iput-object v4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 786
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 780
    :catchall_3
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_1

    .end local v1    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_4
    move-exception v1

    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v1

    :catchall_5
    move-exception v1

    goto :goto_1

    .line 772
    .end local v4    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_2
    return-object v4

    .line 758
    .end local v5    # "imageSide":I
    .end local v6    # "sampleSize":I
    :cond_4
    :goto_3
    return-object v4

    .line 746
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 13
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 454
    move-object v9, p0

    iget-boolean v0, v9, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mIsMinMarginsHandlingCorrect:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 455
    move-object v0, p1

    move-object v11, v0

    .local v0, "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_0

    .line 459
    .end local v0    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v1, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    move-object v11, v0

    .line 463
    .local v11, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_0
    new-instance v12, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p5

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    new-array v0, v10, [Ljava/lang/Void;

    .line 562
    invoke-virtual {v12, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 563
    return-void
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .locals 2
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .line 328
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 329
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 333
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 337
    :cond_0
    return-object v0
.end method

.method public getColorMode()I
    .locals 1

    .line 307
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 292
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_0
    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .line 255
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 11
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .line 350
    if-nez p2, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    iget v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 355
    .local v6, "fittingMode":I
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    .line 356
    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/print/PrintManager;

    .line 358
    .local v7, "printManager":Landroid/print/PrintManager;
    invoke-static {p2}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    move-object v8, v0

    .local v0, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_0

    .line 361
    .end local v0    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_1
    sget-object v0, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    move-object v8, v0

    .line 363
    .local v8, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_0
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 364
    invoke-virtual {v0, v8}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    .line 365
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v9

    .line 368
    .local v9, "attr":Landroid/print/PrintAttributes;
    new-instance v10, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v7, p1, v10, v9}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 405
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 8
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 578
    iget v6, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 580
    .local v6, "fittingMode":I
    new-instance v7, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 721
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mContext:Landroid/content/Context;

    .line 722
    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 723
    .local v1, "printManager":Landroid/print/PrintManager;
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 724
    .local v2, "builder":Landroid/print/PrintAttributes$Builder;
    iget v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 726
    iget v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 729
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_1

    .line 727
    :cond_1
    :goto_0
    sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 731
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .line 733
    .local v3, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v1, p1, v0, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 734
    return-void
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 268
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mColorMode:I

    .line 269
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 279
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mOrientation:I

    .line 280
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0
    .param p1, "scaleMode"    # I

    .line 243
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mScaleMode:I

    .line 244
    return-void
.end method
