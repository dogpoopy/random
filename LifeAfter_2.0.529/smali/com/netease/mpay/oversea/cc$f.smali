.class Lcom/netease/mpay/oversea/cc$f;
.super Lcom/netease/mpay/oversea/r4;
.source "VerifyEmailFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/cc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/d7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/d7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/d7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/cc$f;->b:Lcom/netease/mpay/oversea/d7;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$f;->b:Lcom/netease/mpay/oversea/d7;

    new-instance v0, Lcom/netease/mpay/oversea/c9;

    sget v1, Lcom/netease/mpay/oversea/ErrorCode;->ERR_CANCEL:I

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/c9;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/d7;->a(Lcom/netease/mpay/oversea/c9;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$f;->b:Lcom/netease/mpay/oversea/d7;

    new-instance v1, Lcom/netease/mpay/oversea/c9;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/c9;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/d7;->a(Lcom/netease/mpay/oversea/c9;)V

    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/cc$f;->b:Lcom/netease/mpay/oversea/d7;

    new-instance v0, Lcom/netease/mpay/oversea/c9;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/c9;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/netease/mpay/oversea/d7;->a(Lcom/netease/mpay/oversea/c9;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$f;->b:Lcom/netease/mpay/oversea/d7;

    new-instance v1, Lcom/netease/mpay/oversea/c9;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/c9;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/d7;->a(Lcom/netease/mpay/oversea/c9;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$f;->b:Lcom/netease/mpay/oversea/d7;

    new-instance v1, Lcom/netease/mpay/oversea/c9;

    sget v2, Lcom/netease/mpay/oversea/ErrorCode;->ERR_LOGOUT:I

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/c9;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/d7;->a(Lcom/netease/mpay/oversea/c9;)V

    return-void
.end method
