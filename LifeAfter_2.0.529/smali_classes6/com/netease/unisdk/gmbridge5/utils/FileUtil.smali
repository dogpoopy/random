.class public Lcom/netease/unisdk/gmbridge5/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 166
    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException occurred. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 195
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    return-object p0

    .line 189
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getImgSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "yyyy_MM_dd_HH_mm_ss_SSS"

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/utils/DateUtil;->getDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "unisdk_%s.jpg"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .local v1, "dir":Ljava/io/File;
    goto :goto_0

    .line 76
    .end local v1    # "dir":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 78
    .restart local v1    # "dir":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    return-object v4

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    return-object v0
.end method

.method public static makeDirs(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 176
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "folderName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    :goto_0
    return v2
.end method

.method public static readAssetsFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 40
    .local v1, "isStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "isStream":Ljava/io/InputStream;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "str":Ljava/lang/String;
    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileUtil"

    invoke-static {v3, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "fileContent":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    const/4 v2, 0x0

    return-object v2

    .line 128
    :cond_0
    const/4 v3, 0x0

    .line 130
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 131
    .local v4, "is":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 133
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->close(Ljava/io/Closeable;)V

    .line 139
    return-object v2

    .line 143
    .end local v4    # "is":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IOException occurred. "

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileContent":Ljava/lang/StringBuilder;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "filePath":Ljava/lang/String;
    .end local p1    # "charsetName":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileContent":Ljava/lang/StringBuilder;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "filePath":Ljava/lang/String;
    .restart local p1    # "charsetName":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->close(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public static writeFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "outBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "dest"    # Ljava/io/File;

    .line 95
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    const/4 v1, 0x1

    .line 100
    .local v1, "res":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "outFileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 103
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 111
    nop

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 111
    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :cond_1
    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 116
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 111
    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 104
    :catch_2
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 111
    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 116
    :cond_2
    :goto_1
    goto :goto_2

    .line 114
    :catch_3
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 118
    :goto_2
    return v1

    .line 96
    .end local v1    # "res":Z
    .end local v2    # "outFileStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->makeDirs(Ljava/lang/String;)Z

    .line 155
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 156
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v1, 0x1

    .line 161
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->close(Ljava/io/Closeable;)V

    .line 157
    return v1

    .line 161
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IOException occurred. "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "fileWriter":Ljava/io/FileWriter;
    .end local p0    # "filePath":Ljava/lang/String;
    .end local p1    # "content":Ljava/lang/String;
    .end local p2    # "append":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "fileWriter":Ljava/io/FileWriter;
    .restart local p0    # "filePath":Ljava/lang/String;
    .restart local p1    # "content":Ljava/lang/String;
    .restart local p2    # "append":Z
    :goto_0
    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/utils/FileUtil;->close(Ljava/io/Closeable;)V

    throw v1

    .line 149
    .end local v0    # "fileWriter":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
