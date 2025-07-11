.class Lcom/netease/mpay/oversea/v4$i;
.super Ljava/lang/Object;
.source "LVUAgeGroupView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/x8$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/v4;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/v4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/v4$i;->a:Lcom/netease/mpay/oversea/v4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/d1;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4$i;->a:Lcom/netease/mpay/oversea/v4;

    invoke-static {v0, p2}, Lcom/netease/mpay/oversea/v4;->a(Lcom/netease/mpay/oversea/v4;Lcom/netease/mpay/oversea/d1;)Lcom/netease/mpay/oversea/d1;

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/v4$i;->a:Lcom/netease/mpay/oversea/v4;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/v4;->a(Lcom/netease/mpay/oversea/v4;I)I

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/v4$i;->a:Lcom/netease/mpay/oversea/v4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/v4;->o(Lcom/netease/mpay/oversea/v4;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/v4$i;->a:Lcom/netease/mpay/oversea/v4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/v4;->p(Lcom/netease/mpay/oversea/v4;)V

    return-void
.end method
