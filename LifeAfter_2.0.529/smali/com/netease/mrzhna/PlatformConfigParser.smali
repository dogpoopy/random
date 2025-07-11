.class public Lcom/netease/mrzhna/PlatformConfigParser;
.super Ljava/lang/Object;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/PlatformConfigParser$Variable;,
        Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;,
        Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;,
        Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;
    }
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mrzhna/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    .line 161
    iput-object p1, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_context:Landroid/content/Context;

    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .locals 3

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "EncrytedPlatformConfig"

    const-string v2, "xml"

    .line 336
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    const-string v0, "NeoXDevice"

    const-string v1, "PlatformConfigParser create temp file failed!"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private decryptData([B)V
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/PlatformConfigParser;->encryptData([B)V

    return-void
.end method

.method private decryptFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/netease/mrzhna/PlatformConfigParser;->createTempFile()Ljava/io/File;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 317
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 318
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/PlatformConfigParser;->decryptData([B)V

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 323
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 324
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser decryptFile failed!"

    .line 328
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private encryptData([B)V
    .locals 2

    const/4 v0, 0x0

    .line 353
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 354
    aget-byte v1, p1, v0

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/netease/mrzhna/PlatformConfigParser$Variable;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/mrzhna/PlatformConfigParser$Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVariable(Ljava/lang/String;I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;-><init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;-><init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getOptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStringVariables()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;

    const-string v4, "PLATFORM_VAR_"

    if-eqz v3, :cond_1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;

    invoke-virtual {v5}, Lcom/netease/mrzhna/PlatformConfigParser$StringVariable;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;

    if-eqz v3, :cond_0

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;

    invoke-virtual {v2}, Lcom/netease/mrzhna/PlatformConfigParser$IntVariable;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 386
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 387
    new-instance v1, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;

    iget-object v2, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/mrzhna/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/mrzhna/PlatformConfigParser$XMLHandler;-><init>(Lcom/netease/mrzhna/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 388
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 389
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser parse failed!"

    .line 393
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/PlatformConfigParser;->decryptFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    .line 367
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 370
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "NeoXDevice"

    const-string p2, "PlatformConfigParser parse failed!"

    .line 376
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
