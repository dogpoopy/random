.class public Lcom/netease/mpay/oversea/j;
.super Ljava/lang/Object;
.source "ApiError.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/oversea/d;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/d;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/j;->g:Ljava/util/ArrayList;

    .line 27
    iput p1, p0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x271f

    if-ne p1, v1, :cond_0

    .line 29
    sget-object p1, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    iput-object p1, p0, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/netease/mpay/oversea/j;->c:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 35
    :goto_0
    iput-object p4, p0, Lcom/netease/mpay/oversea/j;->f:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 37
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x2711

    move-object v1, p0

    move-object v3, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/j;->a:I

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/j;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/j;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x2721

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x2723

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x271f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
