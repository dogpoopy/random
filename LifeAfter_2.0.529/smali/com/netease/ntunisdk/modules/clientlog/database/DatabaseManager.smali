.class public Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# instance fields
.field private final databaseHelper:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseHelper;

.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->databaseHelper:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseHelper;

    return-void
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "client_log_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "ClientLogModule"

    const-string p2, "record delete failed: database is not open"

    .line 91
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "ClientLogModule"

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record delete failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWritableDatabase()V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->databaseHelper:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lorg/json/JSONObject;)Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;
    .locals 4

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "log"

    const-string v2, "log"

    .line 64
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk"

    const-string v2, "sdk"

    .line 65
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "type"

    .line 66
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "udid"

    const-string v2, "udid"

    .line 67
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    const-string v2, "status"

    .line 68
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "transid"

    const-string v2, "transid"

    .line 69
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "platform"

    const-string v2, "platform"

    .line 70
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    .line 71
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "client_log_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "ClientLogModule"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert success, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->SUCCESS:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p1, "ClientLogModule"

    const-string v0, "record insert failed: database is not open"

    .line 76
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ClientLogModule"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    sget-object p1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;->UNKNOWN_ERROR:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 57
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public limitQuerySubmittingRecord()Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllSubmittingCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllSubmittingRecord()Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryAllCount()I
    .locals 9

    .line 133
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x9

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "ID"

    const/4 v8, 0x0

    aput-object v1, v2, v8

    const/4 v1, 0x1

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "sdk"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "platform"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "transid"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "udid"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "log"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "timestamp"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "status"

    aput-object v3, v2, v1

    const-string v1, "client_log_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ID ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 144
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v8
.end method

.method public queryAllNoSubmitCount()I
    .locals 1

    const-string v0, "0"

    .line 150
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized queryAllNoSubmitRecord()Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "0"

    .line 219
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryRecord(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryAllRecord()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 233
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "client_log_table"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ID"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "sdk"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "platform"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "transid"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "udid"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "log"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "timestamp"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ID ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 244
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v2, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    invoke-direct {v2}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;-><init>()V

    const-string v3, "ID"

    .line 246
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setID(I)V

    const-string v3, "type"

    .line 247
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setType(Ljava/lang/String;)V

    const-string v3, "sdk"

    .line 248
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setSdk(Ljava/lang/String;)V

    const-string v3, "platform"

    .line 249
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setPlatform(Ljava/lang/String;)V

    const-string v3, "transid"

    .line 250
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setTransid(Ljava/lang/String;)V

    const-string v3, "udid"

    .line 251
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setUdid(Ljava/lang/String;)V

    const-string v3, "log"

    .line 252
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setLog(Ljava/lang/String;)V

    const-string v3, "status"

    .line 253
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setStatus(I)V

    const-string v3, "timestamp"

    .line 254
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setTimestamp(Ljava/lang/String;)V

    .line 255
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 261
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public queryAllSubmittingCount()I
    .locals 1

    const-string v0, "1"

    .line 156
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized queryAllSubmittingRecord()Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "1"

    .line 226
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryRecord(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryCount(Ljava/lang/String;)I
    .locals 12

    monitor-enter p0

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    :cond_0
    move-object v8, v0

    .line 167
    iget-object v4, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "client_log_table"

    const/16 p1, 0x9

    new-array v6, p1, [Ljava/lang/String;

    const-string p1, "ID"

    aput-object p1, v6, v3

    const-string p1, "type"

    aput-object p1, v6, v2

    const/4 p1, 0x2

    const-string v0, "sdk"

    aput-object v0, v6, p1

    const/4 p1, 0x3

    const-string v0, "platform"

    aput-object v0, v6, p1

    const/4 p1, 0x4

    const-string v0, "transid"

    aput-object v0, v6, p1

    const/4 p1, 0x5

    const-string v0, "udid"

    aput-object v0, v6, p1

    const/4 p1, 0x6

    const-string v0, "log"

    aput-object v0, v6, p1

    const/4 p1, 0x7

    const-string v0, "timestamp"

    aput-object v0, v6, p1

    const/16 p1, 0x8

    const-string v0, "status"

    aput-object v0, v6, p1

    const-string v7, "status = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "ID ASC"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 175
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 179
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queryRecord(Ljava/lang/String;)Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    :cond_0
    move-object v4, v0

    .line 189
    new-instance p1, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    invoke-direct {p1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;-><init>()V

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "client_log_table"

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "ID"

    aput-object v6, v5, v2

    const-string v2, "type"

    aput-object v2, v5, v3

    const/4 v2, 0x2

    const-string v3, "sdk"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "platform"

    aput-object v3, v5, v2

    const/4 v2, 0x4

    const-string v3, "transid"

    aput-object v3, v5, v2

    const/4 v2, 0x5

    const-string v3, "udid"

    aput-object v3, v5, v2

    const/4 v2, 0x6

    const-string v3, "log"

    aput-object v3, v5, v2

    const/4 v2, 0x7

    const-string v3, "timestamp"

    aput-object v3, v5, v2

    const/16 v2, 0x8

    const-string v3, "status"

    aput-object v3, v5, v2

    const-string v3, "status = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ID ASC"

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ID"

    .line 201
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setID(I)V

    const-string v1, "type"

    .line 202
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setType(Ljava/lang/String;)V

    const-string v1, "sdk"

    .line 203
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setSdk(Ljava/lang/String;)V

    const-string v1, "platform"

    .line 204
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setPlatform(Ljava/lang/String;)V

    const-string v1, "transid"

    .line 205
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setTransid(Ljava/lang/String;)V

    const-string v1, "udid"

    .line 206
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setUdid(Ljava/lang/String;)V

    const-string v1, "log"

    .line 207
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setLog(Ljava/lang/String;)V

    const-string v1, "status"

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setStatus(I)V

    const-string v1, "timestamp"

    .line 209
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->setTimestamp(Ljava/lang/String;)V

    .line 212
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    const-string v2, "type"

    .line 103
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk"

    const-string v2, "sdk"

    .line 104
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "platform"

    const-string v2, "platform"

    .line 105
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transid"

    const-string v2, "transid"

    .line 106
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "udid"

    const-string v2, "udid"

    .line 107
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "log"

    const-string v2, "log"

    .line 108
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    const-string v2, "status"

    .line 109
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "timestamp"

    const-string v2, "timestamp"

    .line 110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "client_log_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "ClientLogModule"

    const-string v0, "record update failed: database is not open"

    .line 114
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "ClientLogModule"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record update failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
