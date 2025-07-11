.class public Lcom/netease/mpay/httpdns/HttpDns$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/httpdns/HttpDns;->c()V
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

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======>>> initial anycast ip : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 1
    iget-object v1, v1, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 3
    iget-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lcom/netease/mpay/httpdns/j;->b(Landroid/content/Context;)Lcom/netease/mpay/httpdns/j;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    invoke-static {v0, v2}, Lcom/netease/mpay/httpdns/HttpDns;->b(Lcom/netease/mpay/httpdns/HttpDns;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 8
    iget-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    .line 9
    iget v3, v0, Lcom/netease/mpay/httpdns/HttpDns;->m:I

    .line 10
    invoke-static {v1, v3}, Lcom/netease/mpay/httpdns/j;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 13
    iget-object v0, v0, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    sget-object v1, Lcom/netease/mpay/httpdns/d;->b:Ljava/lang/String;

    .line 15
    iput-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    goto/16 :goto_2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 17
    iget-object v0, v0, Lcom/netease/mpay/httpdns/HttpDns;->j:Lcom/netease/mpay/httpdns/h;

    .line 18
    sget-object v1, Lcom/netease/mpay/httpdns/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/httpdns/h;->a(Ljava/lang/String;)Lcom/netease/mpay/httpdns/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/netease/mpay/httpdns/a;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/httpdns/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 19
    iget v4, v4, Lcom/netease/mpay/httpdns/HttpDns;->m:I

    if-nez v4, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 20
    :goto_0
    iget-object v5, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 21
    iget-object v5, v5, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    if-nez v5, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    sget-object v6, Lcom/netease/mpay/httpdns/j;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 23
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v6, "any_cast_ip_mainland"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "any_cast_ip_oversea"

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    move-object v1, v4

    .line 24
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    .line 25
    iput-object v1, v0, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======>>> updated anyCast ip : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns$b;->a:Lcom/netease/mpay/httpdns/HttpDns;

    invoke-static {v0, v2}, Lcom/netease/mpay/httpdns/HttpDns;->a(Lcom/netease/mpay/httpdns/HttpDns;Z)Z

    return-void
.end method
