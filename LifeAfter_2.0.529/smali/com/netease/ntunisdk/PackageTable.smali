.class Lcom/netease/ntunisdk/PackageTable;
.super Ljava/lang/Object;
.source "PackageTable.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "share_compat_config.json"

.field private static final TAG:Ljava/lang/String; = "PackageTable"

.field private static final sAppNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBackMap:Landroid/util/SparseBooleanArray;

.field private static final sClassMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInsertMap:Landroid/util/SparseBooleanArray;

.field private static final sPlatformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/PackageTable;->sPlatformMap:Ljava/util/Map;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/PackageTable;->sTypeMap:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/PackageTable;->sAppNameMap:Landroid/util/SparseArray;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/PackageTable;->sClassMap:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/PackageTable;->sBackMap:Landroid/util/SparseBooleanArray;

    .line 29
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/PackageTable;->sInsertMap:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lcom/netease/ntunisdk/PackageTable;->copyAndReadAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sTypeMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sAppNameMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sBackMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sInsertMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sClassMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sPlatformMap:Ljava/util/Map;

    return-object v0
.end method

.method private static copyAndReadAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-string v1, "close: "

    const-string v2, "PackageTable"

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 119
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p2

    const/16 v6, 0x400

    new-array v6, v6, [B

    if-nez p2, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createNewFile result="

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v8, v4

    move-object v4, p0

    :goto_0
    move-object p0, v8

    goto/16 :goto_f

    :catch_0
    move-exception p1

    move-object v8, v4

    move-object v4, p0

    :goto_1
    move-object p0, v8

    goto/16 :goto_7

    :catch_1
    move-exception p1

    move-object v8, v4

    move-object v4, p0

    :goto_2
    move-object p0, v8

    goto/16 :goto_a

    .line 128
    :cond_0
    :try_start_2
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object p1, v4

    :goto_3
    move-object v4, p0

    .line 130
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result p0

    :goto_4
    if-lez p0, :cond_2

    .line 132
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 134
    invoke-virtual {p1, v6, p2, p0}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    :cond_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result p0

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v4, :cond_4

    .line 150
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz p1, :cond_7

    .line 153
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_e

    .line 156
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_d

    :catchall_1
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    goto :goto_0

    :catch_3
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    goto :goto_1

    :catch_4
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v4

    goto :goto_f

    :catch_5
    move-exception p1

    move-object p0, v4

    .line 146
    :goto_7
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_5

    .line 150
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_6
    move-exception p0

    goto :goto_9

    :cond_5
    :goto_8
    if-eqz p0, :cond_7

    .line 153
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_e

    .line 156
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d

    :catch_7
    move-exception p1

    move-object p0, v4

    .line 144
    :goto_a
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_6

    .line 150
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_8
    move-exception p0

    goto :goto_c

    :cond_6
    :goto_b
    if-eqz p0, :cond_7

    .line 153
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    .line 156
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_7
    :goto_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception p1

    :goto_f
    if-eqz v4, :cond_8

    .line 150
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catch_9
    move-exception p0

    goto :goto_11

    :cond_8
    :goto_10
    if-eqz p0, :cond_9

    .line 153
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_12

    .line 156
    :goto_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_9
    :goto_12
    goto :goto_14

    :goto_13
    throw p1

    :goto_14
    goto :goto_13
.end method

.method static getAppName(I)Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sAppNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getClassName(I)Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sClassMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getPackageSet(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static getPackageSet(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sPlatformMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PackageTable"

    const-string v1, "init"

    .line 32
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/netease/ntunisdk/PackageTable$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/PackageTable$1;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Lcom/netease/ntunisdk/PackageTable$1;->start()V

    return-void
.end method

.method static shouldInsertUri(I)Z
    .locals 1

    .line 111
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sInsertMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method static shouldShowFloating(I)Z
    .locals 1

    .line 106
    sget-object v0, Lcom/netease/ntunisdk/PackageTable;->sBackMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
