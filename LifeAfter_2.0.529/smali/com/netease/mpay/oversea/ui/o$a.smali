.class Lcom/netease/mpay/oversea/ui/o$a;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/k$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ma;->a()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 4
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public onCancel()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/j;

    const/16 v4, 0x2713

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$a;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
