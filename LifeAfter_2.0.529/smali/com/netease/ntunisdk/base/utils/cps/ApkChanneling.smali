.class public Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;
.super Ljava/lang/Object;
.source "ApkChanneling.java"


# static fields
.field private static final LEGACY_PATTERN:Ljava/lang/String; = "NETEASE"

.field private static final TAG:Ljava/lang/String; = "ApkChanneling"

.field private static final V2_MAGIC_PREFIX:Ljava/lang/String; = "APK Sig Block"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;->readZipComment(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v2, 0x16

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 28
    :cond_0
    new-instance v3, Lcom/netease/ntunisdk/base/utils/cps/ECDR;

    invoke-direct {v3, v1, v2}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 30
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    sub-long/2addr v4, v6

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 33
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 34
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 39
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "APK Sig Block"

    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "ApkChanneling"

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    sub-long/2addr v6, v8

    .line 45
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 48
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/ECDR;->offset()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v8, v6

    .line 51
    :try_start_0
    new-instance v3, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;

    invoke-direct {v3, v1, v8, v9}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;-><init>(Ljava/io/RandomAccessFile;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :try_start_1
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->checkV2()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v3, v4

    .line 55
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    const-string p0, "v2"

    .line 62
    invoke-static {v5, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/utils/cps/SignatureBlock;->getChannel()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string p0, "v2 but corrupted signature"

    .line 66
    invoke-static {v5, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "v1"

    .line 70
    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;->getChannelForV1Legacy(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    :goto_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v4
.end method

.method static getChannelForV1Legacy(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "NETEASE"

    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "UTF-8"

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    if-lez v4, :cond_0

    .line 91
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x0

    .line 92
    aget-byte v5, v2, v5

    const/4 v6, 0x1

    aget-byte v2, v2, v6

    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(BB)S

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x80

    add-int v5, v0, v2

    if-ge v5, v4, :cond_0

    sub-int/2addr v4, v2

    .line 96
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 101
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ApkChanneling"

    const-string v4, "invalid zip comment: "

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 109
    :cond_2
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string p0, "META-INF/appchannel"

    .line 113
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    const-wide/16 v4, 0x0

    .line 114
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    .line 115
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-object v1, v2

    goto :goto_6

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 124
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    :cond_4
    :goto_2
    :try_start_6
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    nop

    goto :goto_6

    :catch_4
    move-object p1, v1

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p1, v1

    :goto_3
    if-eqz v1, :cond_5

    .line 124
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    .line 131
    :try_start_8
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    :cond_6
    :goto_5
    throw p0

    :catch_7
    move-object p1, v1

    move-object v0, p1

    :goto_6
    if-eqz v1, :cond_7

    .line 124
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_7
    if-eqz p1, :cond_8

    .line 131
    :try_start_a
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_8
    return-object v0
.end method

.method private static getECDRHead(Ljava/io/File;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v3, v1, [B

    .line 145
    fill-array-data v3, :array_0

    .line 146
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    .line 147
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 148
    new-array v6, v2, [B

    int-to-long v7, v2

    sub-long/2addr v4, v7

    const-wide/16 v9, -0x1

    .line 153
    :goto_0
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    add-int/lit8 v14, v2, -0x4

    if-eq v12, v14, :cond_3

    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x1

    if-eq v14, v1, :cond_1

    add-int v16, v12, v14

    .line 161
    aget-byte v1, v6, v16

    aget-byte v11, v3, v14

    if-eq v1, v11, :cond_0

    const/4 v1, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x4

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_2

    int-to-long v9, v12

    add-long/2addr v9, v4

    const/4 v13, 0x1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    if-nez v13, :cond_6

    const-wide/16 v11, 0x0

    cmp-long v1, v11, v4

    if-eqz v1, :cond_6

    sub-long/2addr v4, v7

    const-wide/16 v13, 0x3

    add-long/2addr v4, v13

    cmp-long v1, v4, v11

    if-gez v1, :cond_4

    move-wide v4, v11

    :cond_4
    cmp-long v1, v4, v11

    if-gez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 183
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-wide v9

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method private static readZipComment(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {p0}, Lcom/netease/ntunisdk/base/utils/cps/ApkChanneling;->getECDRHead(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    .line 191
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x2

    new-array p0, p0, [B

    .line 194
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v3, 0x0

    .line 195
    aget-byte v3, p0, v3

    const/4 v4, 0x1

    aget-byte p0, p0, v4

    invoke-static {v3, p0}, Lcom/netease/ntunisdk/base/utils/cps/a;->a(BB)S

    move-result p0

    if-lez p0, :cond_0

    .line 197
    new-array p0, p0, [B

    const-wide/16 v3, 0x2

    add-long/2addr v0, v3

    .line 198
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 199
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 200
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return-object v0
.end method
