.class public Lcom/netease/mpay/oversea/a1$a;
.super Ljava/lang/Object;
.source "ContentViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/oversea/w2;

.field private b:Lcom/netease/mpay/oversea/b1;

.field private c:Lcom/netease/mpay/oversea/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/b1;)Lcom/netease/mpay/oversea/a1$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/a1$a;->b:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/a1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/netease/mpay/oversea/a1$a;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/a1$a;->c:Lcom/netease/mpay/oversea/m7;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/a1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/a1$a;->a:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method public a(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/mpay/oversea/a1;
    .locals 4

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/a1;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/a1;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/a1$a;->b:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/a1$a;->a:Lcom/netease/mpay/oversea/w2;

    iget-object v3, p0, Lcom/netease/mpay/oversea/a1$a;->c:Lcom/netease/mpay/oversea/m7;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/a1;->a(Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/w2;Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/a1;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Lcom/netease/mpay/oversea/a1;Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method
