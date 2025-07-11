.class Lcom/netease/mpay/oversea/b5$k;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/qb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b5$k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    const/16 v0, 0xfa8

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->p(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERROR_LVU_REGISTERED:I

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, p2, v1}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->q(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->n(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/q4;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b5;->b(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/d1;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b5;->b(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/d1;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/q4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/qb;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$k;->b:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->o(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qb;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/b5$k;->a(Lcom/netease/mpay/oversea/qb;)V

    return-void
.end method
