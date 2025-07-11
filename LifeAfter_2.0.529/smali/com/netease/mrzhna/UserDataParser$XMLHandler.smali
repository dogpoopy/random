.class Lcom/netease/mrzhna/UserDataParser$XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UserDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mrzhna/UserDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMLHandler"
.end annotation


# instance fields
.field private m_buf:Ljava/lang/StringBuffer;

.field public m_has_timestamp:Z

.field public m_real_has_timestamp:Z

.field public m_timestamp:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/mrzhna/UserDataParser;


# direct methods
.method public constructor <init>(Lcom/netease/mrzhna/UserDataParser;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->this$0:Lcom/netease/mrzhna/UserDataParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 37
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_real_has_timestamp:Z

    .line 39
    iput-boolean p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_has_timestamp:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_has_timestamp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "package_timestamp"

    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_timestamp:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 70
    iput-boolean p2, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_has_timestamp:Z

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_real_has_timestamp:Z

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "package_timestamp"

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/netease/mrzhna/UserDataParser$XMLHandler;->m_has_timestamp:Z

    :cond_0
    return-void
.end method
