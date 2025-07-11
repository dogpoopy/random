.class public Lcom/netease/mpay/oversea/e4;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/e4$d;,
        Lcom/netease/mpay/oversea/e4$c;,
        Lcom/netease/mpay/oversea/e4$b;
    }
.end annotation


# static fields
.field private static g:Lcom/netease/mpay/oversea/e4;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/oversea/e4$c;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/e4;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/e4;->c:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/e4;->d:Z

    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xf

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2, v3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v1, p0, Lcom/netease/mpay/oversea/e4;->e:Ljava/util/LinkedHashMap;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/e4;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e4;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/e4;->a(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 23
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-static {v1}, Lcom/netease/mpay/oversea/ca;->a(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 42
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0

    .line 45
    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/netease/mpay/oversea/d3;->a([B)I

    move-result v2

    const/4 v3, 0x0

    .line 46
    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v2, :cond_3

    if-nez v5, :cond_2

    goto :goto_2

    .line 50
    :cond_2
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, v2

    .line 51
    invoke-virtual {v10, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 52
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 53
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    .line 54
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p1

    .line 64
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v1, v0

    .line 67
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_4

    .line 71
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_5
    return-object v0

    :goto_6
    if-eqz v1, :cond_5

    .line 74
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_5
    :goto_7
    throw p1

    :cond_6
    :goto_8
    return-object v0
.end method

.method private a(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/d3;->a(Ljava/io/File;)I

    move-result v1

    .line 85
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    :try_start_1
    invoke-static {v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 91
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 92
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 94
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-le v6, p2, :cond_1

    div-int/lit8 v6, v2, 0x2

    if-le v6, p3, :cond_1

    .line 95
    div-int/lit8 v5, v5, 0x2

    .line 96
    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 100
    :cond_1
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 102
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    invoke-static {p3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    .line 113
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :goto_1
    :try_start_4
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0

    .line 124
    :cond_2
    :try_start_5
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, v1

    .line 125
    invoke-virtual {v10, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 127
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    .line 128
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    :goto_4
    :try_start_7
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v5

    :catchall_0
    move-exception p1

    move-object v0, p3

    goto :goto_6

    :catch_4
    nop

    goto :goto_9

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-object p3, v0

    goto :goto_9

    :catchall_2
    move-exception p1

    move-object v4, v0

    :goto_6
    if-eqz v4, :cond_4

    .line 145
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 147
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz v0, :cond_5

    .line 153
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception p2

    .line 155
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_5
    :goto_8
    throw p1

    :catch_8
    move-object p3, v0

    move-object v4, p3

    :goto_9
    if-eqz v4, :cond_6

    .line 159
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_a

    :catch_9
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_a
    if-eqz p3, :cond_7

    .line 167
    :try_start_b
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    :catch_a
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_b
    return-object v0
.end method

.method public static a()Lcom/netease/mpay/oversea/e4;
    .locals 2

    .line 3
    const-class v0, Lcom/netease/mpay/oversea/e4;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/e4;->g:Lcom/netease/mpay/oversea/e4;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/e4;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/e4;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/e4;->g:Lcom/netease/mpay/oversea/e4;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/netease/mpay/oversea/e4;->g:Lcom/netease/mpay/oversea/e4;

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 174
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mpay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e4;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/e4;->e:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mpay/oversea/e4;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/netease/mpay/oversea/e4;->a(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/e4;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    .line 17
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/e4;->a(Landroid/graphics/Bitmap;)I

    move-result p3

    int-to-long v0, p3

    .line 18
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v2, 0x5000

    cmp-long p3, v0, v2

    if-gez p3, :cond_3

    .line 20
    iget-object p3, p0, Lcom/netease/mpay/oversea/e4;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p2
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/e4;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/e4;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/e4;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    .line 19
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/e4;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)Z
    .locals 2

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/e4;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4;->b:Lcom/netease/mpay/oversea/e4$c;

    new-instance v1, Lcom/netease/mpay/oversea/e4$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/e4$a;-><init>(Lcom/netease/mpay/oversea/e4;Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/e4$c;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e4;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/e4;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/e4;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/e4;->d:Z

    .line 7
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/e4$c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/e4;->a:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e4;->d:Z

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/e4$c;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/e4;->b:Lcom/netease/mpay/oversea/e4$c;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/e4;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
