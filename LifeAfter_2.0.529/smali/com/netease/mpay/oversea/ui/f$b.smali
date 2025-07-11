.class Lcom/netease/mpay/oversea/ui/f$b;
.super Ljava/lang/Object;
.source "CommonWebViewHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/f;->l()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/f;->b(Lcom/netease/mpay/oversea/ui/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v1, Lcom/netease/mpay/oversea/ui/a0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/f;->b(Lcom/netease/mpay/oversea/ui/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/a0;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/f;->c(Lcom/netease/mpay/oversea/ui/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/f;->k:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    new-instance v1, Lcom/netease/mpay/oversea/j;

    const/16 v2, 0x2715

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/oversea/ui/o;->a(ILcom/netease/mpay/oversea/j;)V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a0;->n()V

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 1

    if-nez p2, :cond_0

    .line 15
    new-instance p1, Lcom/netease/mpay/oversea/j;

    const/16 p2, 0x2711

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/ui/f$b;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast p1, Lcom/netease/mpay/oversea/ui/a0;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/a0;->b(Lcom/netease/mpay/oversea/e6;)V

    :goto_0
    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ui/f;->a(Lcom/netease/mpay/oversea/ui/f;Ljava/lang/String;)Ljava/lang/String;

    .line 2
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
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ui/f;->b(Lcom/netease/mpay/oversea/ui/f;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UpdateAgeInfo"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "code"

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$b;->a:Lcom/netease/mpay/oversea/ui/f;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/netease/mpay/oversea/ui/f;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
