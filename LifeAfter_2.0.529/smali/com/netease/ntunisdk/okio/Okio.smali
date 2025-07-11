.class public final Lcom/netease/ntunisdk/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/netease/ntunisdk/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/netease/ntunisdk/okio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 189
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 188
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blackhole()Lcom/netease/ntunisdk/okio/Sink;
    .locals 1

    .line 201
    new-instance v0, Lcom/netease/ntunisdk/okio/Okio$3;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;
    .locals 1

    .line 62
    new-instance v0, Lcom/netease/ntunisdk/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/RealBufferedSink;-><init>(Lcom/netease/ntunisdk/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;
    .locals 1

    .line 53
    new-instance v0, Lcom/netease/ntunisdk/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/RealBufferedSource;-><init>(Lcom/netease/ntunisdk/okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 264
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sink(Ljava/io/File;)Lcom/netease/ntunisdk/okio/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 183
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/netease/ntunisdk/okio/Sink;
    .locals 1

    .line 67
    new-instance v0, Lcom/netease/ntunisdk/okio/Timeout;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Sink;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lcom/netease/ntunisdk/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/netease/ntunisdk/okio/Okio$1;-><init>(Lcom/netease/ntunisdk/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0}, Lcom/netease/ntunisdk/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/AsyncTimeout;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->sink(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/netease/ntunisdk/okio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 196
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/File;)Lcom/netease/ntunisdk/okio/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 170
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/okio/Okio;->source(Ljava/io/InputStream;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/netease/ntunisdk/okio/Source;
    .locals 1

    .line 127
    new-instance v0, Lcom/netease/ntunisdk/okio/Timeout;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/okio/Okio;->source(Ljava/io/InputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method private static source(Ljava/io/InputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Source;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 134
    new-instance v0, Lcom/netease/ntunisdk/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/netease/ntunisdk/okio/Okio$2;-><init>(Lcom/netease/ntunisdk/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 225
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {p0}, Lcom/netease/ntunisdk/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/AsyncTimeout;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/okio/Okio;->source(Ljava/io/InputStream;Lcom/netease/ntunisdk/okio/Timeout;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p0

    .line 228
    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->source(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p0

    return-object p0

    .line 225
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/netease/ntunisdk/okio/Source;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 177
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/okio/Okio;->source(Ljava/io/InputStream;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object p0

    return-object p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/AsyncTimeout;
    .locals 1

    .line 232
    new-instance v0, Lcom/netease/ntunisdk/okio/Okio$4;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
