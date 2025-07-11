.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DownloadsContentDBHelper"
.end annotation


# static fields
.field private static final sSchemas:[[[Ljava/lang/String;

.field private static final sTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [[[Ljava/lang/String;

    .line 169
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;->SCHEMA:[[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DownloadColumns"

    aput-object v1, v0, v3

    const-string v1, "MetadataColumns"

    aput-object v1, v0, v4

    .line 173
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "DownloadsDB"

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 139
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-lt v2, p1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p1, ");"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    aget-object v4, p2, v2

    const/16 v5, 0x20

    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 182
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 184
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 186
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 197
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 200
    :try_start_0
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    aget-object v2, v2, v1

    check-cast v2, [[Ljava/lang/String;

    .line 201
    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 212
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", which will destroy all old data"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
