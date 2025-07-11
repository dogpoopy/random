.class public Lcom/netease/mrzhna/UserDataParser;
.super Ljava/lang/Object;
.source "UserDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/UserDataParser$XMLHandler;
    }
.end annotation


# instance fields
.field public m_has_timestamp:Z

.field public m_timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/mrzhna/UserDataParser;->m_timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/netease/mrzhna/UserDataParser;->m_has_timestamp:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 3

    .line 102
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/netease/mrzhna/UserDataParser$XMLHandler;

    invoke-direct {v1, p0}, Lcom/netease/mrzhna/UserDataParser$XMLHandler;-><init>(Lcom/netease/mrzhna/UserDataParser;)V

    .line 104
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 105
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 106
    iget-boolean p1, v1, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_real_has_timestamp:Z

    iput-boolean p1, p0, Lcom/netease/mrzhna/UserDataParser;->m_has_timestamp:Z

    .line 107
    iget-object p1, v1, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_timestamp:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mrzhna/UserDataParser;->m_timestamp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser parse failed!"

    .line 112
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
