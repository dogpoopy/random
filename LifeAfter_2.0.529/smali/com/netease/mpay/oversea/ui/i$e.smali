.class Lcom/netease/mpay/oversea/ui/i$e;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/i$k;

.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/oversea/r4;

.field final synthetic d:Lcom/netease/mpay/oversea/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$e;->d:Lcom/netease/mpay/oversea/ui/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$e;->a:Lcom/netease/mpay/oversea/ui/i$k;

    iput p3, p0, Lcom/netease/mpay/oversea/ui/i$e;->b:I

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/i$e;->c:Lcom/netease/mpay/oversea/r4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$e;->d:Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$e;->a:Lcom/netease/mpay/oversea/ui/i$k;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$e;->d:Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$e;->a:Lcom/netease/mpay/oversea/ui/i$k;

    iget v2, p0, Lcom/netease/mpay/oversea/ui/i$e;->b:I

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/i$e;->c:Lcom/netease/mpay/oversea/r4;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$k;ILcom/netease/mpay/oversea/r4;)V

    return-void
.end method
