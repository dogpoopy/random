.class public Lcom/netease/mpay/httpdns/HttpDns$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/httpdns/HttpDns;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mpay/httpdns/HttpDns;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/httpdns/HttpDns;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns$a;->a:Lcom/netease/mpay/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$a;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 1
    iget-boolean v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lcom/netease/mpay/httpdns/j;->b(Landroid/content/Context;)Lcom/netease/mpay/httpdns/j;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$a;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 7
    iget-object v0, v0, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns$a;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 9
    iget-boolean v3, v2, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    if-nez v3, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v2, v2, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/netease/mpay/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 13
    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns$a;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 14
    invoke-virtual {v2, v1, v3}, Lcom/netease/mpay/httpdns/HttpDns;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns$a;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 16
    iget-object v2, v2, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-void
.end method
