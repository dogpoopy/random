.class public Lcom/netease/mpay/oversea/d2;
.super Lcom/netease/mpay/oversea/v2;
.source "EmailEntrance.java"


# instance fields
.field private q:Lcom/netease/mpay/oversea/p;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/netease/mpay/oversea/g6;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/p;)V
    .locals 14

    move-object v13, p0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/v2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p3

    .line 4
    iput-object v0, v13, Lcom/netease/mpay/oversea/d2;->t:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 5
    iput-object v0, v13, Lcom/netease/mpay/oversea/d2;->u:Lcom/netease/mpay/oversea/g6;

    move-object/from16 v0, p7

    .line 6
    iput-object v0, v13, Lcom/netease/mpay/oversea/d2;->q:Lcom/netease/mpay/oversea/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/d2;->r:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/d2;->s:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/d2;->v:Ljava/lang/String;

    return-void
.end method

.method public j()Lcom/netease/mpay/oversea/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d2;->q:Lcom/netease/mpay/oversea/p;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d2;->r:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d2;->u:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d2;->s:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d2;->t:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/d2;->v:Ljava/lang/String;

    return-object v0
.end method
