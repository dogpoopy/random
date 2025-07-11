.class public Lcom/netease/ntunisdk/piclib/utils/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static bitmapCache:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;


# instance fields
.field private final DISK_CACHE_SIZE:J

.field private MAX_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private ramCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private romCache:Lcom/jakewharton/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BitmapCache"

    .line 20
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->TAG:Ljava/lang/String;

    const/high16 v1, 0xa00000

    .line 21
    iput v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->MAX_SIZE:I

    const-wide/32 v1, 0x6400000

    .line 24
    iput-wide v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->DISK_CACHE_SIZE:J

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 40
    new-instance v3, Ljava/io/File;

    const-string v4, "pic_edit_cache"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 43
    invoke-static {v3, v4, v4, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "romCache init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 49
    :goto_0
    new-instance p1, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->MAX_SIZE:I

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache$1;-><init>(Lcom/netease/ntunisdk/piclib/utils/BitmapCache;I)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/utils/BitmapCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/utils/BitmapCache;)Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    return-object p0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getBitmapCache(Landroid/content/Context;)Lcom/netease/ntunisdk/piclib/utils/BitmapCache;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->bitmapCache:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-nez v0, :cond_3

    .line 29
    :cond_0
    const-class v0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->bitmapCache:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-nez v1, :cond_2

    .line 31
    :cond_1
    new-instance v1, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->bitmapCache:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    .line 33
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_3
    sget-object p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->bitmapCache:Lcom/netease/ntunisdk/piclib/utils/BitmapCache;

    return-object p0

    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    .line 107
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "bitmap"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-nez v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 75
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V

    .line 134
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->close()V

    .line 135
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->romCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "BitmapCache"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBitmap(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/utils/BitmapCache;->ramCache:Landroid/util/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
