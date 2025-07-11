.class public Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/core/storage/SecurityApi;
.implements Lcom/netease/ntunisdk/core/storage/Store;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/netease/ntunisdk/core/storage/Store;

.field protected gameId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/ntunisdk/core/storage/SortedSharedPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "noah.game."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object p3

    invoke-static {p3}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/netease/ntunisdk/core/storage/SortedSharedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->gameId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->unhexlify(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->decryptData(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/core/security/Encipher;->rawLoadData([B)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clear()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/storage/Store;->clear()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/core/storage/Store;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final decryptData(Ljava/lang/String;[B)[B
    .locals 0

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/core/security/Encipher;->decryptData([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/core/storage/Store;->delete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final encryptData(Ljava/lang/String;[B)[B
    .locals 0

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/core/security/Encipher;->encryptData([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/core/storage/Store;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    return-object v0
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

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/storage/Store;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
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

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/storage/Store;->getAllKeys()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/storage/Store;->getSize()I

    move-result v0

    return v0
.end method

.method public getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->gameId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/core/security/UDIDLib;->getUDID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public peak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/storage/Store;->peak()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    invoke-interface {v0}, Lcom/netease/ntunisdk/core/storage/Store;->pop()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->b:Lcom/netease/ntunisdk/core/storage/Store;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/netease/ntunisdk/core/security/Encipher;->rawDumpData(Ljava/io/Serializable;)[B

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;->encryptData(Ljava/lang/String;[B)[B

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/core/storage/Store;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
