.class Lcom/netease/mpay/oversea/gc$a;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/gc;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/gc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/gc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/gc;->n:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/gc;->b(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->o:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/j;

    const/16 v4, 0x2715

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    .line 4
    invoke-static {v2}, Lcom/netease/mpay/oversea/gc;->a(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/gc;->j(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-static {v1}, Lcom/netease/mpay/oversea/gc;->i(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/gc;->h(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/w2;

    .line 12
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/gc;->l(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->o:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    .line 15
    invoke-static {p2}, Lcom/netease/mpay/oversea/gc;->k(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/gc;->m(Lcom/netease/mpay/oversea/gc;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/gc$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/gc$a$a;-><init>(Lcom/netease/mpay/oversea/gc$a;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/gc;->d(Lcom/netease/mpay/oversea/gc;)Lcom/netease/mpay/oversea/ui/a0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;)V

    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/i9;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UpdateAgeInfo"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "code"

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/gc$a;->a:Lcom/netease/mpay/oversea/gc;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/netease/mpay/oversea/gc;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
