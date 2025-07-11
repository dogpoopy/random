.class public Lcom/netease/mpay/oversea/y5$b;
.super Ljava/lang/Object;
.source "LoginInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/netease/mpay/oversea/g6;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/netease/mpay/oversea/y5;

.field private i:Z

.field private j:Lcom/netease/mpay/oversea/g6;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lcom/netease/mpay/oversea/s9;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/g6;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/y5$b;->k:Z

    .line 18
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/netease/mpay/oversea/y5$b;->b:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/netease/mpay/oversea/y5$b;->c:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/netease/mpay/oversea/y5$b;->d:Ljava/lang/String;

    if-nez p7, :cond_0

    .line 22
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p7, p0, Lcom/netease/mpay/oversea/y5$b;->f:Ljava/util/ArrayList;

    .line 23
    iput-object p6, p0, Lcom/netease/mpay/oversea/y5$b;->g:Ljava/lang/String;

    if-nez p5, :cond_1

    .line 24
    sget-object p1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    goto :goto_0

    :cond_1
    move-object p1, p5

    :goto_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->e:Lcom/netease/mpay/oversea/g6;

    const/4 p1, 0x2

    .line 25
    iput p1, p0, Lcom/netease/mpay/oversea/y5$b;->m:I

    const/16 p1, 0x66

    .line 26
    iput p1, p0, Lcom/netease/mpay/oversea/y5$b;->n:I

    .line 32
    sget-object p1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 p2, 0x0

    if-ne p5, p1, :cond_2

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->f:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->f:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/netease/mpay/oversea/y5$b;->e:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/y5$b;->i:Z

    .line 34
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/y5$b;->k:Z

    .line 35
    sget-object p1, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-ne p1, p5, :cond_5

    const/4 p2, 0x1

    :cond_5
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/y5$b;->s:Z

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/y5;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-static {p1}, Lcom/netease/mpay/oversea/y5;->a(Lcom/netease/mpay/oversea/y5;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/y5;->a(Lcom/netease/mpay/oversea/y5;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->j:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_3

    .line 13
    sget-object v1, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/oversea/y5;->a(Lcom/netease/mpay/oversea/y5;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/y5;->a(Lcom/netease/mpay/oversea/y5;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/y5$b;->j:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v2, :cond_2

    .line 18
    iget-boolean v1, v0, Lcom/netease/mpay/oversea/y5;->j:Z

    iput-boolean v1, p1, Lcom/netease/mpay/oversea/y5;->j:Z

    .line 21
    :cond_2
    iget v0, v0, Lcom/netease/mpay/oversea/y5;->l:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/y5$c;->b(ILcom/netease/mpay/oversea/g6;)I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/y5;->l:I

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    iget v1, v0, Lcom/netease/mpay/oversea/y5;->l:I

    iput v1, p1, Lcom/netease/mpay/oversea/y5;->l:I

    .line 24
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v2, :cond_4

    .line 25
    iget v0, v0, Lcom/netease/mpay/oversea/y5;->l:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/y5$c;->a(ILcom/netease/mpay/oversea/g6;)I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/y5;->l:I

    goto :goto_0

    .line 27
    :cond_4
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 31
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/y5$b;->t:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_6

    .line 32
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/y5;->t:Z

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/y5;->t:Z

    goto :goto_1

    .line 36
    :cond_5
    iget v0, p1, Lcom/netease/mpay/oversea/y5;->l:I

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/y5$c;->a(ILcom/netease/mpay/oversea/g6;)I

    move-result v0

    iput v0, p1, Lcom/netease/mpay/oversea/y5;->l:I

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/y5$b;->m:I

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->j:Lcom/netease/mpay/oversea/g6;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/y5$b;
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->t:Lcom/netease/mpay/oversea/s9;

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->p:Lcom/netease/mpay/oversea/s9;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/y5$b;->i:Z

    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/netease/mpay/oversea/y5;
    .locals 15

    .line 37
    new-instance v14, Lcom/netease/mpay/oversea/y5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/y5$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/y5$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/y5$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/y5$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/y5$b;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/y5$b;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/y5$b;->e:Lcom/netease/mpay/oversea/g6;

    iget-object v8, p0, Lcom/netease/mpay/oversea/y5$b;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/oversea/y5$b;->f:Ljava/util/ArrayList;

    iget v10, p0, Lcom/netease/mpay/oversea/y5$b;->m:I

    iget v11, p0, Lcom/netease/mpay/oversea/y5$b;->n:I

    iget v12, p0, Lcom/netease/mpay/oversea/y5$b;->o:I

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/netease/mpay/oversea/y5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;IIILcom/netease/mpay/oversea/y5$a;)V

    .line 39
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/y5$b;->k:Z

    iput-boolean v0, v14, Lcom/netease/mpay/oversea/y5;->o:Z

    .line 40
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->q:Ljava/lang/String;

    iput-object v0, v14, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/netease/mpay/oversea/y5$b;->r:Ljava/lang/String;

    iput-object v0, v14, Lcom/netease/mpay/oversea/y5;->r:Ljava/lang/String;

    .line 42
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/y5$b;->s:Z

    iput-boolean v0, v14, Lcom/netease/mpay/oversea/y5;->t:Z

    .line 43
    invoke-direct {p0, v14}, Lcom/netease/mpay/oversea/y5$b;->a(Lcom/netease/mpay/oversea/y5;)V

    .line 44
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/y5$b;->i:Z

    invoke-static {v14, v0}, Lcom/netease/mpay/oversea/y5$c;->a(Lcom/netease/mpay/oversea/y5;Z)V

    return-object v14
.end method

.method public b(I)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/y5$b;->o:I

    return-object p0
.end method

.method public b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->h:Lcom/netease/mpay/oversea/y5;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/y5$b;->n:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/y5$b;->l:Ljava/lang/String;

    return-object p0
.end method
