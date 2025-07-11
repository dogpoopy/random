.class public Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;
.super Lcom/netease/ntunisdk/piclib/thread/PriorityTask;
.source "ScaleImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/thread/PriorityTask<",
        "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleImageLoadTask"


# instance fields
.field protected final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field protected final imageFormat:Ljava/lang/String;

.field protected input:Ljava/io/InputStream;

.field protected final listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field protected outputFileName:Ljava/lang/String;

.field protected final quality:I

.field protected final showSize:[I

.field protected final taskTag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;[ILjava/lang/String;JILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "localEntity",
            "listener",
            "showSize",
            "outputFileName",
            "taskTag",
            "quality",
            "imageFormat"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 40
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object p4, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->showSize:[I

    .line 43
    iput-object p5, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    .line 44
    iput-wide p6, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->taskTag:J

    .line 45
    iput p8, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->quality:I

    .line 46
    iput-object p9, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->imageFormat:Ljava/lang/String;

    return-void
.end method

.method public static createScaleBitmap(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "originalWidth",
            "outputWidth",
            "outputHeight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-le p1, p2, :cond_1

    .line 158
    div-int/lit8 p1, p1, 0x2

    if-lt p1, p2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 163
    :cond_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 166
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    .line 167
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_4

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-le p0, p2, :cond_3

    .line 171
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p1, p0, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p0

    :cond_3
    return-object p1

    :cond_4
    return-object v0
.end method

.method private transfer(FLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thumbSize",
            "tag"
        }
    .end annotation

    const/high16 v0, 0x4e800000

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " GB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x49800000    # 1048576.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " MB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x44800000    # 1024.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " KB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " bit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScaleImageLoadTask"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localEntity.uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScaleImageLoadTask"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localEntity.absolutePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    .line 60
    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    if-nez v3, :cond_3

    .line 62
    :cond_1
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    goto :goto_1

    .line 65
    :cond_2
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v6, v6, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    .line 67
    :goto_1
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 68
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 69
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 70
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 71
    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 73
    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput v3, v6, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 74
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput v1, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 76
    :cond_3
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    if-nez v1, :cond_4

    goto/16 :goto_7

    .line 79
    :cond_4
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;-><init>()V

    .line 80
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    if-nez v3, :cond_6

    .line 81
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_5

    .line 82
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v7, v7, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    iget-object v8, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v8, v8, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getOrientation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    goto :goto_2

    .line 84
    :cond_5
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v6, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getOrientation(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->orientation:I

    .line 87
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showSize: < "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->showSize:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->showSize:[I

    aget v8, v8, v5

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " >"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->showSize:[I

    aget v9, v3, v7

    aget v3, v3, v5

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v10, v10, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v11, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v11, v11, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    invoke-virtual {v1, v9, v3, v10, v11}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getRealAdaptableShowWH(IIII)[I

    move-result-object v1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "realShowWH: < "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v7

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v1, v5

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    .line 91
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v9, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v9, v9, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    goto :goto_3

    .line 93
    :cond_7
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v9, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v9, v9, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    .line 95
    :goto_3
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    iget-object v9, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v9, v9, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    aget v10, v1, v7

    aget v1, v1, v5

    invoke-static {v3, v9, v10, v1}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->createScaleBitmap(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v4

    .line 100
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scaleBitmap: < "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 106
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 107
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x50

    const-string v8, ".jpeg"

    const/16 v9, 0x64

    const-string v10, "uni_sdk_pic_edit_cache"

    if-eqz v5, :cond_d

    .line 108
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->imageFormat:Ljava/lang/String;

    const-string v11, "png"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Ljava/io/File;

    iget-object v11, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v11, v11, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->isPng(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    if-lez v3, :cond_a

    .line 115
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    .line 117
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    .line 118
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 120
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->quality:I

    if-nez v7, :cond_b

    const/16 v6, 0x64

    :cond_b
    invoke-virtual {v1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    goto :goto_5

    .line 109
    :cond_c
    :goto_4
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v5, v9, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    goto :goto_5

    :cond_d
    if-lez v3, :cond_e

    .line 125
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    .line 127
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    .line 128
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 130
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->quality:I

    if-nez v7, :cond_f

    const/16 v6, 0x64

    :cond_f
    invoke-virtual {v1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    .line 132
    :goto_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz v5, :cond_11

    .line 136
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_10

    .line 137
    new-instance v5, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v5}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/Context;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v7, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    move-object v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;IIZ)V

    goto :goto_6

    .line 139
    :cond_10
    new-instance v12, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v12}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v13, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 141
    :goto_6
    new-instance v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v2, v5}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->name:Ljava/lang/String;

    .line 143
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    .line 144
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".piclib.OtherWayFileProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 145
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    .line 147
    iput-object v4, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->bucketName:Ljava/lang/String;

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->size:J

    move-object v4, v2

    .line 150
    :cond_11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    :goto_7
    return-object v4
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method protected onDone()V
    .locals 4

    .line 202
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/thread/PriorityTask;->onDone()V

    .line 203
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-nez v0, :cond_0

    const-string v0, "ScaleImageLoadTask"

    const-string v1, "ScaleImageLoadTask failed"

    .line 204
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-wide v2, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->taskTag:J

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;->onCallback(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;J)V

    :cond_1
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const-string v0, "ScaleImageLoadTask"

    const-string v1, "ScaleImageLoadTask onFailure"

    .line 215
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScaleImageLoadTask onFailure -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->input:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 221
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
