.class Lcom/netease/mpay/oversea/ui/o$c;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/s9;

.field final synthetic b:Lcom/netease/mpay/oversea/j;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$c;->c:Lcom/netease/mpay/oversea/ui/o;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o$c;->a:Lcom/netease/mpay/oversea/s9;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/o$c;->b:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$c;->c:Lcom/netease/mpay/oversea/ui/o;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/o;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/o;->f:Z

    if-eqz v1, :cond_0

    const-string v0, "api login failed, try to connect api service"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$c;->c:Lcom/netease/mpay/oversea/ui/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/ui/o;->f:Z

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->c()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$c;->a:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o$c;->b:Lcom/netease/mpay/oversea/j;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$c;->c:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 8
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method
