.class Lcom/netease/mpay/oversea/aa$g;
.super Ljava/lang/Object;
.source "SecuritySetPassword.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/aa;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/aa;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/aa;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/aa$g;->b:Lcom/netease/mpay/oversea/aa;

    iput-object p2, p0, Lcom/netease/mpay/oversea/aa$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/aa$g;->b:Lcom/netease/mpay/oversea/aa;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/aa$g;->b:Lcom/netease/mpay/oversea/aa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/aa;->g(Lcom/netease/mpay/oversea/aa;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/aa$g;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/aa;->a(Lcom/netease/mpay/oversea/aa;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/aa$g;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
