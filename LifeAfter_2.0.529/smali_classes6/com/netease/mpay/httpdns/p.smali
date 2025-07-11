.class public Lcom/netease/mpay/httpdns/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/netease/mpay/httpdns/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/httpdns/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "[%p-%l-%c]-#%t:%m"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/httpdns/o;-><init>(IILjava/lang/String;)V

    .line 2
    sput-object v0, Lcom/netease/mpay/httpdns/p;->a:Lcom/netease/mpay/httpdns/o;

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/netease/mpay/httpdns/p;->a:Lcom/netease/mpay/httpdns/o;

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/httpdns/o;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpDns"

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/httpdns/p;->a:Lcom/netease/mpay/httpdns/o;

    iget v0, v0, Lcom/netease/mpay/httpdns/o;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1, p0}, Lcom/netease/mpay/httpdns/p;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1
    sget-object v0, Lcom/netease/mpay/httpdns/p;->a:Lcom/netease/mpay/httpdns/o;

    iget v0, v0, Lcom/netease/mpay/httpdns/o;->a:I

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/netease/mpay/httpdns/p;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 4

    const-class v0, Lcom/netease/mpay/httpdns/p;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/netease/mpay/httpdns/o;

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "[%p-%l-%c]-#%t:%m"

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/mpay/httpdns/o;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/httpdns/p;->a:Lcom/netease/mpay/httpdns/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
