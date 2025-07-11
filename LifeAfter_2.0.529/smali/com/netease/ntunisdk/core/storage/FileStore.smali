.class public abstract Lcom/netease/ntunisdk/core/storage/FileStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/core/storage/SecurityApi;
.implements Lcom/netease/ntunisdk/core/storage/Store;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field protected final dirName:[Ljava/lang/String;

.field protected final filePath:Ljava/lang/String;

.field protected gameId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/core/others/AppInfo;->getInstance()Lcom/netease/ntunisdk/core/others/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/others/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->dirName:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->dirName:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->dirName:[Ljava/lang/String;

    invoke-static {p1, v0, p4}, Lcom/netease/ntunisdk/core/storage/ExtraFilePath;->createPath(Landroid/content/Context;[Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->dirName:[Ljava/lang/String;

    invoke-static {p1, v0, p3, p4}, Lcom/netease/ntunisdk/core/storage/ExtraFilePath;->getFilename(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->filePath:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->gameId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/storage/FileStore;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->filePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->d:Ljava/lang/String;

    return-void
.end method

.method private static a([BII[BI)V
    .locals 3

    sub-int v0, p2, p1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, v0, p1

    add-int/2addr v1, p4

    aget-byte v2, p0, v0

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->getInstance()Lcom/netease/ntunisdk/core/storage/AutoSyncFile;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->deleteFile(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public decryptData(Ljava/lang/String;[B)[B
    .locals 6

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/core/security/Crypto;->decrypt2([BLjava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    array-length v0, p1

    const/16 v1, 0xf

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x11

    const/16 v2, 0x10

    sub-int/2addr v0, v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_1

    return-object p2

    :cond_1
    div-int/lit8 v3, v0, 0x3

    new-array v0, v0, [B

    add-int/lit8 v4, v3, 0xf

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v0, v5}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    add-int/lit8 v4, v4, 0x11

    array-length v1, p1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v2

    invoke-static {p1, v4, v1, v0, v3}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    new-array v1, v2, [B

    array-length v3, p1

    sub-int/2addr v3, v2

    array-length v2, p1

    invoke-static {p1, v3, v2, v1, v5}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    return-object v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/storage/FileStore;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->a:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/core/storage/FileStore;->encryptData(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->getInstance()Lcom/netease/ntunisdk/core/storage/AutoSyncFile;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->writeFile(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public encryptData(Ljava/lang/String;[B)[B
    .locals 10

    invoke-static {p2}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object v0

    array-length v1, p2

    const/16 v2, 0xf

    add-int/2addr v1, v2

    const/16 v3, 0x10

    add-int/2addr v1, v3

    const/16 v4, 0x11

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    new-array v1, v1, [B

    invoke-static {v2}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->random(I)[B

    move-result-object v5

    invoke-static {v3}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->random(I)[B

    move-result-object v6

    invoke-static {v4}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->random(I)[B

    move-result-object v7

    array-length v8, p2

    div-int/lit8 v8, v8, 0x3

    const/4 v9, 0x0

    invoke-static {v5, v9, v2, v1, v9}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    invoke-static {p2, v9, v8, v1, v2}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    add-int/lit8 v5, v8, 0xf

    invoke-static {v7, v9, v4, v1, v5}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    array-length v7, p2

    add-int/2addr v5, v4

    invoke-static {p2, v8, v7, v1, v5}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    array-length v5, p2

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-static {v6, v9, v3, v1, v5}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    array-length p2, p2

    add-int/2addr p2, v2

    add-int/2addr p2, v4

    add-int/2addr p2, v3

    invoke-static {v0, v9, v3, v1, p2}, Lcom/netease/ntunisdk/core/storage/FileStore;->a([BII[BI)V

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/core/security/Crypto;->encrypt2([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->a:Ljava/lang/String;

    invoke-static {}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->getInstance()Lcom/netease/ntunisdk/core/storage/AutoSyncFile;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/core/storage/FileStore;->decryptData(Ljava/lang/String;[B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->gameId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/core/security/UDIDLib;->getUDID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract isReady()Z
.end method

.method public peak()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public pop()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/storage/FileStore;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->a:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->c:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/core/storage/FileStore;->encryptData(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->getInstance()Lcom/netease/ntunisdk/core/storage/AutoSyncFile;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/FileStore;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/netease/ntunisdk/core/storage/AutoSyncFile;->writeFile(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
