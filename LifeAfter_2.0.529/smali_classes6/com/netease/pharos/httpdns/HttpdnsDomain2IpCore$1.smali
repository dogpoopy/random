.class Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;
.super Ljava/lang/Object;
.source "HttpdnsDomain2IpCore.java"

# interfaces
.implements Lcom/netease/pharos/network/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/pharos/network/NetworkDealer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;->this$0:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p2, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;->this$0:Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;

    invoke-static {p2}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->access$000(Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;)J

    .line 62
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_0

    .line 63
    new-instance p2, Ljava/io/InputStreamReader;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance p2, Ljava/io/InputStreamReader;

    const-string p3, "UTF-8"

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    :goto_0
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u8bf7\u6c42\u7ed3\u679c\u6570\u636e="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HttpdnsDomain2IpCore"

    invoke-static {p3, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->init(Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;->processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public processHeader(Ljava/util/Map;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
