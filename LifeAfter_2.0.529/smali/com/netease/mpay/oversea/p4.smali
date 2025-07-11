.class public Lcom/netease/mpay/oversea/p4;
.super Lcom/netease/mpay/oversea/fa;
.source "InitPaymentTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/e8;",
        ">;"
    }
.end annotation


# instance fields
.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:I

.field u:F

.field v:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLorg/json/JSONObject;Lcom/netease/mpay/oversea/ea;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p13}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/i8;)Lcom/netease/mpay/oversea/fa;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/p4;->l:Ljava/lang/String;

    .line 4
    iget-object p1, p4, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/p4;->m:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/netease/mpay/oversea/p4;->n:I

    .line 6
    iget-object p1, p4, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/p4;->o:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/netease/mpay/oversea/p4;->p:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/netease/mpay/oversea/p4;->q:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/netease/mpay/oversea/p4;->r:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/netease/mpay/oversea/p4;->s:Ljava/lang/String;

    .line 11
    iput p10, p0, Lcom/netease/mpay/oversea/p4;->t:I

    .line 12
    iput p11, p0, Lcom/netease/mpay/oversea/p4;->u:F

    .line 13
    iput-object p12, p0, Lcom/netease/mpay/oversea/p4;->v:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/p4;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e8;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e8;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/netease/mpay/oversea/da;

    iget-object v2, v0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v3, v0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v2, Lcom/netease/mpay/oversea/d8;

    iget-object v5, v0, Lcom/netease/mpay/oversea/p4;->l:Ljava/lang/String;

    iget-object v6, v0, Lcom/netease/mpay/oversea/p4;->m:Ljava/lang/String;

    iget-object v7, v0, Lcom/netease/mpay/oversea/p4;->o:Ljava/lang/String;

    iget v8, v0, Lcom/netease/mpay/oversea/p4;->n:I

    iget-object v9, v0, Lcom/netease/mpay/oversea/p4;->p:Ljava/lang/String;

    iget-object v10, v0, Lcom/netease/mpay/oversea/p4;->q:Ljava/lang/String;

    iget-object v11, v0, Lcom/netease/mpay/oversea/p4;->r:Ljava/lang/String;

    iget-object v12, v0, Lcom/netease/mpay/oversea/p4;->s:Ljava/lang/String;

    iget v13, v0, Lcom/netease/mpay/oversea/p4;->t:I

    iget v14, v0, Lcom/netease/mpay/oversea/p4;->u:F

    iget-object v15, v0, Lcom/netease/mpay/oversea/p4;->v:Lorg/json/JSONObject;

    move-object v4, v2

    invoke-direct/range {v4 .. v15}, Lcom/netease/mpay/oversea/d8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLorg/json/JSONObject;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/e8;

    return-object v1
.end method
