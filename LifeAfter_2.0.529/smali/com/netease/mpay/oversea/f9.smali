.class public Lcom/netease/mpay/oversea/f9;
.super Ljava/lang/Object;
.source "SDKConfigInfo.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field private e:Z

.field public f:Z

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->e:Z

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->f:Z

    return-void
.end method

.method public static a([B)Lcom/netease/mpay/oversea/f9;
    .locals 9

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/u2;->a([B)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/netease/mpay/oversea/u2;->a(Ljava/util/HashMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    .line 14
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "1"

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "6"

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "2"

    .line 17
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "7"

    .line 18
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "3"

    .line 19
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "4"

    .line 20
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "5"

    .line 21
    invoke-virtual {p0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 22
    new-instance v7, Lcom/netease/mpay/oversea/f9;

    invoke-direct {v7}, Lcom/netease/mpay/oversea/f9;-><init>()V

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/netease/mpay/oversea/f9;->a:Z

    .line 26
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/netease/mpay/oversea/f9;->b:Z

    .line 29
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/netease/mpay/oversea/f9;->c:Z

    .line 32
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/netease/mpay/oversea/f9;->d:Z

    .line 33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 34
    iput-object v5, v7, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/netease/mpay/oversea/f9;->f:Z

    .line 37
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v7, Lcom/netease/mpay/oversea/f9;->e:Z

    :cond_5
    return-object v7

    .line 39
    :cond_6
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/f9;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f9;-><init>()V

    return-object p0

    .line 40
    :catch_0
    new-instance p0, Lcom/netease/mpay/oversea/f9;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f9;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->f:Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    .line 6
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/f9;->f:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->e:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/f9;->e:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/f9;->f:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()[B
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/f9;->a:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/f9;->b:Z

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v4, "6"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/f9;->c:Z

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v4, "2"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/f9;->d:Z

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string v4, "7"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/f9;->e:Z

    if-eqz v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    const-string v4, "5"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/f9;->f:Z

    if-eqz v1, :cond_5

    move-object v2, v3

    :cond_5
    const-string v1, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/f9;->g:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_6
    invoke-static {v0}, Lcom/netease/mpay/oversea/u2;->a(Ljava/io/Serializable;)[B

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/f9;->e:Z

    return v0
.end method
