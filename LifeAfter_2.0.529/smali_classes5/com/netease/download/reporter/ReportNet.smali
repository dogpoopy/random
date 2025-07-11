.class public Lcom/netease/download/reporter/ReportNet;
.super Ljava/lang/Object;
.source "ReportNet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportNet"

.field private static sReportNet:Lcom/netease/download/reporter/ReportNet;


# instance fields
.field private okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/netease/download/reporter/ReportNet$3;

    invoke-direct {v0, p0}, Lcom/netease/download/reporter/ReportNet$3;-><init>(Lcom/netease/download/reporter/ReportNet;)V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportNet;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;ZI)I
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/download/reporter/ReportNet;->reportControl(Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public static getInstances()Lcom/netease/download/reporter/ReportNet;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/netease/download/reporter/ReportNet;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportNet;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    .line 62
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    return-object v0
.end method

.method private postHttps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/download/network/NetworkDealer;Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/download/network/NetworkDealer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "ReportNet"

    const-string v1, "ReportNet [postHttps]"

    .line 395
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportNet [postHttps] pUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportNet [postHttps] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7, \u6700\u7ec8\u4e0a\u4f20\u5185\u5bb9="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v3, 0xb

    .line 404
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    const-string v5, "accept"

    const-string v6, "*/*"

    .line 408
    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "connection"

    const-string v6, "Keep-Alive"

    .line 409
    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x7530

    .line 410
    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 411
    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v5, "Accept-Encoding"

    const-string v6, ""

    .line 412
    invoke-virtual {v4, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 414
    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 415
    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sun.net.http.allowRestrictedHeaders"

    const-string v6, "true"

    .line 418
    invoke-static {v5, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportNet [postHttps] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u8bbe\u7f6ehost ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Host"

    .line 420
    invoke-virtual {v4, v5, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    new-instance v5, Lcom/netease/download/network/TlsSniSocketFactory;

    invoke-direct {v5, v4}, Lcom/netease/download/network/TlsSniSocketFactory;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 426
    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 427
    new-instance v5, Lcom/netease/download/reporter/ReportNet$4;

    invoke-direct {v5, p0, v4}, Lcom/netease/download/reporter/ReportNet$4;-><init>(Lcom/netease/download/reporter/ReportNet;Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 453
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 455
    :try_start_1
    invoke-virtual {v5, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 459
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 460
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p4, p3, v3, p2}, Lcom/netease/download/network/NetworkDealer;->processHeader(Ljava/util/Map;ILjava/lang/String;)I

    .line 462
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 463
    invoke-interface {p4, v4, v3, p2, p5}, Lcom/netease/download/network/NetworkDealer;->processContent(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :try_start_2
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    if-eqz v1, :cond_3

    .line 480
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p3

    .line 485
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p4, v1

    move-object v1, v5

    goto/16 :goto_3

    :catch_1
    move-exception p3

    move-object p4, v1

    move-object v1, v5

    goto :goto_0

    :catch_2
    move-exception p3

    move-object p4, v1

    move-object v1, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p4, v1

    goto/16 :goto_3

    :catch_3
    move-exception p3

    move-object p4, v1

    .line 471
    :goto_0
    :try_start_3
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportNet [postHttps] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7  Exception="

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    .line 477
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    if-eqz p4, :cond_3

    .line 480
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_4
    move-exception p3

    move-object p4, v1

    :goto_1
    const/16 v3, 0xd

    .line 467
    :try_start_5
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportNet [postHttps] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7  SocketException="

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p3}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_2

    .line 477
    :try_start_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_2
    if-eqz p4, :cond_3

    .line 480
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_2
    const/16 p3, 0xc8

    if-ne p3, v3, :cond_4

    const/4 v3, 0x0

    .line 493
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ReportNet [postHttps] resultCode="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", pUrl="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v1, :cond_5

    .line 477
    :try_start_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_4

    :catch_5
    move-exception p2

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz p4, :cond_6

    .line 480
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 485
    :goto_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 486
    :cond_6
    :goto_6
    throw p1
.end method

.method private postOkhttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "ReportNet"

    const-string v1, "ReportNet [postOkhttp] start"

    .line 362
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportNet [postOkhttp] configUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", infos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/plain;charset=utf-8"

    .line 368
    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->create(Lcom/netease/ntunisdk/okhttp3/MediaType;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object p3

    .line 369
    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p3}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->post(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 372
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 373
    invoke-virtual {v0, p4}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    const-string p3, "sss"

    .line 376
    invoke-virtual {v0, p3}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 379
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "Host"

    .line 380
    invoke-virtual {v0, p3, p2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 383
    :cond_1
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 385
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/download/reporter/ReportNet;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    invoke-virtual {p1, v0, p2}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private reportControl(Ljava/lang/String;ZI)I
    .locals 11

    const-string v0, "httpdns_report_module"

    const-string v1, "ReportNet"

    const-string v2, "ReportNet [reportControl] start"

    .line 221
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "ReportNet [reportControl] param error"

    .line 228
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xe

    return p1

    .line 232
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 236
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/download/reporter/ReportFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "filepath"

    .line 237
    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "log_delay"

    .line 241
    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportNet [reportControl] Exception="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move-object p3, p1

    goto :goto_1

    :cond_1
    move-object p2, p1

    move-object p3, v3

    .line 255
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0xb

    if-nez v2, :cond_a

    const/4 v2, 0x3

    .line 263
    :try_start_1
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportNet [reportControl] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0cUrls\u4fe1\u606f\u603b\u89c8="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/reporter/ReportUrlController;->geturls()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/reporter/ReportUrlController;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/reporter/ReportUrlController;->next()Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;

    move-result-object v5

    .line 269
    iget-object v6, v5, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;->mDomain:Ljava/lang/String;

    .line 270
    iget-object v5, v5, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;->mUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_3
    move-object v5, v3

    move-object v6, v5

    :goto_2
    const-string v7, ", url="

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    .line 274
    :try_start_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ReportNet [reportControl] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u5177\u4f53\u4f7f\u7528\u7684domain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ReportNet [reportControl use okhttp"

    .line 277
    invoke-static {v1, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, v5, v6, p2, p3}, Lcom/netease/download/reporter/ReportNet;->postOkhttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 283
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportNet [reportControl] \u6b63\u5e38\u4e0a\u4f20\u7ed3\u679c result="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9

    .line 286
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/download/reporter/ReportUrlController;->removeUnit()V

    const-string p3, "ReportNet [reportControl] \u8fdb\u5165httpdns\u903b\u8f91"

    .line 288
    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 292
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportNet [reportControl] \u65e5\u5fd7\u6a21\u5757\u672a\u8bf7\u6c42\u8fc7httpdns\uff0c\u53d1\u8d77httpdns url="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 293
    invoke-static {v5}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v2

    .line 294
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Lcom/netease/download/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    :cond_5
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 299
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportNet [reportControl] \u65e5\u5fd7\u6a21\u5757\u5df2\u53d1\u8d77httpdns url="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v5}, Lcom/netease/download/util/Util;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportNet [reportControl] channel="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_3
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    const-string v2, "ReportNet [reportControl] httpdns\u5b58\u5728\u672a\u4f7f\u7528\u7684ip"

    .line 307
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Lcom/netease/download/httpdns/HttpdnsProxy;->next(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 315
    iget-object v6, v2, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 316
    iget-object v2, v2, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 318
    invoke-static {v2}, Lcom/netease/download/util/Util;->isIpv6(Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v9, "/"

    if-eqz v8, :cond_6

    .line 319
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v9}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 322
    :cond_6
    invoke-static {v5, v2, v9}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ReportNet [reportControl] mHost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mIp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "ReportNet [reportControl] use okhttp"

    .line 327
    invoke-static {v1, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, v5, v6, p2, p1}, Lcom/netease/download/reporter/ReportNet;->postOkhttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReportNet [reportControl] httpdns \u4e0a\u4f20\u7ed3\u679c result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v2, "ReportNet [reportControl] unit is null"

    .line 332
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_5
    if-eqz v4, :cond_8

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReportNet [reportControl] \u5220\u9664ip="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", \u6240\u5c5echannel="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v6

    invoke-virtual {v6, v0, v2, p3}, Lcom/netease/download/httpdns/HttpdnsProxy;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportNet [reportControl] \u662f\u5426\u8fd8\u6709\u672a\u4f7f\u7528\u7684\u4e0a\u4f20ip="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ReportNet [reportControl] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7 Exception="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ReportNet [reportControl] \u4e0a\u4f20\u603b\u7ed3\u679c="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 353
    :cond_a
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/reporter/ReportProxy;->getmReportCallBack()Lcom/netease/download/reporter/ReportCallBack;

    move-result-object p1

    .line 354
    invoke-interface {p1}, Lcom/netease/download/reporter/ReportCallBack;->reportFinish()V

    :goto_6
    return v4
.end method


# virtual methods
.method public report(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "ReportNet"

    .line 70
    :try_start_0
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/netease/download/config/ConfigParams;->isReport()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "ReportNet [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7,\u53c2\u6570\u9519\u8bef"

    .line 72
    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 78
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/download/reporter/ReportNet$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/download/reporter/ReportNet$1;-><init>(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, v1, p2}, Lcom/netease/download/reporter/ReportNet;->reportControl(Ljava/lang/String;ZI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportNet [report] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7 Exception="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportFile(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "ReportNet"

    const-string v1, "ReportNet [reportFile] start"

    .line 98
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "ReportNet [reportFile] \u53c2\u6570\u9519\u8bef1"

    .line 101
    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v1

    const-string v2, "ReportProxy [reportFile] \u91c7\u7528\u914d\u7f6e\u6587\u4ef6 ip"

    .line 109
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/netease/download/config/ConfigParams;->getReportUrl()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v1}, Lcom/netease/download/config/ConfigParams;->getReportIpArray()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 116
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "https://sigma-orbit-impression.proxima.nie.easebar.com/sdk"

    const-string v5, "https://sigma-orbit-impression.proxima.nie.netease.com/sdk"

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    array-length v3, v1

    if-gtz v3, :cond_7

    :cond_2
    const-string v1, "ReportProxy [reportFile] \u91c7\u7528hardcode ip"

    .line 117
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReportProxy [report] \u6d77\u5916="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1"

    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    :goto_1
    move-object v2, v4

    goto :goto_3

    :cond_3
    const-string v3, "2"

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "0"

    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v3, "-1"

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 136
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_GLOBAL:[Ljava/lang/String;

    :cond_6
    :goto_2
    move-object v2, v5

    .line 140
    :cond_7
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportProxy [reportFile] url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/netease/download/reporter/ReportUrlController;->init(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportProxy [reportFile] ReportUrlController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/reporter/ReportUrlController;->geturls()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_8

    .line 150
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/download/reporter/ReportNet$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/download/reporter/ReportNet$2;-><init>(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    .line 159
    invoke-direct {p0, p1, v1, p2}, Lcom/netease/download/reporter/ReportNet;->reportControl(Ljava/lang/String;ZI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportNet [reportFile] \u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7 Exception="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
