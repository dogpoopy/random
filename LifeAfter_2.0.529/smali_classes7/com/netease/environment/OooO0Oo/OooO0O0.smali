.class public Lcom/netease/environment/OooO0Oo/OooO0O0;
.super Ljava/lang/Object;
.source "HttpPost.java"


# static fields
.field private static final OooO00o:Ljava/lang/String; = "OooO0O0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a98

    const/16 v1, 0x7530

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/netease/environment/OooO0Oo/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/netease/environment/OooO0oo/OooO0o;->OooO00o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 12
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p2, "POST"

    .line 13
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p2, "Content-Type"

    const-string p3, "application/x-www-form-urlencoded"

    .line 15
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Connection"

    const-string p3, "close"

    .line 16
    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 21
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 22
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 23
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 25
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 29
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_3

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_6
    move-exception p1

    move-object p0, v1

    :goto_1
    move-object p2, v1

    .line 52
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    sget-object p3, Lcom/netease/environment/OooO0Oo/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;)V

    if-eqz p0, :cond_3

    goto :goto_7

    :catch_7
    move-exception p1

    move-object p0, v1

    :goto_3
    move-object p2, v1

    .line 55
    :goto_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    sget-object p3, Lcom/netease/environment/OooO0Oo/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;)V

    if-eqz p0, :cond_3

    goto :goto_7

    :catch_8
    move-exception p1

    move-object p0, v1

    :goto_5
    move-object p2, v1

    .line 58
    :goto_6
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 59
    sget-object p3, Lcom/netease/environment/OooO0Oo/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_3

    .line 51
    :goto_7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-nez p2, :cond_4

    return-object v1

    .line 77
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_8
    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_5
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method
