.class Lcom/netease/mpay/oversea/ui/o$h$j;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$h;->a(Lcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/o$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$h;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->b:Lcom/netease/mpay/oversea/ui/o$h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->a:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->b:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->b:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->b:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->a:Lcom/netease/mpay/oversea/j;

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->b:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->a:Lcom/netease/mpay/oversea/j;

    invoke-direct {v2, v0, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h$j;->b:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method
