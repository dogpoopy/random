.class public Lcom/netease/mpay/oversea/a3;
.super Ljava/lang/Object;
.source "ExLoginData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/a3$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/netease/mpay/oversea/a3$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/a3$a;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/a3$a;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/a3$a;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/a3$a;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    .line 19
    iput-object p1, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;)Z"
        }
    .end annotation

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/mpay/oversea/c3;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/oversea/c3;

    .line 18
    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/c3;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ExLoginData: hasChanged: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static b(Ljava/util/List;)Lcom/netease/mpay/oversea/a3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;)",
            "Lcom/netease/mpay/oversea/a3;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/a3;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/a3;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/t8;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/netease/mpay/oversea/b3;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    iget v0, v0, Lcom/netease/mpay/oversea/a3$a;->b:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/a3$a;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/z1;Lcom/netease/mpay/oversea/a3$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    .line 2
    iget-object p1, p1, Lcom/netease/mpay/oversea/z1;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/a3$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/a3;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/c3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/a3;->b:Lcom/netease/mpay/oversea/a3$a;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/a3$a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExLoginData{, mExLoginInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
