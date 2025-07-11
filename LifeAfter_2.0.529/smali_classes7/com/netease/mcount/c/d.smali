.class public Lcom/netease/mcount/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mcount/c/d$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field protected d:I

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:I

.field protected g:I

.field protected h:Lcom/netease/mcount/c/d$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mcount/c/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mcount/c/d;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mcount/c/d;->b:Ljava/util/ArrayList;

    iput p1, p0, Lcom/netease/mcount/c/d;->d:I

    iput-object p3, p0, Lcom/netease/mcount/c/d;->e:Ljava/util/HashMap;

    const/16 p1, 0x7530

    iput p1, p0, Lcom/netease/mcount/c/d;->f:I

    iput p1, p0, Lcom/netease/mcount/c/d;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/mcount/c/d;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/mcount/c/d;->h:Lcom/netease/mcount/c/d$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/netease/mcount/c/d;
    .locals 0

    iput p1, p0, Lcom/netease/mcount/c/d;->g:I

    return-object p0
.end method

.method public b(I)Lcom/netease/mcount/c/d;
    .locals 0

    iput p1, p0, Lcom/netease/mcount/c/d;->f:I

    return-object p0
.end method
