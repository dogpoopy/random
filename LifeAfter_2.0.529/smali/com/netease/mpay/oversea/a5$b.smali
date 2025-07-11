.class Lcom/netease/mpay/oversea/a5$b;
.super Ljava/lang/Object;
.source "LVUHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/a5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/x4;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/a5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/a5$b;->b:Lcom/netease/mpay/oversea/a5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/a5$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5$b;->b:Lcom/netease/mpay/oversea/a5;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/a5;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/x4;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p1, Lcom/netease/mpay/oversea/x4;->e:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5$b;->b:Lcom/netease/mpay/oversea/a5;

    const-string v0, "lvu_age_stage"

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5$b;->b:Lcom/netease/mpay/oversea/a5;

    iget-object v0, p0, Lcom/netease/mpay/oversea/a5$b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/x4;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/a5$b;->a(Lcom/netease/mpay/oversea/x4;)V

    return-void
.end method
