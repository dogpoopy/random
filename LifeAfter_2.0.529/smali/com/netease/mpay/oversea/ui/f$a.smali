.class Lcom/netease/mpay/oversea/ui/f$a;
.super Ljava/lang/Object;
.source "CommonWebViewHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/d7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/f;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/d7<",
        "Lcom/netease/mpay/oversea/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/f$a;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/c9;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/c9<",
            "Lcom/netease/mpay/oversea/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/f$a;->a:Lcom/netease/mpay/oversea/ui/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/f;->a(Lcom/netease/mpay/oversea/ui/f;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/f;->a(Lcom/netease/mpay/oversea/ui/f;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/f$a;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    .line 5
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_1
    new-instance v3, Lcom/netease/mpay/oversea/j;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/f$a;->a:Lcom/netease/mpay/oversea/ui/f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 8
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method
