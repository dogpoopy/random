.class Lcom/netease/mpay/oversea/ui/i$a;
.super Ljava/lang/Object;
.source "FinishActivityHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/i;->b(ZLcom/netease/mpay/oversea/ui/i$l;Lcom/netease/mpay/oversea/r4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/i$l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/r4;

.field final synthetic d:Z

.field final synthetic e:Lcom/netease/mpay/oversea/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/ui/i$l;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/i$a;->e:Lcom/netease/mpay/oversea/ui/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/i$a;->a:Lcom/netease/mpay/oversea/ui/i$l;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/i$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/i$a;->c:Lcom/netease/mpay/oversea/r4;

    iput-boolean p5, p0, Lcom/netease/mpay/oversea/ui/i$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/i$a;->e:Lcom/netease/mpay/oversea/ui/i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i;->a:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$a;->a:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->x:Lcom/netease/mpay/oversea/s9;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/i$a;->a:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$a;->a:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$a;->a:Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/i$a;->b:Ljava/lang/String;

    :goto_1
    new-instance v2, Lcom/netease/mpay/oversea/ui/i$a$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/i$a$a;-><init>(Lcom/netease/mpay/oversea/ui/i$a;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/m;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method
