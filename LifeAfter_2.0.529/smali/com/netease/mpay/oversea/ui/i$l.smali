.class public Lcom/netease/mpay/oversea/ui/i$l;
.super Lcom/netease/mpay/oversea/ui/i$g;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/netease/mpay/oversea/g6;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Lcom/netease/mpay/oversea/g6;

.field public final n:I

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Lcom/netease/mpay/oversea/e6;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v1, p3, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/mpay/oversea/ui/i$g;-><init>(Lcom/netease/mpay/oversea/ui/i$p;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/i$l;->o:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/netease/mpay/oversea/ui/i$l;->p:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/i$l;->q:Lcom/netease/mpay/oversea/e6;

    .line 10
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->d:Ljava/lang/String;

    .line 11
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->f:Ljava/lang/String;

    .line 12
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->i:Lcom/netease/mpay/oversea/g6;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->m:Lcom/netease/mpay/oversea/g6;

    .line 13
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->e:Ljava/lang/String;

    .line 14
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->h:Ljava/lang/String;

    .line 15
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->i:Ljava/util/ArrayList;

    .line 16
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    if-nez p2, :cond_0

    sget-object p2, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    :cond_0
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->g:Lcom/netease/mpay/oversea/g6;

    .line 17
    iget p2, p3, Lcom/netease/mpay/oversea/e6;->j:I

    iput p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->j:I

    .line 18
    iget p2, p3, Lcom/netease/mpay/oversea/e6;->m:I

    iput p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->k:I

    .line 19
    iget-object p2, p3, Lcom/netease/mpay/oversea/e6;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->l:Ljava/lang/String;

    .line 20
    iget p2, p3, Lcom/netease/mpay/oversea/e6;->p:I

    iput p2, p0, Lcom/netease/mpay/oversea/ui/i$l;->n:I

    .line 21
    sget-object p2, Lcom/netease/mpay/oversea/s9;->I:Lcom/netease/mpay/oversea/s9;

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/i$l;->o:Z

    .line 22
    iget-object p1, p3, Lcom/netease/mpay/oversea/e6;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$l;->p:Ljava/lang/String;

    .line 23
    iget-object p1, p3, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$l;->r:Ljava/lang/String;

    return-void
.end method
