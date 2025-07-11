.class Lcom/netease/mpay/oversea/i0$a$a;
.super Ljava/lang/Object;
.source "BindView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0$a;->b(ILcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/i0$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$a$a;->a:Lcom/netease/mpay/oversea/i0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a$a;->a:Lcom/netease/mpay/oversea/i0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->k(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->k0()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/i0$a$a;->a:Lcom/netease/mpay/oversea/i0$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    .line 3
    invoke-static {v2}, Lcom/netease/mpay/oversea/i0;->j(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
