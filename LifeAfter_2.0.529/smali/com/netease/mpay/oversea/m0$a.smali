.class Lcom/netease/mpay/oversea/m0$a;
.super Ljava/lang/Object;
.source "BoltrendManager.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m0;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/m0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m0$a;->b:Lcom/netease/mpay/oversea/m0;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m0$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boltrend_Manager transfer onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/u;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boltrend_Manager transfer onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/n0;->b()Lcom/netease/mpay/oversea/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n0;->d()V

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/u;->a()Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/m0$a;->b:Lcom/netease/mpay/oversea/m0;

    invoke-static {v1}, Lcom/netease/mpay/oversea/m0;->a(Lcom/netease/mpay/oversea/m0;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/m0$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/n5;->b(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/u;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/m0$a;->a(Lcom/netease/mpay/oversea/u;)V

    return-void
.end method
