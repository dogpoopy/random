.class public Lcom/netease/mpay/oversea/e6;
.super Lcom/netease/mpay/oversea/a9;
.source "LoginResponse.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lcom/netease/mpay/oversea/g6;

.field public i:Lcom/netease/mpay/oversea/g6;

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZILjava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;ZI",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    .line 2
    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 3
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->i:Lcom/netease/mpay/oversea/g6;

    move-object v1, p1

    .line 20
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    move-object v1, p2

    .line 21
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->b:Ljava/lang/String;

    move-object v1, p3

    .line 22
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    move-object v1, p4

    .line 23
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    move-object v1, p5

    .line 24
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    move-object v1, p9

    .line 25
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    move-object v1, p7

    .line 26
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    move v1, p8

    .line 27
    iput v1, v0, Lcom/netease/mpay/oversea/e6;->j:I

    move-object v1, p6

    .line 28
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    move v1, p10

    .line 29
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/e6;->k:Z

    move v1, p11

    .line 30
    iput v1, v0, Lcom/netease/mpay/oversea/e6;->m:I

    move-object v1, p12

    .line 31
    iput-object v1, v0, Lcom/netease/mpay/oversea/e6;->s:Ljava/lang/String;

    move v1, p13

    .line 32
    iput v1, v0, Lcom/netease/mpay/oversea/e6;->n:I

    move/from16 v1, p14

    .line 33
    iput v1, v0, Lcom/netease/mpay/oversea/e6;->p:I

    move/from16 v1, p15

    .line 34
    iput v1, v0, Lcom/netease/mpay/oversea/e6;->q:I

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/e6;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/e6;->i:Lcom/netease/mpay/oversea/g6;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/e6;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/e6;->r:Ljava/lang/String;

    return-object p0
.end method

.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/e6;->m:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
