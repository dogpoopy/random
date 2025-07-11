.class public Lcom/netease/mpay/oversea/ac;
.super Lcom/netease/mpay/oversea/a9;
.source "UserInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ac$a;,
        Lcom/netease/mpay/oversea/ac$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/netease/mpay/oversea/g6;",
            "Lcom/netease/mpay/oversea/ac$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/netease/mpay/oversea/ac$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ac;->a:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ac;->c:Ljava/util/ArrayList;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/netease/mpay/oversea/ac;->d:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/netease/mpay/oversea/ac;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/netease/mpay/oversea/ac;->f:Lcom/netease/mpay/oversea/ac$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ac;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ac$b;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/netease/mpay/oversea/ac$b;->a:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Lcom/netease/mpay/oversea/ac$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ac;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/ac;->d:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ac;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ac$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget v0, v0, Lcom/netease/mpay/oversea/ac$b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public b(Lcom/netease/mpay/oversea/g6;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ac;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
