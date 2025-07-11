.class public Lcom/netease/androidcrashhandler/zip/AnrZip;
.super Lcom/netease/androidcrashhandler/zip/BaseZip;
.source "AnrZip.java"


# instance fields
.field private anrTraceName:Ljava/lang/String;

.field private hasWatchdogAnrFile:Z

.field private mAnrTime:J

.field private mLogFile:Ljava/lang/String;

.field private mSystemTrace:Ljava/lang/String;

.field private pid:I


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/BaseZip;-><init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->pid:I

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    .line 27
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->hasWatchdogAnrFile:Z

    return-void
.end method

.method private addAnrTombstoneFileToDesList(I)V
    .locals 4

    .line 148
    invoke-static {}, Lcom/netease/androidcrashhandler/MyTombstone;->getInstance()Lcom/netease/androidcrashhandler/MyTombstone;

    move-result-object v0

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netease/androidcrashhandler/MyTombstone;->getLastTimeAnrFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipCore [appendFileToList] arrayList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "trace"

    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipCore [appendFileToList] add fileName:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mSystemTrace:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addUUIDinTrace(Ljava/lang/String;)V
    .locals 11

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 164
    :try_start_0
    iget v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->pid:I

    invoke-static {v2}, Lcom/netease/androidcrashhandler/util/TraceFileUtil;->serializationMapping(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v4, "------unisdk_json_end------\n"

    const-string v5, "\n"

    const-string v6, "------unisdk_json_start------\n"

    if-nez v3, :cond_1

    .line 166
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 168
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "------unisdktrace(1.0.0)------"

    .line 170
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v3, v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    :try_start_3
    invoke-virtual {v3, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v1

    goto :goto_1

    :cond_0
    move-object v3, v1

    :goto_0
    move-object v7, v1

    move-object v8, v7

    move-object v1, p1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v7, v3

    :goto_1
    move-object v8, v7

    move-object v1, p1

    goto/16 :goto_7

    .line 177
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mSystemTrace:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 180
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    iget-object v10, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mSystemTrace:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 181
    :try_start_5
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v9, v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    const-string p1, "------unisdktrace(1.0.0)------\n"

    .line 182
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 183
    :goto_2
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_2

    const/4 v9, 0x0

    .line 184
    invoke-virtual {v8, v3, v9, p1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 186
    :cond_2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 187
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 189
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v3, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v8, v3

    goto :goto_7

    :cond_3
    move-object v3, v1

    move-object v7, v3

    move-object v8, v7

    :goto_3
    if-eqz v1, :cond_4

    .line 196
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 203
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 210
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    if-eqz v8, :cond_a

    .line 217
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v7, v3

    move-object v8, v7

    .line 192
    :goto_7
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v1, :cond_7

    .line 196
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_8

    :catch_3
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    .line 203
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_9
    if-eqz v7, :cond_9

    .line 210
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_a

    :catch_5
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    if-eqz v8, :cond_a

    .line 217
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_b

    :catch_6
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_b
    return-void

    :catchall_5
    move-exception p1

    if-eqz v1, :cond_b

    .line 196
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_c
    if-eqz v3, :cond_c

    .line 203
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_d
    if-eqz v7, :cond_d

    .line 210
    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_e

    :catch_9
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_e
    if-eqz v8, :cond_e

    .line 217
    :try_start_13
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_f

    :catch_a
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 222
    :cond_e
    :goto_f
    goto :goto_11

    :goto_10
    throw p1

    :goto_11
    goto :goto_10
.end method

.method private changeTraceToAnr()V
    .locals 6

    .line 138
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->hasWatchdogAnrFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    const-string v4, ".trace"

    const-string v5, ".anr"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 143
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private findPid()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "\\d+"

    .line 124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->pid:I

    const-string v0, "trace"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipCore [findPid] pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected actionTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mAnrTime:J

    return-wide v0
.end method

.method protected afterOperate()V
    .locals 4

    .line 99
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/AnrZip;->changeTraceToAnr()V

    .line 100
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mLogFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mLogFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    const-string v3, "UniTrace.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->mergeLogFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected checkEffective()Z
    .locals 13

    const-string v0, "trace"

    const-string v1, "ZipCore [checkEffective] start"

    .line 36
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 46
    :goto_0
    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_8

    .line 47
    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ".trace"

    .line 49
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    if-eqz v6, :cond_3

    .line 50
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v2, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v2, v11, v9

    if-gtz v2, :cond_1

    return v1

    .line 54
    :cond_1
    iput-object v4, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    .line 55
    iget-wide v9, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mAnrTime:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_2

    .line 56
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v2, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mAnrTime:J

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v6, ".anr"

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 59
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v3, v11, v9

    if-gtz v3, :cond_4

    return v1

    .line 63
    :cond_4
    iput-boolean v5, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->hasWatchdogAnrFile:Z

    .line 64
    iget-wide v9, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mAnrTime:J

    cmp-long v3, v9, v7

    if-nez v3, :cond_5

    .line 65
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mAnrTime:J

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const-string v5, "logcat.log"

    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 68
    iput-object v4, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mLogFile:Ljava/lang/String;

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    if-nez v2, :cond_9

    if-eqz v3, :cond_a

    .line 72
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mParamJson:Lorg/json/JSONObject;

    const-string v2, "signal"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->mParamJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_2
    return v1
.end method

.method protected connectFile()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/AnrZip;->findPid()V

    .line 87
    iget v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->pid:I

    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/zip/AnrZip;->addAnrTombstoneFileToDesList(I)V

    .line 88
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/AnrZip;->anrTraceName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/zip/AnrZip;->addUUIDinTrace(Ljava/lang/String;)V

    return-void
.end method

.method protected getErrorType()Ljava/lang/String;
    .locals 1

    const-string v0, "ANDROID_ANR"

    return-object v0
.end method

.method protected needExternalFile(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected preOprate()V
    .locals 0

    return-void
.end method
