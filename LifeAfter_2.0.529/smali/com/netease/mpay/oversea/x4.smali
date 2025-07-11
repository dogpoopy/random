.class public Lcom/netease/mpay/oversea/x4;
.super Lcom/netease/mpay/oversea/a9;
.source "LVUConfigResponse.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/d1;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/d1;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w8;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    const-string v0, "01012000"

    .line 25
    iput-object v0, p0, Lcom/netease/mpay/oversea/x4;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/x4;->g:Z

    .line 32
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/x4;->h:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/x4;->i:Z

    .line 53
    iput-object p4, p0, Lcom/netease/mpay/oversea/x4;->a:Ljava/util/ArrayList;

    .line 54
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/x4;->f:Z

    .line 55
    iput-object p2, p0, Lcom/netease/mpay/oversea/x4;->c:Ljava/lang/String;

    .line 56
    iput p1, p0, Lcom/netease/mpay/oversea/x4;->e:I

    .line 57
    iput-object p5, p0, Lcom/netease/mpay/oversea/x4;->j:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/d1;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    const-string v0, "01012000"

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/x4;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/netease/mpay/oversea/x4;->e:I

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/x4;->g:Z

    .line 9
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/x4;->h:Z

    .line 17
    iput-object p1, p0, Lcom/netease/mpay/oversea/x4;->a:Ljava/util/ArrayList;

    .line 18
    iput-object p3, p0, Lcom/netease/mpay/oversea/x4;->c:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/netease/mpay/oversea/x4;->b:Ljava/util/HashMap;

    .line 20
    iput-boolean p5, p0, Lcom/netease/mpay/oversea/x4;->f:Z

    .line 21
    iput-boolean p6, p0, Lcom/netease/mpay/oversea/x4;->i:Z

    .line 22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    iput-object p4, p0, Lcom/netease/mpay/oversea/x4;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/netease/mpay/oversea/x4;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/x4;->g:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/x4;->f:Z

    return v0
.end method

.method public b(Z)Lcom/netease/mpay/oversea/x4;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/x4;->h:Z

    return-object p0
.end method
