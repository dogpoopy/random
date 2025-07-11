.class public Lcom/netease/androidcrashhandler/zip/NativeCrashZip;
.super Lcom/netease/androidcrashhandler/zip/BaseZip;
.source "NativeCrashZip.java"


# instance fields
.field private mCrashTime:J

.field private mDmpFile:Ljava/lang/String;

.field private mLogFile:Ljava/lang/String;

.field private mMarkFile:Ljava/lang/String;

.field private mPluginFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/zip/BaseZip;-><init>(Lcom/netease/androidcrashhandler/zip/ZipCore;Ljava/lang/String;)V

    return-void
.end method

.method private addCrashTombstoneFileToDesList()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mMarkFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mMarkFile:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->file2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(?<=_)\\d+$"

    .line 194
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "trace"

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipCore [findPid] pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move v1, v0

    .line 206
    :cond_0
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mCrashTime:J

    invoke-direct {p0, v1, v2, v3}, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->addCrashTombstoneFileToDesList(IJ)V

    return-void
.end method

.method private addCrashTombstoneFileToDesList(IJ)V
    .locals 6

    .line 210
    invoke-static {}, Lcom/netease/androidcrashhandler/MyTombstone;->getInstance()Lcom/netease/androidcrashhandler/MyTombstone;

    move-result-object v0

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/androidcrashhandler/MyTombstone;->getLastTimeCrashTombstone(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ZipCore [addCrashTombstoneFileToDesList] arrayList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "trace"

    invoke-static {v0, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipCore [addCrashTombstoneFileToDesList] add fileName:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private changeErrorType()V
    .locals 3

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mParamJson:Lorg/json/JSONObject;

    const-string v1, "error_type"

    const-string v2, "OTHER"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mParamJson:Lorg/json/JSONObject;

    const-string v1, "error_source"

    const-string v2, "crash_without_dump_file"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private deleteMarkFile()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mMarkFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mMarkFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mMarkFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public actionTime()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mCrashTime:J

    return-wide v0
.end method

.method public afterOperate()V
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mDmpFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->changeErrorType()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->checkAndcopyUuidFile(Ljava/util/List;Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->deleteMarkFile()V

    .line 101
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mLogFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mLogFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    const-string v3, "UniTrace.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipUtil;->mergeLogFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mPluginFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mPluginFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 111
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mPluginFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "TARGET:"

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const-string v5, "___"

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    .line 116
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    aget-object v3, v2, v4

    .line 118
    aget-object v2, v2, v6

    .line 119
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "1"

    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "type"

    const-string v7, "acsdk"

    .line 121
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "plugin_enabled"

    .line 122
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string v5, "revert_tool_version"

    .line 124
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v3, "RET:"

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "revert_status"

    const/4 v8, 0x4

    if-eqz v3, :cond_5

    .line 127
    :try_start_2
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 128
    aget-object v3, v2, v4

    .line 129
    aget-object v2, v2, v6

    .line 130
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_5
    const-string v3, "ERR:"

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 141
    :cond_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 145
    :cond_7
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mDiFileName:Ljava/lang/String;

    const-string v3, "ext_plugin_info"

    invoke-static {v1, v2, v3, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->addObjectToDiFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mPluginFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mPluginFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method

.method public checkEffective()Z
    .locals 11

    const-string v0, "trace"

    const-string v1, "ZipCore [checkEffective] start"

    .line 34
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 44
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "native_crash.mark"

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    const-string v7, ".dmp"

    const/4 v8, 0x1

    if-nez v4, :cond_5

    const-string v4, "native_crash.dmp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    iput-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mDmpFile:Ljava/lang/String;

    .line 57
    iget-wide v9, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mCrashTime:J

    cmp-long v1, v9, v5

    if-nez v1, :cond_2

    .line 58
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mCrashTime:J

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const-string v4, "logcat.log"

    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 61
    iput-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mLogFile:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v4, "third_party_plugin.temp"

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 63
    iput-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mPluginFile:Ljava/lang/String;

    goto :goto_2

    .line 47
    :cond_5
    :goto_1
    iput-object v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mMarkFile:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    .line 51
    :cond_6
    iget-wide v7, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mCrashTime:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_7

    .line 52
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mTargetDir:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mCrashTime:J

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZipCore [checkEffective] ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_3
    return v2
.end method

.method public connectFile()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->addCrashTombstoneFileToDesList()V

    return-void
.end method

.method protected getErrorType()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/NativeCrashZip;->mDmpFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OTHER"

    return-object v0

    :cond_0
    const-string v0, "ANDROID_NATIVE_ERROR"

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
