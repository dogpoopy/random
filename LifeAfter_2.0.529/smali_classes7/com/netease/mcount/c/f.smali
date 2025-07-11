.class public Lcom/netease/mcount/c/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/netease/ntunisdk/core/network/ResolveDnsResult;
    .locals 1

    invoke-static {}, Lcom/netease/mcount/f/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/core/httpdns/HttpDnsAgent;->resolveDnsResult(Ljava/lang/String;)Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netease/mcount/f/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "HttpDns is disabled !!!"

    invoke-static {p0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/core/httpdns/HttpDnsAgent;->initHttpDns(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netease/mcount/f/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/core/httpdns/HttpDnsKeyData;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/core/httpdns/HttpDnsKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/netease/mcount/f/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/core/httpdns/HttpDnsAgent;->switchDnsMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
