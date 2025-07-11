.class public Lcom/netease/mpay/httpdns/HttpDns$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/httpdns/HttpDns;->switchHttpDnsMode(Ljava/lang/String;Lcom/netease/mpay/httpdns/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/netease/mpay/httpdns/HttpDns;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/httpdns/HttpDns;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->c:Lcom/netease/mpay/httpdns/HttpDns;

    iput-object p2, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->c:Lcom/netease/mpay/httpdns/HttpDns;

    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/httpdns/HttpDns;->switchHttpDnsMode(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->c:Lcom/netease/mpay/httpdns/HttpDns;

    .line 1
    iget-object v1, v1, Lcom/netease/mpay/httpdns/HttpDns;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/httpdns/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/mpay/httpdns/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
