.class public Lcom/netease/mpay/oversea/q3$f;
.super Ljava/lang/Object;
.source "GameConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/netease/mpay/oversea/g6;

.field public final b:Z

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Lcom/netease/mpay/oversea/q3$g;

.field public final f:Lcom/netease/mpay/oversea/q3$d;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I

.field public final j:Lcom/netease/mpay/oversea/h8;

.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/g6;ZLjava/lang/String;Lcom/netease/mpay/oversea/q3$g;Lcom/netease/mpay/oversea/q3$d;ZLjava/lang/String;IILcom/netease/mpay/oversea/h8;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/q3$f;->k:I

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3$f;->l:Z

    .line 10
    iput-object p1, p0, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz p2, :cond_0

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3$f;->b:Z

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/q3$f;->c:Ljava/util/ArrayList;

    .line 13
    iput-object p3, p0, Lcom/netease/mpay/oversea/q3$f;->d:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    .line 15
    iput-object p5, p0, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    .line 16
    iput-object p7, p0, Lcom/netease/mpay/oversea/q3$f;->g:Ljava/lang/String;

    .line 17
    iput p8, p0, Lcom/netease/mpay/oversea/q3$f;->h:I

    .line 18
    iput p9, p0, Lcom/netease/mpay/oversea/q3$f;->i:I

    .line 19
    iput-object p10, p0, Lcom/netease/mpay/oversea/q3$f;->j:Lcom/netease/mpay/oversea/h8;

    .line 20
    iput-boolean p6, p0, Lcom/netease/mpay/oversea/q3$f;->l:Z

    .line 21
    iput p11, p0, Lcom/netease/mpay/oversea/q3$f;->k:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
