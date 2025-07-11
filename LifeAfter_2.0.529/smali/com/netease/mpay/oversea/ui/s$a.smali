.class Lcom/netease/mpay/oversea/ui/s$a;
.super Ljava/lang/Object;
.source "RestoreLinkAccount.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/s;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/s;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$n;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/ui/i$n;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$n;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$n;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 12
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 13
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 1

    .line 1
    new-instance p3, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p3, v0, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p3, Lcom/netease/mpay/oversea/ui/i$l;->o:Z

    .line 4
    iget-object p1, p2, Lcom/netease/mpay/oversea/e6;->r:Ljava/lang/String;

    iput-object p1, p3, Lcom/netease/mpay/oversea/ui/i$l;->p:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$n;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$n;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/s$a;->a:Lcom/netease/mpay/oversea/ui/s;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 6
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
