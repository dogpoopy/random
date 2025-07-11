.class public Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;
.super Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;
.source "CheckImageTypeTask.java"


# static fields
.field private static final JPEG_HEADER:[B

.field private static final JPEG_TAIL:[B

.field private static final PNG_HEADER:[B

.field private static final TAG:Ljava/lang/String; = "CheckImageTypeTask"


# instance fields
.field private final disableTransformJpeg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->PNG_HEADER:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 29
    fill-array-data v1, :array_1

    sput-object v1, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->JPEG_HEADER:[B

    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_2

    sput-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->JPEG_TAIL:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "outputPureFileName",
            "taskTag",
            "imageFormat",
            "disableTransformJpeg"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 36
    fill-array-data v5, :array_0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;[ILjava/lang/String;JILjava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p8

    .line 37
    iput-boolean v1, v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->disableTransformJpeg:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static checkFileHeader(Ljava/io/File;[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "header"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    array-length p0, p1

    new-array v2, p0, [B

    .line 214
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, p0, :cond_0

    .line 223
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 217
    :goto_0
    :try_start_3
    array-length v3, p1

    if-ge p0, v3, :cond_2

    .line 218
    aget-byte v3, v2, p0

    aget-byte v4, p1, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v3, v4, :cond_1

    .line 223
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return v0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 212
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return v0
.end method

.method public static isJpeg(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 182
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 184
    sget-object v1, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->JPEG_HEADER:[B

    array-length v1, v1

    new-array v3, v1, [B

    .line 185
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v1, :cond_1

    .line 206
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 188
    :goto_0
    :try_start_3
    sget-object v4, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->JPEG_HEADER:[B

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 189
    aget-byte v5, v3, v1

    aget-byte v4, v4, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v5, v4, :cond_2

    .line 206
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_3
    :try_start_5
    sget-object v1, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->JPEG_TAIL:[B

    array-length v3, v1

    sub-int/2addr p0, v3

    array-length v3, v4

    sub-int/2addr p0, v3

    int-to-long v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 195
    array-length p0, v1

    new-array v1, p0, [B

    .line 196
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v3, p0, :cond_4

    .line 206
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return v2

    :cond_4
    const/4 p0, 0x0

    .line 199
    :goto_1
    :try_start_7
    sget-object v3, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->JPEG_TAIL:[B

    array-length v4, v3

    if-ge p0, v4, :cond_6

    .line 200
    aget-byte v4, v1, p0

    aget-byte v3, v3, p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq v4, v3, :cond_5

    .line 206
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v2

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 182
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    return v2
.end method

.method public static isPng(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->PNG_HEADER:[B

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->checkFileHeader(Ljava/io/File;[B)Z

    move-result p0

    return p0
.end method

.method private toJpeg(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->TAG:Ljava/lang/String;

    const-string v1, "toJpeg"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 147
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uni_sdk_pic_edit_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 151
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    const/4 v7, 0x0

    move-object v4, v8

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;IIZ)V

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 160
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".piclib.OtherWayFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 161
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 148
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private toPng(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->TAG:Ljava/lang/String;

    const-string v1, "toPng"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 123
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uni_sdk_pic_edit_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->outputFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :try_start_1
    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v6, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    const/4 v7, 0x0

    move-object v4, v8

    invoke-virtual/range {v1 .. v7}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;IIZ)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;

    invoke-direct {v1}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v4, v4, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->width:I

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget v5, v5, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->height:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ExifRelative;->saveExif(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 136
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".piclib.OtherWayFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 137
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 124
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public checkImageType(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entity",
            "imageFormat"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkImageType -> disableTransformJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->disableTransformJpeg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->absolutePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkImageType -> fileName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ".png"

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->isPng(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 78
    :cond_0
    iget-boolean p2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->disableTransformJpeg:Z

    if-eqz p2, :cond_1

    return-object p1

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->toJpeg(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, ".jpg"

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".jpeg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".jpe"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    iget-boolean p2, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->disableTransformJpeg:Z

    if-eqz p2, :cond_4

    return-object p1

    .line 96
    :cond_4
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->isJpeg(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    .line 99
    :cond_5
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->toJpeg(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object p1

    return-object p1

    .line 86
    :cond_6
    :goto_0
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->isJpeg(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-object p1

    .line 89
    :cond_7
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->toJpeg(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "png"

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 105
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->isPng(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-object p1

    .line 108
    :cond_9
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->toPng(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object p1

    return-object p1

    .line 112
    :cond_a
    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->isJpeg(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-object p1

    .line 115
    :cond_b
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->toJpeg(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->TAG:Ljava/lang/String;

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->localEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->imageFormat:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->checkImageType(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->doInBackground()Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask;->cancel()V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

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

    .line 48
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->entity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

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

    .line 24
    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/loader/CheckImageTypeTask;->onSuccess(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    return-void
.end method
