.class public Lcom/netease/mpay/oversea/thirdapi/q;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "NtPassportApi.java"


# instance fields
.field private d:Lcom/netease/mpay/oversea/b1;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/g6;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/q;->d:Lcom/netease/mpay/oversea/b1;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/q;->g:Lcom/netease/mpay/oversea/g6;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/q;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 6
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/thirdapi/q;->e()Lcom/netease/mpay/oversea/p;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/u0;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Passport Login Success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/q;->g:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/p5;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/a0;

    const-string v3, "bind_ticket"

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "account"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/netease/mpay/oversea/a0;

    const-string v1, "password"

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x2

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 3

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 13
    sget-object p1, Lcom/netease/mpay/oversea/g6;->L:Lcom/netease/mpay/oversea/g6;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/q;->g:Lcom/netease/mpay/oversea/g6;

    if-ne p1, p2, :cond_0

    .line 14
    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    invoke-direct {p2, v1, v2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/g6;->c(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const-string v0, ""

    .line 18
    invoke-static {v0, p1, p2}, Lcom/netease/mpay/oversea/u0;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/q;->d:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 26
    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 27
    sget-object p2, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-ne p2, p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/q;->d:Lcom/netease/mpay/oversea/b1;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p2, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/q;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/q;->d:Lcom/netease/mpay/oversea/b1;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/q;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p2, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/q;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :goto_0
    return-void
.end method

.method public e()Lcom/netease/mpay/oversea/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/q$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/q$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/q;)V

    return-object v0
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/q;->g:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
